using System;
using MarvelComics.Model;
using Newtonsoft.Json;
using System.Diagnostics;
using System.Net.Http;
using System.Threading.Tasks;

namespace MarvelComics.Services
{
    public class MarvelApiService : IMarvelApiService
    {
        private const string ApiBaseEndpoint = "https://gateway.marvel.com/v1/public/";
        private const string ApiCredentials = "?ts=1&apikey=95af16c846eea00a0fe3d294b6f7a1d3&hash=298f14a64e85a485437f3c6e04152031";

        public async Task<MarvelApiData<Characters>> GetCharacters(string filter, int limit, int offset)
        {
            var querystring = string.Empty;
            if (!string.IsNullOrEmpty(filter))
                querystring += $"&nameStartsWith={System.Net.WebUtility.UrlEncode(filter)}";
            if (limit > 0)
                querystring += $"&limit={limit.ToString()}";
            if (offset > 0)
                querystring += $"&offset={offset.ToString()}";
       
            var result = await this.MakeHttpCall<MarvelApiResult<Characters>>("characters", querystring);
            return result.Data;

        }

        public async Task<MarvelApiData<Comics>> GetComics(string filter, int limit, int offset, string formatFilter)
        {
            var querystring = string.Empty;
            if (!string.IsNullOrEmpty(filter))
                querystring += $"&titleStartsWith={System.Net.WebUtility.UrlEncode(filter)}";
            
            //if (!string.IsNullOrEmpty(formatFilter))
            //    querystring += $"&formatType={System.Net.WebUtility.UrlEncode(formatFilter)}";

            if (!string.IsNullOrEmpty(formatFilter))
                querystring += $"&format={System.Net.WebUtility.UrlEncode(formatFilter)}";
            if (limit > 0)
                querystring += $"&limit={limit.ToString()}";
            if (offset > 0)
                querystring += $"&offset={offset.ToString()}";
           
 
            var result = await this.MakeHttpCall<MarvelApiResult<Comics>>("comics", querystring);
            return result.Data;
        }

        public async Task<MarvelApiData<Characters>> GetCharacter(int id)
        {
            var result = await this.MakeHttpCall<MarvelApiResult<Characters>>("characters/" + id, string.Empty);
            return result.Data;
        }

        public async Task<MarvelApiData<Comics>> GetCharsByComic(int id)
        {
            var result = await this.MakeHttpCall<MarvelApiResult<Comics>>("characters/" + id + "/comics", string.Empty);
            return result.Data;
        }

        private async Task<TOutput> MakeHttpCall<TOutput>(string query, string filter)
        {

            HttpClient client = new HttpClient();

            string url = $"{ApiBaseEndpoint}{query}{ApiCredentials}{filter}";


            HttpResponseMessage response = new HttpResponseMessage();

            try
            {

                response = await client.GetAsync(url);

                string responseText = await response.Content.ReadAsStringAsync();
                if (response.IsSuccessStatusCode)
                {
                    return JsonConvert.DeserializeObject<TOutput>(responseText);
                }
                else
                {
                    throw new Exception(string.Format("Response Statuscode for {0}: {1}", url, response.StatusCode));
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                throw ex;
            }
        }
    }
}

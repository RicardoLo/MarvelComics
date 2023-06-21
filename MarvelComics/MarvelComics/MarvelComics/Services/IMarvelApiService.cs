using System;
using System.Threading.Tasks;
using MarvelComics.Model;

namespace MarvelComics.Services
{
    public interface IMarvelApiService
    {
        Task<MarvelApiData<Characters>> GetCharacters(string filter = null, int limit = 0, int offset = 0);
        Task<MarvelApiData<Characters>> GetCharacter(int id);
        Task<MarvelApiData<Comics>> GetCharsByComic(int id);
        Task<MarvelApiData<Comics>> GetComics(string filter = null, int limit = 0, int offset = 0, string formatFilter = null);
    }
}

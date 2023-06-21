using System;
using Newtonsoft.Json;

namespace MarvelComics.Model
{
    public class Comics
    {
        [JsonProperty("id")]
        public int Id { get; set; }
        [JsonProperty("title")]
        public string Title { get; set; }
        [JsonProperty("format")]
        public string Format { get; set; }
        [JsonProperty("diamondCode")]
        public string DiamondCode { get; set; }
        [JsonProperty("ean")]
        public string Ean { get; set; }
        [JsonProperty("issn")]
        public string Issn { get; set; }
        [JsonProperty("description")]
        public string Description { get; set; }
        [JsonProperty("pageCount")]
        public int PageCount { get; set; }
        [JsonProperty("thumbnail")]
        public ImageUrl Thumbnail { get; set; }
    }
}


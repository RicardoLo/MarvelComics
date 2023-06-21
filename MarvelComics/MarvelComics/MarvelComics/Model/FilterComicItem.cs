using System;
namespace MarvelComics.Model
{

    public enum FilterComicType
    {
        Comic,
        Magazine,
        Tradepaperback,
        Hardcover,
        Digest,
        GraphicNovel,
        DigitalComic,
        InfiniteComic
    }

    public class FilterComicItem
    {
        public FilterComicType Id { get; set; }

        public string Title { get; set; }

        public string IconSource { get; set; }
    }
}
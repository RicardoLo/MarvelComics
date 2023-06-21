using System;
using MarvelComics.Resources;
using System.Collections.Generic;
using MarvelComics.Model;

namespace MarvelComics.ViewModels
{
	public class FilterComicsPopupViewModel : ViewModelBase
    {
        private IEnumerable<FilterComicItem> filterComicItems;
        public IEnumerable<FilterComicItem> FilterComicItems
        {
            get => filterComicItems;
            set
            {
                filterComicItems = value;
                OnPropertyChanged("FilterComicItems");
            }
        }

        public FilterComicsPopupViewModel()
        {
            filterComicItems = new List<FilterComicItem>
            {
               new FilterComicItem {Id = FilterComicType.Comic, Title= AppResources.ComicFormat, IconSource = "filter" },
               new FilterComicItem {Id = FilterComicType.Digest, Title= AppResources.Digest, IconSource = "filter" },
               new FilterComicItem {Id = FilterComicType.DigitalComic, Title= AppResources.DigitalComic, IconSource = "filter" },
               new FilterComicItem {Id = FilterComicType.GraphicNovel, Title= AppResources.GraphicNovel, IconSource = "filter" },
               new FilterComicItem {Id = FilterComicType.Hardcover, Title= AppResources.Hardcover, IconSource = "filter" },
               new FilterComicItem {Id = FilterComicType.InfiniteComic, Title= AppResources.InfiniteComic, IconSource = "filter" },
               new FilterComicItem {Id = FilterComicType.Magazine, Title= AppResources.Magazine, IconSource = "filter" },
               new FilterComicItem {Id = FilterComicType.Tradepaperback, Title= AppResources.Tradepaperback, IconSource = "filter" }
            };
        }
    }
}

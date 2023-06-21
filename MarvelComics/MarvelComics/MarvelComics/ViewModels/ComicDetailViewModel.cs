using System;
namespace MarvelComics.ViewModels
{
	public class ComicDetailViewModel : ViewModelBase
	{
        public ComicItemViewModel Comic { get; set; }

        public ComicDetailViewModel(ComicItemViewModel comic = null)
		{
            Comic = comic;
        }
	}
}


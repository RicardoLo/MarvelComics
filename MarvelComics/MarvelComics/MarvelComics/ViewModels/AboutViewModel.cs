using System;
using MarvelComics.Resources;

namespace MarvelComics.ViewModels
{
	public class AboutViewModel : ViewModelBase
    {
        public AboutViewModel()
        {
            Title = AppResources.Info;
        }
    }
}
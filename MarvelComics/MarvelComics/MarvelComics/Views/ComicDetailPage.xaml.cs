using System;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;
using MarvelComics.Resources;
using MarvelComics.ViewModels;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace MarvelComics.Views
{	
	public partial class ComicDetailPage : ContentPage
	{
        private ComicDetailViewModel viewModel;
        private double _lastScroll;
        private const int ParallaxSpeed = 5;

        public ComicDetailPage (ComicDetailViewModel viewModel)
        {
            InitializeComponent();
            BindingContext = this.viewModel = viewModel;
            NavigationPage.SetBackButtonTitle(this, "");
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            ParallaxScroll.Scrolled += OnParallaxScrollScrolled;
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            ParallaxScroll.Scrolled -= OnParallaxScrollScrolled;
        }

        private void OnParallaxScrollScrolled(object sender, ScrolledEventArgs e)
        {
            double translation = 0;

            if (_lastScroll < e.ScrollY)
            {
                translation = 0 - ((e.ScrollY / 2));

                if (translation > 0) translation = 0;
            }
            else
            {
                translation = 0 + ((e.ScrollY / 2));

                if (translation > 0) translation = 0;
            }

            HeaderPanel.TranslateTo(HeaderPanel.TranslationX, translation);
            _lastScroll = e.ScrollY;
        }

        private void OnShareEventClicked(object sender, EventArgs args)
        {
            CaptureScreenshot();  
        }

        async Task CaptureScreenshot()
        {
            var screenshot = await Screenshot.CaptureAsync();
            Stream stream = await screenshot.OpenReadAsync();
            var image = ImageSource.FromStream(() => stream);
            MemoryStream ms = new MemoryStream();
            stream.CopyTo(ms);
            var streamData = ms.ToArray();

            var fn = viewModel.Comic.Title + ".png";
            var file = Path.Combine(FileSystem.CacheDirectory, fn);
            File.WriteAllBytes(file, streamData);

            await Share.RequestAsync(new ShareFileRequest
            {
                File = new ShareFile(file),
                Title = AppResources.ShareComicInfo
         });
        }
    }
}


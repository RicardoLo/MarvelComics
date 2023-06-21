using System;
using Akavache;
using MarvelComics.Services;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using System.Reactive.Linq;
using System.Linq;
using MarvelComics.Resources;
using MarvelComics.Model;

namespace MarvelComics.ViewModels
{
	public class ComicListViewModel : ViewModelBase
    {
        private IMarvelApiService _marvelService => DependencyService.Get<IMarvelApiService>();
        public Action<bool> OnLoadedData { get; set; }

        public ComicListViewModel(INavigation navigation)
        {
            Title = AppResources.Comics;

            LoadData(null, 100, 0);
        }

        #region Properties

        private string _SearchText;
        public string SearchText
        {
            get
            {
                return _SearchText;
            }
            set
            {
                _SearchText = value;
                OnPropertyChanged("SearchText");
            }
        }

        

        private List<ComicItemViewModel> _ComicList;
        public List<ComicItemViewModel> ComicList
        {
            get
            {
                return _ComicList;
            }
            set
            {
                _ComicList = value;
                OnPropertyChanged("ComicList");
            }
        }

        #endregion

        #region Commands

        private ICommand _SearchByName;
        public ICommand SearchByName
        {
            get
            {
                return _SearchByName ?? (_SearchByName = new Command(
                    async () => await ExecuteSearchByNameCommand()));
            }
        }

        private Command refresh;
        public Command Refresh
        {
            get
            {
                return refresh ??
                    (refresh = new Command(ExecuteRefreshCommand));
            }
        }

        #endregion

        private async Task ExecuteSearchByNameCommand()
        {
            await LoadData(SearchText);
        }

        public async Task LoadData(string filter = null, int limit = 0, int offset = 0, string formatFilter = null)
        {
            try
            {
                if (IsBusy)
                    return;

                IsBusy = true;

                var cache = Akavache.BlobCache.LocalMachine;
                var cachedComics = cache.GetAndFetchLatest("ComicList" + filter + formatFilter, () => _marvelService.GetComics(filter, limit, offset, formatFilter),
                    ofset =>
                    {
                        TimeSpan elapsed = DateTimeOffset.Now - ofset;
                        return elapsed > new TimeSpan(hours: 0, minutes: 10, seconds: 0);
                    });

                var result = await cachedComics.FirstOrDefaultAsync();

                if (formatFilter == null)
                    Title = AppResources.Comics;


                if (result != null)
                {
                    ComicList = (from p in result.Results
                                 select new ComicItemViewModel()
                                 {
                                     Id = p.Id,
                                     Title = p.Title,
                                     DiamonCode = p.DiamondCode,
                                     Ean = p.Ean,
                                     Issn = p.Issn,
                                     Format = p.Format,
                                     Description = p.Description,
                                     PageCount = p.PageCount,
                                     Thumbnail = p.Thumbnail
                                 }).ToList();

                    if (ComicList.Count != 0)
                        OnLoadedData?.Invoke(true);
                }

            }

            catch(Exception ex)
            {
                IsBusy = false;
                Console.Write("LoadDataFail:" + ex.ToString());
            }
            finally
            {
                IsBusy = false;
            }
        }

        public void FilterComicByFormatAsync(FilterComicItem formatSelected)
        {
            try
            {
                Title = formatSelected.Title;

                switch (formatSelected.Id)
                {
                    case FilterComicType.Comic:
                        {
                            LoadData(null,0,0,"comic");
                            break;
                        }
                    case FilterComicType.Digest:
                        {
                            LoadData(null, 0, 0, "digest");
                            break;
                        }
                    case FilterComicType.DigitalComic:
                        {
                            LoadData(null, 0, 0, "digital comic");
                            break;
                        }
                    case FilterComicType.GraphicNovel:
                        {
                            LoadData(null, 0, 0, "graphic novel");
                            break;
                        }
                    case FilterComicType.Hardcover:
                        {
                            LoadData(null, 0, 0, "hardcover");
                            break;
                        }
                    case FilterComicType.InfiniteComic:
                        {
                            LoadData(null, 0, 0, "infinite comic");
                            break;
                        }
                    case FilterComicType.Magazine:
                        {
                            LoadData(null, 0, 0, "magazine");
                            break;
                        }
                    case FilterComicType.Tradepaperback:
                        {
                            LoadData(null, 0, 0, "trade paperback");
                            break;
                        }
                    default:
                        {
                            LoadData(null);
                            break;
                        }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("FilterComicByFormatAsync:::" + ex.ToString());
            }
        }

        async void ExecuteRefreshCommand()
        {
            await LoadData();
        }
    }
}

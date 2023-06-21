using System;
using MarvelComics.Model;

namespace MarvelComics.ViewModels
{
	public class ComicItemViewModel : ViewModelBase
    {
        private int id;
        public int Id
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
                OnPropertyChanged("Id");
            }
        }

        private string title;
        public string Title
        {
            get
            {
                return title;
            }
            set
            {
                title = value;
                OnPropertyChanged("Title");
            }
        }

        private string format;
        public string Format
        {
            get
            {
                return format;
            }
            set
            {
                format = value;
                OnPropertyChanged("Format");
            }
        }

        private string diamonCode;
        public string DiamonCode
        {
            get
            {
                return diamonCode;
            }
            set
            {
                diamonCode = value;
                OnPropertyChanged("DiamonCode");
            }
        }

        private string ean;
        public string Ean
        {
            get
            {
                return ean;
            }
            set
            {
                ean = value;
                OnPropertyChanged("Ean");
            }
        }

        private string issn;
        public string Issn
        {
            get
            {
                return issn;
            }
            set
            {
                issn = value;
                OnPropertyChanged("Issn");
            }
        }

        private ImageUrl thumbnail;
        public ImageUrl Thumbnail
        {
            get
            {
                return thumbnail;
            }
            set
            {
                thumbnail = value;
                OnPropertyChanged("Thumbnail");
            }
        }


        private int pageCount;
        public int PageCount
        {
            get
            {
                return pageCount;
            }
            set
            {
                pageCount = value;
                OnPropertyChanged("PageCount");
            }
        }

        private string _Description;
        public string Description
        {
            get
            {
                return _Description;
            }
            set
            {
                _Description = value;
                OnPropertyChanged("Description");
            }
        }
    }
}

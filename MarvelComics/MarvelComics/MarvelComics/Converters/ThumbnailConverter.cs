using System;
using System.Collections.Generic;
using System.Globalization;
using MarvelComics.Model;
using Xamarin.Forms;

namespace MarvelComics.Converters
{
	public class ThumbnailConverter : IValueConverter
    {
        public object Convert(object value, Type targetType,
                              object parameter, CultureInfo culture)
        {
            try
            {
                ImageUrl iamgeUrl = (ImageUrl)value;
                String imageLink = iamgeUrl.Path + "." +iamgeUrl.Extension;
                return imageLink;

            }
            catch (Exception ex)
            {
                Console.WriteLine("ThumbnailConverterFail: " + ex.ToString());
                return null;
            }
        }

        public object ConvertBack(object value, Type targetType,
                                  object parameter, CultureInfo culture)
        {
            return null;
        }
    }
}
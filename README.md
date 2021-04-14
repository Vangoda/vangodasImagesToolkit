# vangodasImagesToolkit
Collection of scripts for downloading and formatting images. Intended for linux users.

# Mass download
!! Requires 'parralels' and 'wget', you can get them from your distribution's package manager.

You can download all the images from the page by using _generateImageList.js_
script in console. An alert will display string with the content of src attribute
of every image on the page, separated by newline.
You can paste this string into a txt file and save it. Then you can use _wgetList.sh_ to download
all the images from the saved file, just change the 'images.csv' to the name of your file.
(Remember to use chmod +x on the script before using!)

# Mass convert
!! Requires 'parrallels' and 'webp', you can get them from your distribution's package manager.

Use _webp2png.sh_ to convert all the files of type .webp from the folder it is placed in to the
PNG file format. (Remember to use chmod +x on the script before using!)

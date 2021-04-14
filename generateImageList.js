// Fetches src from all the img elements on the page.
// Pure js.
imagesList = document.getElementsByTagName('img');
for(i=0;i<imagesList.length;i++){
	imagesCSV += (i==imagesList.length) ? imagesList[i].src : imagesList[i].src + '\n';
}
alert(imagesCSV);
console.log(imagesCSV);
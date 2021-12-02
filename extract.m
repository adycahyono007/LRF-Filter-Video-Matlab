%membaca filevideo
vid=VideoReader('videosample.avi');
%mengambil frame ke-100 dari video input, menyimpannya, melakukan
%filtering, dan menyimpannya mengunakan looping
for img = 100;
    filename1=strcat('frame',num2str(img),'.jpg');
    b = read(vid, img);
    imwrite(b,filename1);
    filename2=strcat('LRF_frame',num2str(img),'.jpg');
    image = rangefilt(b);
    imwrite(image,filename2);
    imshowpair(b,image,'montage')
end

function [out_name]=colorize_opt(input_dir, g_name,c_name)
    gI=double(imread([input_dir g_name]))/255;
    cI=double(imread(c_name))/255;
    colorIm=(sum(abs(gI-cI),3)>0.01);
    colorIm=double(colorIm);

    sgI=rgb2ntsc(gI);
    scI=rgb2ntsc(cI);

    ntscIm(:,:,1)=sgI(:,:,1);
    ntscIm(:,:,2)=scI(:,:,2);
    ntscIm(:,:,3)=scI(:,:,3);


    max_d=floor(log(min(size(ntscIm,1),size(ntscIm,2)))/log(2)-2);
    iu=floor(size(ntscIm,1)/(2^(max_d-1)))*(2^(max_d-1));
    ju=floor(size(ntscIm,2)/(2^(max_d-1)))*(2^(max_d-1));
    id=1; jd=1;
    colorIm=colorIm(id:iu,jd:ju,:);
    ntscIm=ntscIm(id:iu,jd:ju,:);

    nI=getColorExact(colorIm,ntscIm);
    out_name = [g_name(1:end-4) '_col.png'];
    imwrite(nI, out_name);

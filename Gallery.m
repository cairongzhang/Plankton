<<<<<<< HEAD
function Gallery()
    %读取2014年的103类海洋浮游生物数据，作为gallery
    %文件批量读取代码参考网页http://blog.csdn.net/haizimin/article/details/39646595

    up_path='F:\学习\大三上\随机过程\第一次Project\2014';
    p = dir(up_path); 
    len_p = size(p,1)-2; %类别个数,除去前两个结构:.和..
    path=cell(len_p);
    for k=1:len_p 
        path{k}=p(k+2).name;
    end

    category_num = size(path,2);
    for k = 1:category_num 
        if(k~=95)%调试发现第95类mix文件太多，这里对mix类只读取部分图片（存储在mix10000文件夹中）
            file_path = [up_path,'\',path{k},'\'];   
            img_path_list = dir(strcat(file_path,'*.png'));  
            img_num = length(img_path_list); 
            if (img_num>0) 
                for m = 1:img_num  
                    image_name = img_path_list(m).name; 
                    gallery{k,m} =  imread(strcat(file_path,image_name)); 
                    if(img_num>5000)
                        cal='image_num'
                        img_num-m 
                    end
                end  
            end  
            cal='category_num'
            category_num-k
        end
    end 

    %将mix类(第95类)读进gallery
    up_path='F:\学习\大三上\随机过程\第一次Project\mix10000\';
    mixpath=dir(up_path);
    img_num=size(mixpath,1)-2;
    for m=1:img_num
         image_name = mixpath(m+2).name; 
         gallery{95,m} = imread(strcat(up_path,image_name)); 
         img_num-m
    end

    path=path';
    save('gallery','gallery','category_num','path');
    clear all;
end
=======
%璇诲彇2014骞寸殑103绫绘捣娲嬫诞娓哥敓鐗╂暟鎹紝浣滀负gallery
%鏂囦欢鎵归噺璇诲彇浠ｇ爜鍙傝�冪綉椤礹ttp://blog.csdn.net/haizimin/article/details/39646595
clear all;
up_path='F:\瀛︿範\澶т笁涓奬闅忔満杩囩▼\绗竴娆roject\2014';
p = dir(up_path); 
len_p = size(p,1)-2; %绫诲埆涓暟,闄ゅ幓鍓嶄袱涓粨鏋�:.鍜�..
for k=1:len_p 
    path{k}=p(k+2).name;
end
category_num = size(path,2);
for k = 1:category_num 
    if(k~=95)%璋冭瘯鍙戠幇绗�95绫籱ix鏂囦欢澶锛岃繖閲屽mix绫诲彧璇诲彇閮ㄥ垎鍥剧墖锛堝瓨鍌ㄥ湪mix10000鏂囦欢澶逛腑锛�
        file_path = [up_path,'\',path{k},'\'];   
        img_path_list = dir(strcat(file_path,'*.png'));  
        img_num = length(img_path_list); 
        if (img_num>0) 
            for m = 1:img_num  
                image_name = img_path_list(m).name; 
                gallery{k,m} =  imread(strcat(file_path,image_name)); 
                if(img_num>5000)
                    cal='image_num'
                    img_num-m 
                end
            end  
        end  
        cal='category_num'
        category_num-k
    end
end 
%灏唌ix绫�(绗�95绫�)璇昏繘gallery
up_path='F:\瀛︿範\澶т笁涓奬闅忔満杩囩▼\绗竴娆roject\mix10000\';
mixpath=dir(up_path);
img_num=size(mixpath,1)-2;
for m=1:img_num
     image_name = mixpath(m+2).name; 
     gallery{95,m} = imread(strcat(up_path,image_name)); 
     img_num-m
end
path=path';
save('gallery','gallery','category_num','path');
>>>>>>> e814e95e5fe8810066f58ceec2b74f2d52b86d1b

close all
clear all
input_dir = 'medium-sample/';
file_ext = 'png';
file_names = dir([input_dir '*.' file_ext]);



% Get set of images for each scene
scenes = separate_scenes(input_dir, file_names);

% Get image in center of each scene
num_scenes = size(scenes, 2);
images_col = [{''}];

for i = 1:num_scenes
    scene_set = scenes(:,i)
    
end


% List these scenes as ones that need to be colorized

disp('Colorize the above images in an image editor, press any key when done')
pause

% User does scribbling on images

% Use these images to colorize whole scene







% border_images = zeros(7,2);


% num_scenes = size(border_images, 1);
% scenes = [];
% 
% edge = '00001945.png';
% cur_scene = 1;
% add_loc_1 = 1;
% add_loc_2 = 1;
% for file = file_names'
%     if str2num(file.name(1:end-4)) < str2num(test(1:end-4))
%         scenes(add_loc_1,1) = file.name;
%         add_loc_1 = add_loc_1 + 1;
%     else
%         scenes(add_loc_2,2) = file.name;
%         add_loc_2 = add_loc_2 + 1;
%     end
%     
% end
% 
% scenes

%% Jianfeng Li 2018/09/16
%% based on edge
clc;
clear all;
close all;
% % 03 video
% num = 369;
% x = [275,153,67,113,155,425,472,308,318,113];
% y = [178,184,81,261,409,16,132,439,330,261];
% filename = 'res03.csv';
% % 04 video
% num = 388;
% x =[79, 408, 327,294 ,295,324,164,150,137,401];
% y =[14, 485, 43, 173,206,228,352,398,380,292];
% filename = 'res04.csv';
num = 333;
x = [88,150,149,170,252,285,298,425,462,457];
y = [125,99,128,150,385,388,383,417,315,360];
filename = 'res05.csv';
fid = fopen(filename,'w');
%fprintf(fid,'%s, %s\n','bead1x','bead1y');
%fprintf(fid,'%f, %f,%f, %f,%f, %f,%f, %f,%f, %f,%f, %f,%f, %f,%f, %f,%f, %f,%f, %f,\n',x1,y1,x2,y2,x3,y3,x4,y4,x5,y5,x6,y6,x7,y7,x8,y8,x9,y9,x10,y10);
%xlswrite('result.csv',[x,y],'A2':'B2');
for j=1:10
    fprintf(fid,'%f, %f,',x(j),y(j));
end
fprintf(fid,'\n');

%%
for i=2:num
%     file = strcat('./03/',num2str(i),'.jpg');
%     file = strcat('./04/',num2str(i),'.jpg');
    file = strcat('./05/',num2str(i),'.jpg');
    img = rgb2gray(imread(file));
    for j=1:10
        cx = x(j);
        cy = y(j);
        min = 255;
        for xk = -2:2
            for yk = -2:2
                if img(x(j)+xk,y(j)+yk) < min
                    min = img(x(j)+xk,y(j)+yk);
                    cx = x(j)+xk;
                    cy = y(j)+yk;
                end
            end
        end
        x(j) = cx;
        y(j) = cy;  
        fprintf(fid,'%f, %f,',x(j),y(j));
    end
    fprintf(fid,'\n');
end
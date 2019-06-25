clc;clear;close all;

our_images = imread('D:\Aldian\Proyek\data\data40000an\Data Testing\Data1 -  (1).jpg');
data = rgb2gray(our_images);
data = im2double(data);
databw = im2bw(data);

fiturICZ1=[];
fiturICZ2=[];
fiturICZ3=[];
fiturICZ4=[];
fiturZCZ1=[];
fiturZCZ2=[];
fiturZCZ3=[];
fiturZCZ4=[];

jarak_zona1_ICZ=[];
jarak_zona2_ICZ=[];
jarak_zona3_ICZ=[];
jarak_zona4_ICZ=[];
jarak_zona1_ZCZ=[];
jarak_zona2_ZCZ=[];
jarak_zona3_ZCZ=[];
jarak_zona4_ZCZ=[];

%% Zoning ICZ

barisICZ = size(databw,1)
kolomICZ = size(databw,2)
centroid_xICZ=round(kolomICZ/2)
centroid_yICZ=round(barisICZ/2)

%Pembagian Zona Citra
I1=databw(1:size(databw,1)/2,1:size(databw,2)/2,:);
I2=databw(size(databw,1)/2+1:size(databw,1),1:size(databw,2)/2,:);
I3=databw(1:size(databw,1)/2,size(databw,2)/2+1:size(databw,2),:);
I4=databw(size(databw,1)/2+1:size(databw,1),size(databw,2)/2+1:size(databw,2),:);

%Zona 1
baris_zona1_ICZ = size(I1,1);
kolom_zona1_ICZ = size(I1,2);

for n=1:baris_zona1_ICZ
    for m=1:kolom_zona1_ICZ
        if I1(n,m) == 1
            d_1=sqrt(((n-centroid_xICZ)^2)+((m-centroid_yICZ)^2));
            jarak_zona1_ICZ=[jarak_zona1_ICZ;d_1];
        end
    end
end
jarak_zona1_ICZ;
fitur_zona1_ICZ=mean(jarak_zona1_ICZ)
%fitur_zona1_ICZ=fitur_zona1_ICZ/norm(fitur_zona1_ICZ);
%fitur_zona1_ICZ=fitur_zona1_ICZ/norm(fitur_zona1_ICZ,1);
%fitur_zona1_ICZ=fitur_zona1_ICZ/norm(fitur_zona1_ICZ,'fro');
%fitur_zona1_ICZ=fitur_zona1_ICZ/norm(fitur_zona1_ICZ,inf);

%Zona 2
baris_zona2_ICZ = size(I2,1);
kolom_zona2_ICZ = size(I2,2);

for n=1:baris_zona2_ICZ
    for m=1:kolom_zona2_ICZ
        if I2(n,m) == 1
            d_2=sqrt(((n-centroid_xICZ)^2)+((m-centroid_yICZ)^2));
            jarak_zona2_ICZ=[jarak_zona2_ICZ;d_2];
        end
    end
end
jarak_zona2_ICZ;
fitur_zona2_ICZ=mean(jarak_zona2_ICZ)
%fitur_zona2_ICZ=fitur_zona2_ICZ/norm(fitur_zona2_ICZ);
%fitur_zona2_ICZ=fitur_zona2_ICZ/norm(fitur_zona2_ICZ,1);
%fitur_zona2_ICZ=fitur_zona2_ICZ/norm(fitur_zona2_ICZ,'fro');
%fitur_zona2_ICZ=fitur_zona2_ICZ/norm(fitur_zona2_ICZ,inf);

%Zona 3
baris_zona3_ICZ = size(I3,1);
kolom_zona3_ICZ = size(I3,2);

for n=1:baris_zona3_ICZ
    for m=1:kolom_zona3_ICZ
        if I3(n,m) == 1
            d_3=sqrt(((n-centroid_xICZ)^2)+((m-centroid_yICZ)^2));
            jarak_zona3_ICZ=[jarak_zona3_ICZ;d_3];
        end
    end
end
jarak_zona3_ICZ;
fitur_zona3_ICZ=mean(jarak_zona3_ICZ)
%fitur_zona3_ICZ=fitur_zona3_ICZ/norm(fitur_zona3_ICZ);
%fitur_zona3_ICZ=fitur_zona3_ICZ/norm(fitur_zona3_ICZ,1);
%fitur_zona3_ICZ=fitur_zona3_ICZ/norm(fitur_zona3_ICZ,'fro');
%fitur_zona3_ICZ=fitur_zona3_ICZ/norm(fitur_zona3_ICZ,inf);

%Zona 4
baris_zona4_ICZ = size(I4,1);
kolom_zona4_ICZ = size(I4,2);

for n=1:baris_zona4_ICZ
    for m=1:kolom_zona4_ICZ
        if I4(n,m) == 1
            d_4=sqrt(((n-centroid_xICZ)^2)+((m-centroid_yICZ)^2));
            jarak_zona4_ICZ=[jarak_zona4_ICZ;d_4];
        end
    end
end
jarak_zona4_ICZ;
fitur_zona4_ICZ=mean(jarak_zona4_ICZ)
%fitur_zona4_ICZ=fitur_zona4_ICZ/norm(fitur_zona4_ICZ);
%fitur_zona4_ICZ=fitur_zona4_ICZ/norm(fitur_zona4_ICZ,1);
%fitur_zona4_ICZ=fitur_zona4_ICZ/norm(fitur_zona4_ICZ,'fro');
%fitur_zona4_ICZ=fitur_zona4_ICZ/norm(fitur_zona4_ICZ,inf);

%% Zoning ZCZ

barisZCZ = size(databw,1);
kolomZCZ = size(databw,2);
centroid_xZCZ=round(kolomZCZ/2);
centroid_yZCZ=round(barisZCZ/2);

%Pembagian Zona Citra
I1=databw(1:size(databw,1)/2,1:size(databw,2)/2,:);
I2=databw(size(databw,1)/2+1:size(databw,1),1:size(databw,2)/2,:);
I3=databw(1:size(databw,1)/2,size(databw,2)/2+1:size(databw,2),:);
I4=databw(size(databw,1)/2+1:size(databw,1),size(databw,2)/2+1:size(databw,2),:);

%Zona 1
baris_zona1_ZCZ = size(I1,1);
kolom_zona1_ZCZ = size(I1,2);
centroid_x_Z1=round(kolom_zona1_ZCZ/2);
centroid_y_Z1=round(baris_zona1_ZCZ/2);


for n=1:baris_zona1_ZCZ
    for m=1:kolom_zona1_ZCZ
        if I1(n,m) == 1
            d_1=sqrt(((n-centroid_x_Z1)^2)+((m-centroid_y_Z1)^2));
            jarak_zona1_ZCZ=[jarak_zona1_ZCZ;d_1];
        end
    end
end
jarak_zona1_ZCZ;
fitur_zona1_ZCZ=mean(jarak_zona1_ZCZ)
%fitur_zona1_ZCZ=fitur_zona1_ZCZ/norm(fitur_zona1_ZCZ);
%fitur_zona1_ZCZ=fitur_zona1_ZCZ/norm(fitur_zona1_ZCZ,1);
%fitur_zona1_ZCZ=fitur_zona1_ZCZ/norm(fitur_zona1_ZCZ,'fro');
% fitur_zona1_ZCZ=fitur_zona1_ZCZ/norm(fitur_zona1_ZCZ,inf);

%Zona 2
baris_zona2_ZCZ = size(I2,1);
kolom_zona2_ZCZ = size(I2,2);
centroid_x_Z2=round(kolom_zona2_ZCZ/2);
centroid_y_Z2=round(baris_zona2_ZCZ/2);


for n=1:baris_zona2_ZCZ
    for m=1:kolom_zona2_ZCZ
        if I2(n,m) == 1
            d_2=sqrt(((n-centroid_x_Z2)^2)+((m-centroid_y_Z2)^2));
            jarak_zona2_ZCZ=[jarak_zona2_ZCZ;d_2];
        end
    end
end
jarak_zona2_ZCZ;
fitur_zona2_ZCZ=mean(jarak_zona2_ZCZ)
%fitur_zona2_ZCZ=fitur_zona2_ZCZ/norm(fitur_zona2_ZCZ);
%fitur_zona2_ZCZ=fitur_zona2_ZCZ/norm(fitur_zona2_ZCZ,1);
%fitur_zona2_ZCZ=fitur_zona2_ZCZ/norm(fitur_zona2_ZCZ,'fro');
%fitur_zona2_ZCZ=fitur_zona2_ZCZ/norm(fitur_zona2_ZCZ,inf);

%Zona 3
baris_zona3_ZCZ = size(I3,1);
kolom_zona3_ZCZ = size(I3,2);
centroid_x_Z3=round(kolom_zona3_ZCZ/2);
centroid_y_Z3=round(baris_zona3_ZCZ/2);


for n=1:baris_zona3_ZCZ
    for m=1:kolom_zona3_ZCZ
        if I3(n,m) == 1
            d_3=sqrt(((n-centroid_x_Z3)^2)+((m-centroid_y_Z3)^2));
            jarak_zona3_ZCZ=[jarak_zona3_ZCZ;d_3];
        end
    end
end
jarak_zona3_ZCZ;
fitur_zona3_ZCZ=mean(jarak_zona3_ZCZ)
%fitur_zona3_ZCZ=fitur_zona3_ZCZ/norm(fitur_zona3_ZCZ);
%fitur_zona3_ZCZ=fitur_zona3_ZCZ/norm(fitur_zona3_ZCZ,1);
%fitur_zona3_ZCZ=fitur_zona3_ZCZ/norm(fitur_zona3_ZCZ,'fro');
%fitur_zona3_ZCZ=fitur_zona3_ZCZ/norm(fitur_zona3_ZCZ,inf);

%Zona 4
baris_zona4_ZCZ = size(I4,1);
kolom_zona4_ZCZ = size(I4,2);
centroid_x_Z4=round(kolom_zona4_ZCZ/2);
centroid_y_Z4=round(baris_zona4_ZCZ/2);


for n=1:baris_zona4_ZCZ
    for m=1:kolom_zona4_ZCZ
        if I4(n,m) == 1
            d_4=sqrt(((n-centroid_x_Z4)^2)+((m-centroid_y_Z4)^2));
            jarak_zona4_ZCZ=[jarak_zona4_ZCZ;d_4];
        end
    end
end
jarak_zona4_ZCZ;
fitur_zona4_ZCZ=mean(jarak_zona4_ZCZ)
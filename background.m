clear bkgROI; %clearing all previous backgrounds
%using same path        
addpath(path);
%loading the vairables 
load("vars.mat");

bkgROI = [] ;
bckimHan = [];
bkgcell = [];

figure(1); 
fig = figure(1)
clf; 
hold on
title('Draw a Circle Around The Darkest Area:', 'FontSize', 20);
xlim([1 512]);
ylim([1 512]);
fig.Units = 'inches';
fig.Position = [5 0 10 10];
bckimHan = imagesc(DataOut.AverageIntensityMap);


              
bkgROI = drawfreehand();  

bkgcell = createMask(bkgROI, bckimHan);
DataOut.bckimHan = bckimHan;
DataOut.bkgROI = bkgROI;
DataOut.bkgcell = bkgcell;
hold off
save("vars.mat", 'DataOut');

          
    
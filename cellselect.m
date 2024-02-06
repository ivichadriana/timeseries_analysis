
%this code is to mask cells


load('vars.mat');

fig = figure(1); 
clf; 
hold on
title('Draw a Circle Around A Cell:', 'FontSize', 20);
xlim([1 512]);
ylim([1 512]);
fig.Units = 'inches';
fig.Position = [5 0 10 10];
imagesc(DataOut.AverageIntensityMap)

    %initializing variablesclear
    cellmask=zeros(DataOut.sx,DataOut.sy, 75);
    fullmask = zeros(DataOut.sx, DataOut.sy);
    done=0;
    i=1;


    while done < 1
            bf= drawfreehand();
            useMask= createMask(bf);
            cellmask(:,:,i) = cellmask(:,:,i) + useMask;
            fullmask = fullmask+i*useMask;
            fullmask(find(fullmask>i)) = i;
            i=i+1;

            %%somehow need to deal with overlap??

            answer = questdlg('More cells?' , 'Cell Selection',  'Yes',  'No',  'Cancel');
            switch answer
                case 'Yes';
                    done = 0;
                case 'No';
                    done = 1;
                case 'Cancel';
                    done = 1;
                    clear;
            end
    end

  

     cellmasktemp= cellmask(:,:, 1:i-1);
     clear cellmask
     cellmask = cellmasktemp;

fullmask = logical(fullmask);

DataOut.mask= fullmask;
DataOut.cellmask = cellmask;
DataOut.useMask = useMask

save('vars.mat', 'DataOut');

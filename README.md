# Analyze Calcium Imaging Files Final Project Guidance Document

## Before starting analysis:
- Project_GUI_Analyze_Calcium.mlapp is the main script. All other scripts will be called within this GUI.
- This script requires Image Processing Toolbox available through Matlab.
- This program is specific to .czi files. Uploaded zipped folder includes .czi file.
- This program also requires BioFormats Toolbox functions locate in bfmatlab folder
within zipped folder. This is free code available online, and I included it in the zipped uploaded folder.
## Things to be aware of:
- This program takes some time to compute and plot. Please be patient while using. Give it 2-5 seconds to load (specially while reading .czi file and selecting cells and background)
- The GUI is composed of 3 tabs.
- A message box will let you know when to switch tabs, and what to do next.
- Different figures will also open throughout the analysis. Make sure to keep an eye out
for those.
- If at any time you need more help, there is a “Need Instructions?” button at the
bottom left of every tab.
- For testing purposes:
o Calcium is in Channel 1 in practice file. Select Channel 1.

## Detailed Steps (if needed):

### Time Tab: This is to visualize your file, select time to analyze, and select which channel is “calcium imaging”.
1. A messagebox will appear asking you to select your bfopen() toolbox. This is needed to read .czi files.
2. Another message box will appear asking you to select your file to analyze. Double click on the file to select it. This step takes 10 seconds to read file.
3. You need to wait a few seconds, and then you'll be able to scroll through the slider and see your file.
4. Write the time you'd like to start analysis in Start Time also time you'd like to end the analysis in Time End. Please keep it between the actual file’s time (see slider).
5. Select which channel in your file contains the Calcium waves. Select Channel 1 for testing purposes.
6. Click Done when you're ready.

### Background Tab: This is to select your background. The darkest area will be subtracted from subsequent analysis. You can see the intensity over time of the background here.
1. A message box will appear asking you to select your background. Figure 1 will appear with your image.
2. Draw a circle around the darkest area of your image (click and hold). This will appear in the “Selected Background:” image. Please give it some time before drawing.
3. You can click the “Plot” button to plot the intensity of the selected background over the timeframe for analysis.
4. Redraw your circle if you are not satisfied with your selection.
5. Click “Done” when you’re comfortable with your selection.

### Selecting Cells Tab: This is to select the cells for analysis.
1. A message box will appear asking you to select your cells in Figure 1 window.
2. Draw a circle around your first cell (click and hold). Please give it a couple of seconds to
load before drawing.
3. You’ll be asked if you want to draw more cells or not. Click ‘No’ when you have circled enough cells (2 or 3 is a good number to try things out).
4. Your selections will appear in the Selecting Cells tab. You can accept these selections or re-select by clicking “Redo Cell Selection” button.
5. If you click “Analyze Selected Cells”, the cells will be analyzed, and the results will be exported.
6. You will end with one Excel document with your analyzed data in each cell selected, and a Powerpoint file with all your plots.

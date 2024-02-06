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
Time Tab: This is to visualize your file, select time to analyze, and select which channel is “calcium imaging”.
1. A messagebox will appear asking you to select your bfopen() toolbox. This is needed to read .czi files.
2. Another message box will appear asking you to select your file to analyze. Double click on the file to select it. This step takes 10 seconds to read file.
3. You need to wait a few seconds, and then you'll be able to scroll through the slider and see your file.
4. Write the time you'd like to start analysis in Start Time also time you'd like to end the analysis in Time End. Please keep it between the actual file’s time (see slider).
5. Select which channel in your file contains the Calcium waves. Select Channel 1 for testing purposes.
6. Click Done when you're ready.

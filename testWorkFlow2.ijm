/*
 * second workflow attempt
 * 2019-10-09: genesis
 */

// load data
run("HeLa Cells (1.3M, 48-bit RGB)");

// split channels
run("Split Channels");

// threshold
setAutoThreshold("MaxEntropy dark");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Set Measurements...", "area mean standard min centroid center shape integrated redirect=None decimal=3");

run("Analyze Particles...", "size=10-Infinity show=Outlines display exclude clear include");
saveAs("Results", "/Users/isabelschumacher/Documents/GitHub/testWorkflow2/Results.csv");
saveAs("Results", "/Users/isabelschumacher/Documents/GitHub/Results2.csv");
close();
close()

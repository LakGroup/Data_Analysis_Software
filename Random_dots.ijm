{
numPoints=99 // enter how many FMRP puncta are in the neuron ROI

selectionName; 
roiManager("Add");
Roi.getBounds(x,y,w,h);
count = 0;
while (count < numPoints) { 
	roiManager( "select", 0 ); // select the first ROI
	x1 = random() * w + x;
	y1 = random() * h + y;
	if (selectionContains(x1, y1) == true ) { // if coordinates are inside the ROI 
		makePoint(x1, y1); // generate random point
		roiManager("Add"); // add the point to the ROI Manager
		count++; // ONLY increase count when point is added
	}
}
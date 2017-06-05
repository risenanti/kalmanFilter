#include "opencv2/video/tracking.hpp"
#include "opencv2/highgui.hpp"
#include <stdio.h>
#include <iostream>

#define drawCross( center, color, d )                                 \
line( img, Point( center.x - d, center.y - d ), Point( center.x + d, center.y + d ), color, 2, CV_AA, 0); \
line( img, Point( center.x + d, center.y - d ), Point( center.x - d, center.y + d ), color, 2, CV_AA, 0 )
 
using namespace std;
using namespace cv;


void CallBackFunc(int event, int x, int y, int flags, void* userdata)
{
     if ( event == EVENT_MOUSEMOVE )
     {
		Point*p = (Point*)userdata;
		p->x = x;
		p->y = y;
		//cout<<*p <<endl;
     }
}

int main()
{
    // Image to show mouse tracking
    Mat img(600, 800, CV_8UC3);
    vector<Point> mousev,kalmanv;
    mousev.clear();
    kalmanv.clear();

    //set the callback function for any mouse event
    //Create a window
    namedWindow("MyWindow", 1);

    Point p;
    setMouseCallback("MyWindow", CallBackFunc, &p);    
    
    /*Kalman Filter*/
    KalmanFilter KF(4,2,0);
    KF.transitionMatrix = (Mat_<float>(4, 4) << 1,0,1,0,   0,1,0,1,  0,0,1,0,  0,0,0,1);
	Mat_<float> measurement(2,1); measurement.setTo(Scalar(0));
	
	KF.statePre.at<float>(0) = p.x;
	KF.statePre.at<float>(1) = p.y;
	KF.statePre.at<float>(2) = 0;
	KF.statePre.at<float>(3) = 0;
	setIdentity(KF.measurementMatrix);
	setIdentity(KF.processNoiseCov, Scalar::all(1e-4));
	setIdentity(KF.measurementNoiseCov, Scalar::all(10));
	setIdentity(KF.errorCovPost, Scalar::all(.1));
	
	while(1)
	{
		// First predict, to update the internal statePre variable
		Mat prediction = KF.predict();
		Point predictPt(prediction.at<float>(0),prediction.at<float>(1));
		
		measurement(0) = p.x;
		measurement(1) = p.y;
		
		// The update phase 
		Mat estimated = KF.correct(measurement);
		
		Point statePt(estimated.at<float>(0),estimated.at<float>(1));
		Point measPt(measurement(0),measurement(1));
		
		imshow("MyWindow", img);
		img = Scalar::all(0);
		
		mousev.push_back(measPt);
        kalmanv.push_back(statePt);
        drawCross( statePt, Scalar(255,255,255), 5 );
        drawCross( measPt, Scalar(0,0,255), 5 );
 
        for (int i = 0; i < mousev.size()-1; i++) 
          line(img, mousev[i], mousev[i+1], Scalar(255,255,0), 1);
     
        for (int i = 0; i < kalmanv.size()-1; i++) 
          line(img, kalmanv[i], kalmanv[i+1], Scalar(0,155,255), 1);
	    
	    waitKey(10);	
	}

    return 0;
}

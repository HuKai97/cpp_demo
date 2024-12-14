#include <opencv2/opencv.hpp>
#include <iostream>


int main(int argc, char** argv)
{
  cv::VideoCapture cap(0);  
  if (!cap.isOpened())
  {
    std::cout << "cannot open camera." << std::endl;
    return -1;
  }

  cv::Mat frame;  
  while (true)
  {
    cap >> frame;
    if (frame.empty())
    {
      std::cout << "cannot get frame." << std::endl;
      break;
    }

    cv::imshow("camera_show", frame);

    if (cv::waitKey(30) >= 0) break;
  }

  cap.release();
  cv::destroyAllWindows();
  return 0;
}
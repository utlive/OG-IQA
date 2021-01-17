OG-IQA Software release.

=======================================================================
-----------COPYRIGHT NOTICE STARTS WITH THIS LINE------------
Copyright (c) 2015 Beijing Institude of Technology and The University of Texas at Austin
All rights reserved.

Permission is hereby granted, without written agreement and without license or royalty fees, to use, copy, 
modify, and distribute this code (the source files) and its documentation for
any purpose, provided that the copyright notice in its entirety appear in all copies of this code, and the 
original source of this code, Laboratory for Image and Video Engineering (LIVE, http://live.ece.utexas.edu)
and Center for Perceptual Systems (CPS, http://www.cps.utexas.edu) at the University of Texas at Austin (UT Austin, 
http://www.utexas.edu), is acknowledged in any publication that reports research using this code. The research
is to be cited in the bibliography as:

1)  Lixiong Liu, Yi Hua, Qingjie Zhao, Hua Huang, and Alan Conrad Bovik, "Blind Image Quality Assessment by Relative Gradient Statistics and AdaBoosting Neural Network".

2)  Lixiong Liu, Yi Hua, Qingjie Zhao, Hua Huang, and Alan Conrad Bovik, "OG-IQA Software Release", 
    URL: http://live.ece.utexas.edu/research/quality/og-iqa_release.zip, 2015

IN NO EVENT SHALL THE UNIVERSITY OF TEXAS AT AUSTIN BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, 
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OF THIS DATABASE AND ITS DOCUMENTATION, EVEN IF THE UNIVERSITY OF TEXAS
AT AUSTIN HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

THE UNIVERSITY OF TEXAS AT AUSTIN SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE DATABASE PROVIDED HEREUNDER IS ON AN "AS IS" BASIS,
AND THE UNIVERSITY OF TEXAS AT AUSTIN HAS NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.

-----------COPYRIGHT NOTICE ENDS WITH THIS LINE------------%

=======================================================================
Author  : Lixiong Liu
Version : 1.0

The authors are with the School of School of Computer Science and Technology, Beijing Institute of Technology, Beijing 100081, China

Kindly report any suggestions or corrections to lxliu@bit.edu.cn

=======================================================================

This is a demonstration of the Oriented Gradients Image Quality Assessment (OG-IQA). The algorithm is described in:

Lixiong Liu, Yi Hua, Qingjie Zhao, Hua Huang, and Alan Conrad Bovik, "Blind Image Quality Assessment by Relative Gradient Statistics and AdaBoosting Neural Network".

You can change this program as you like and use it anywhere, but please
refer to its original source (cite our paper and our web page at
http://live.ece.utexas.edu/research/quality/og-iqa_release.zip, 2015).

========================================================================

Running on Matlab 

Input : A test image loaded in an array

Output: A quality score of the image. Higher value represents a lower quality.
  
Usage:

1. Load the image, for example

   image     = imread('image.bmp'); 

2. Extract the image features. 

   f         = feature_extract(image);
 

3. Train the regression model:

 
 image_quality = BP_Ada(train_data, train_value, test_data, quantity)

=======================================================================

MATLAB files: 
    BP_Ada.m, feature_extract.m, FGr.m, VarInformation.m (provided with release)

Image Files: 
    image.bmp (provided with release)

LIVE IQA database features Files: 
    feature (provided with release)

Example files:
    example.m (provided with release)

NOTE: Please download the Neural Network toolbox in Matlab.

========================================================================

Note on training: 
This release version of OG-IQA was trained on the entire LIVE database.

====================================================================

The code in BP_Ada.m file refer to the book "The studies of 43 MATLAB cases for neural network".

====================================================================


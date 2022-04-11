# WebPage Scraper

<div id="top"></div>
<div align="center">
![Shell Script](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white) 
![](https://img.shields.io/badge/License-MIT-blue)
![](https://img.shields.io/github/issues/mstatt/jetson-interface_installer)
![](https://img.shields.io/github/forks/mstatt/jetson-interface_installer)
  
</div>



<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/mstatt/jetson-interface_installer">
    <img src="assets/falcons-logo2.png" alt="Logo" >
  </a>

  <h3 align="center">
WebPage scraper</h3>

  <p align="center">
    A simple script to install and build the jetson-interface repository on the Nvidia Jetson Nano.
    <br />

  </p>
</div>




<!-- ABOUT THE PROJECT -->
## About The Web Scraper Application by Falcons.ai

This script is designed to download and build the jetson -interface repository for you to have the basics for development and testing on the Nvidia Jetson nano.


This was scripted on a Nvidia Jetson Nano 4GB with wifi module and a flashed SD card.

Use this `README.md` to get started.

<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

This was developed using a simple bash script.



<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

In order to get this project up and running it is assumed that you have an Nvidia Jetson Nano 4GB. That you have installed a Jetson Nano compatible Wireless Network Card M.2 Interface bluetooth WiFi Module installed. The script will download the jetson-interface repo to the same location as the script.

### Prerequisites

The prerequsisties for running the script also require that you have flashed the SD card with the (Jetson Nano Developer Kit SD Card image) which can be found here ( [https://developer.nvidia.com/embedded/downloads])

Please follow the steps as outlined on the Official Nvidia Jetson Nano Developer Kit site:
[https://developer.nvidia.com/embedded/learn/get-started-jetson-nano-devkit#intro]
  



<p align="right">(<a href="#top">back to top</a>)</p>



<!-- Set Up Commands -->
## Set Up commands and help
 This is assuming that your user has been added to the sudo group
 if not you can run the followiing command to add them:
 ```sh
  sudo usermod -a -G sudo <username>
 ```
 The command below adds the user to the root users group:
 ```sh
  sudo usermod -a -G root <username>
 ```
 Prior to running the scropt make it executable with the terminal command below:
 ```sh
  sudo  chmod u+x jetson-interface.sh
 ```


<!-- Launch the installer -->
## Launch the installer

 To execute the installer after the previous prereqs have been extablished execute toe following command from the terminal running inside the same directory as the script:
  ```sh
 sudo ./jetson-interface.sh
 ```




<!-- OUTPUT -->
## Output

Once completed your system will reboot. You can log back in and you are ready to go.




<p align="right">(<a href="#top">back to top</a>)</p>



See the https://github.com/mstatt/jetson-interface_installer a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

![](https://img.shields.io/badge/License-MIT-blue)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Project Link: [https://github.com/mstatt/jetson-interface_installer]


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
[license-shield]: assets/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6c6963656e73652f6f74686e65696c647265772f426573742d524541444d452d54656d706c6174652e7376673f7374796c653d666f722d7468652d6261646765.svg?style=for-the-badge
[license-url]: https://github.com/mstatt/jetson-interface_installer/blob/main/LICENSE.txt

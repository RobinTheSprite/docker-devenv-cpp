# docker-devenv-cpp
A VS Code dev container for C++

My experience setting up development environments for C++ on Windows has been pretty rough. I've wasted countless hours trying to properly install MinGW, CygWIN, and any other tool that I think will allow me to properly install the libraries I need for my project.

Docker, combined with VS Code's dev containers, offer a solution that may have saved me a lot of time back in college. The Docker image in this repository can be used as a development environment for C++, and should contain everything that you need to get started.

## Features

- Basic install of the latest version of Ubuntu
- The GCC compiler and GDB debugger
- CMake
- Git
- Commonly used libraries (Boost, FLTK, Doctest, etc.)
- Commonly used command line utilities (cURL, nano, openSSH, etc.)

## Why Not WSL?

The Windows Subsystem for Linux (WSL) is also a great way to create a UNIX-like development environment on Windows. In fact, it probably will give you better performance. However, I believe that a dev container has several advantages that plain WSL does not:

- **Portability**: This docker container allows one to set up a consistent dev environment anywhere, on any device.
- **Sharability**: Whole teams can use exactly the same environment, with much simpler setup.
- **Isolation**: Each dev container contains only what it needs for one specific language, tech stack, or project. This prevents any one environment from becoming bloated with unnecessary packages.

You might still want to install WSL for this dev container, though, as Docker for Windows can run using WSL as the back end. Learn more in [Microsoft's Documentation](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers).

## Installation

1. [Install Docker](https://docs.docker.com/get-docker/) on your platform of choice.
2. Clone this repo: `git clone https://github.com/RobinTheSprite/docker-devenv-cpp.git`
3. Open the repo in VS Code.
4. Install the [Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) and [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) extensions.
5. Click the >< symbol in the lower left hand corner of the window, and choose an option for opening the container. You can open the current folder, clone a Git repository, or open another folder.

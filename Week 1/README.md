# Week 1: Introduction to R language
## Topics
1. R and RStudio installation
2. R packages installation
3. Programming concepts in R
    - Data structure
    - Flow control
    - Function
    - Help
    - Workspace

## Assignments
R could have a reproducibility problem since an analysis generally requires R-packages that are frequently updated or upgraded. R itself is also constantly updated or upgraded. A new version of R might not be compatible with current R-packages, system libraries or even the operating system itself. 

The container technology could mitigate compatability and reproducibility problems in R. The instruction file for building a container (e.g. Dockerfile) could be written to specify the versions of R, R-packages and system libraries to ensure that a R-script could be run in the identical environment.

Your task is to write a Dockerfile with the following specifications:

1. R version 4.4.2
2. RStudio server
3. Expose RStudio sever to port 8787 (so you can run RStudio via a web browser to https://localhost:8787)
4. Install the following R-packages:
   - tidyverse
   - reshape2
   - BiocManager (i.e. bioconductor)

<b>You will need to submit a Dockerfile.</b> Make sure your docker image could be run with this command (run with `sudo` if needed):

```
$ docker run --rm -ti -e PASSWORD=yourpassword -p 8787:8787 your_image_name:tag
```

<b>Hints</b>
- You may pull a docker image from https://rocker-project.org/ in your Dockfile. You may use documentations and sample Dockerfiles from https://rocker-project.org/ to guide you how to write a Dockerfile.
- Use the following command to build a docker image from your Dockerfile (Make sure you change the current directory to the directory that contains your Dockerfile). Do not omit `.` at the end of the command.
```
$ docker build -t your_image_name:tag .
```
- `install2.r ` is a command to install r-packages in the terminal. Use this command in your Dockerfile.
- For Dockerfile tutorial: https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/

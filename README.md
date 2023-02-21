# CourseContainerTemplate

This repo provides a template for creating course specific containers using the image created from the [VncNoVNCContainerBase](https://github.com/braughtg/VncNoVncContainerBase) repo.
 
## Creating an Image from the Template

1. Create a new repository using this template.
2. Edit build.bash to specify: 
   - DockerHub Username
   - Image name
   - Image tag
3. Modify the `Dockerfile` to customize the base image by adding new software or doing additional configuration of the image.
4. Run `build.bash` to create the image and push.

## Using your Image:

See the generic directions in the [VncNoVNCContainerBase](https://github.com/braughtg/VncNoVncContainerBase) repo and adapt them to the specific image that you have created.

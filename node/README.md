# Node v18.15.0

This is a dynamic build of nodejs. You can use all built-in modules from node.

To run node projects that contain not prebuilt modules:
1. Install npm
2. Go to the home folder of your sources.
3. Install all the node modules that your project needs to run using npm.
4. Run the app-elfloader with node and the path to your main source.

An example of how this can be done can be found in `/tests/chalk_test/` folder. You need to have npm installed and run-app-elfloader repo downloaded.

How the image was built:
- Copied the source code from https://nodejs.org/dist/v18.15.0/.
- Configured the project to be built as a dynamic application.
- Built the project.
- Command for configuring and compiling the binary:
~~~bash
./configure --shared-brotli --shared-zlib --shared-openssl --shared-cares --shared-nghttp2 --openssl-use-def-ca-store
make -j$(nproc)
~~~

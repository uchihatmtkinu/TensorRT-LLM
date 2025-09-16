#make -C docker jenkins_run LOCAL_USER=1

# sudo apt update
# sudo apt install -y libgtest-dev libeigen3-dev
if [ ! -d "build" ]; then
    mkdir build
fi
cd build 
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_XQA_TESTS=ON
cmake --build . -j
./unitTests


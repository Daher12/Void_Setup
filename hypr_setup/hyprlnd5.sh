mkdir -p build && cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DNO_SYSTEMD:STRING=true -H./ -B./build -G Ninja
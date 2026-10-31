setting up a demo of having a shared library and black box testing

things I needed to do
setup a package to import into the tests
https://packaging.python.org/en/latest/tutorials/packaging-projects/
```
sudo pacman -S python-build
```

command for building the example. used bash bc
 this didn't work with fish
```
c++ -O3 -Wall -shared -std=c++11 -fPIC $(python3 -m pybind11 --includes) example.cpp -o example$(python3-config --extension-suffix)
```
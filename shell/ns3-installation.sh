sudo apt-get install gcc g++ python python-dev qt4-dev-tools libgtk-3-dev wireshark gnuplot openjdk-8-jdk
sudo apt-get install gir1.2-goocanvas-2.0 python-gi python-gi-cairo python-pygraphviz python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython ipython3  
git clone https://github.com/nsnam/ns-3-dev-git.git
cd ns-allinone-3.30.1
./build.py --enable-examples --enable-tests
cd ns-3.30.1
./test.py -c core
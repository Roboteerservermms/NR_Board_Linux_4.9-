sudo rm -rf /var/lib/dpkg/lock*
sudo apt-get update
sudo apt-get -y upgrade

## install edgetpu deb package
echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" | sudo tee /etc/apt/sources.list.d/coral-edgetpu.list
	curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

	sudo apt-get update
	sudo apt-get install libedgetpu1-std -y
	sudo apt-get install --no-install-recommends xubuntu-desktop -y

## install tensorFlow Lite and run a model
	sudo apt update
	sudo apt install python3-pip python3-opencv python3.7 -y
	sudo apt install libjpeg8-dev zlib1g-dev libtiff-dev libfreetype6 libfreetype6-dev libwebp-dev libopenjp2-7-dev libopenjp2-7-dev cython python3-numpy python3-pil python3-edgetpu -y
	pip3 install Cython 
	pip3 install numpy
	pip3 install Pillow --global-option="build_ext" --global-option="--enable-zlib" --global-option="--enable-jpeg" --global-option="--enable-tiff" --global-option="--enable-freetype" --global-option="--enable-webp" --global-option="--enable-webpmux" --global-option="--enable-jpeg2000"
	sudo apt-get install git
	pip3 install https://dl.google.com/coral/python/tflite_runtime-2.1.0.post1-cp36-cp36m-linux_aarch64.whl
	cd ~
	git clone https://github.com/google-coral/tflite.git
	cd tflite/python/examples/classification
	bash install_requirements.sh
	python3 classify_image.py \
	--model models/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite \
	--labels models/inat_bird_labels.txt \
	--input images/parrot.jpg

	sudo systemctl enable detect.service
	sudo systemctl start detect.service
	sudo cp autologin.conf /etc/lightdm/lightdm.conf.d/

	sudo apt-get install llvm-7 -yy
	sudo ln -s /usr/bin/llvm-config-7 /usr/bin/llvm-config
	sudo apt-get install build-essential cmake unzip pkg-config gcc-6 g++-6 screen libxmu-dev libxi-dev libglu1-mesa libglu1-mesa-dev libjpeg-dev libpng-dev libtiff-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libopenblas-dev libatlas-base-dev liblapack-dev gfortran libhdf5-serial-dev python3.7-dev python3.7-tk python-imaging-tk libgtk-3-dev -y
	sudo python3.7 -m pip install Cython 
	sudo python3.7 -m pip install numpy
	sudo python3.7 -m pip install numba==0.44.0
	sudo python3.7 -m pip install librosa
	sudo python3.7 -m pip install https://github.com/lhelontra/tensorflow-on-arm/releases/download/v2.4.0/tensorflow-2.4.0-cp37-none-linux_aarch64.whl
	sudo apt-get install git
	sudo ln -s /usr/bin/llvm-config-7 /usr/bin/llvm-config


	sudo apt-get install portaudio19-dev python-pyaudio
	sudo python3.7 -m pip install pyaudio
	sudo python3.7 -m pip install matplotlib
	sudo python3.7 -m pip install pandas


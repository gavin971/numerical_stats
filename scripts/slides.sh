#! /bin/bash
cp `pwd`/include/custom.css `dirname $1`
sudo docker run -p 8888:8888 -it -v `pwd`:/home/jovyan/work jupyter/scipy-notebook jupyter nbconvert --to slides $1 --post serve --ServePostProcessor.port=8888 --ServePostProcessor.ip=0.0.0.0 --template=include/custom_slides.tpl  --ServePostProcessor.reveal_cdn=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.4.1

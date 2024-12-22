#!/bin/sh

vpype \
eval "files=glob('frames/*.svg')" \
eval "cols=6; rows=ceil(len(files)/cols)" \
grid -o 10cm 15cm "%cols%" "%rows%" \
read --no-fail "%files[_i] if _i < len(files) else ''%" \
layout -m 0.5cm 10x15cm end \
write combined.svg

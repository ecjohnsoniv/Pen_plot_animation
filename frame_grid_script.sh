#!/bin/sh

frameWidth=640
frameHeight=480
unit='px'
padding=10

vpype \
eval "files=glob('frames/*.svg')" \
eval "cols=6; rows=ceil(len(files)/cols)" \
grid -o $((frameWidth + padding))${unit} $((frameHeight + padding))${unit} "%cols%" "%rows%" \
    read --no-fail "%files[_i] if _i < len(files) else ''%" \
    line 0 0 ${frameWidth}${units} 0 \
    line ${frameWidth}${units} 0 ${frameWidth}${units} ${frameHeight}${units} \
    line ${frameWidth}${units} ${frameHeight}${units} 0 ${frameHeight}${units} \
    line 0 ${frameHeight}${units} 0 0 \
end \
write combined.svg


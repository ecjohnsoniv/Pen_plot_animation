#!/bin/sh

vpype \
eval "files=glob('frames/*.svg')" \
eval "cols=6; rows=ceil(len(files)/cols)" \
grid -o 640px 480px "%cols%" "%rows%" \
    read --no-fail "%files[_i] if _i < len(files) else ''%" \
    line 0 0 640px 0 \
    line 640px 0 640px 480px \
    line 640px 480px 0 480px \
    line 0 480px 0 0 \
end \
write combined.svg


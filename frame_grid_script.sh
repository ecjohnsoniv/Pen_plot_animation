#!/bin/sh

vpype \
eval "files=glob('frames/*.svg')" \
eval "cols=6; rows=ceil(len(files)/cols)" \
grid -o 640px 480px "%cols%" "%rows%" \
    read --no-fail "%files[_i] if _i < len(files) else ''%" \
    line 0 0 640px 480px \
end \
write combined.svg


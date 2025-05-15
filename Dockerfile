FROM openwrt/sdk:x86_64-v23.05.5

RUN ./scripts/feeds update -a && ./scripts/feeds install luci-base && mkdir -p /builder/package/feeds/utilites/ && mkdir -p /builder/package/feeds/luci/

COPY ./mbzeguard /builder/package/feeds/utilites/mbzeguard
COPY ./luci-app-mbzeguard /builder/package/feeds/luci/luci-app-mbzeguard

RUN make defconfig && make package/mbzeguard/compile && make package/luci-app-mbzeguard/compile V=s -j4
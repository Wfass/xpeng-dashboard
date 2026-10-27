#!/system/bin/sh
COMP=com.xiaopeng.montecarlo/.service.minimap.MiniMapService
am startservice -n "$COMP" -a com.xiaopeng.montecarlo.minimap.ACTION_DISPLAY_SIZE_CHANGE --ei minimap_display_width 660 --ei minimap_display_height 660
am startservice -n "$COMP" -a com.xiaopeng.montecarlo.minimap.ACTION_DISPLAY_CHANGE --ez minimap_display true

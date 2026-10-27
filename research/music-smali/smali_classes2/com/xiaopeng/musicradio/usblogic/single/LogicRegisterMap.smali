.class public Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;
.super Ljava/lang/Object;
.source "LogicRegisterMap.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicRegistry;
.end annotation


# static fields
.field private static mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final registerMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->mCache:Ljava/util/Map;

    .line 20
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/music_info_list"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.ListMusicRequestManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getAlbumList"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetAlbumList"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getSingerList"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetSingerList"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_updateAlbumLogo"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbUpdateAlbumLogo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/singer_info_list"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.ListSingerRequestManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.album.main/album_list"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.ListAlbumRequestManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getTreeBean"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetTreeBean"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getState"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetMountedState"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getUsbState4XiaoP"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetUsbState4XiaoP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/singer_info_single"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.SingleSingerRequestManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getUsbSinger"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetSinger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_updateSingerLogo"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbUpdateSingerLogo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getTreeFromPath"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetTreeByPath"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_addRebootPlayTask"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbAddBootTask"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_updateSongLogo"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbUpdateSongLogo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_updateSongDuration"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbUpdateSongDuration"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getUsbMusicInfos"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetMusicInfoList"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_test"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbStartTest"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/music_info_single"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.SingleMusicRequestManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.album.main/album_single"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.SingleAlbumRequestManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_hasMountedUsbDisk"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbHasMountedDisk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_getAlbumByName"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbGetAlbumByName"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_onDestroy"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbMediaDestroy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_reorderToTop"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbReorderToTop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://music.usb.server.main/usb_isParseFinish"

    const-string v2, "com.xiaopeng.musicradio.usblogic.single.UsbIsParseFinish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 48
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->mCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 52
    :cond_0
    sget-object v1, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllSupportFunction()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 76
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public static release()V
    .locals 1

    .line 66
    sget-object v0, Lcom/xiaopeng/musicradio/usblogic/single/LogicRegisterMap;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.class public Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;


# instance fields
.field private mHandlerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mHandlerHashMap:Ljava/util/HashMap;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->initHandlers()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;
    .locals 2

    .line 37
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mInstance:Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;

    return-object v0
.end method

.method private initHandlers()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "com.xiaopeng.musicradio"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/media/handler/XpMediaHandler;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/media/handler/XpMediaHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mHandlerHashMap:Ljava/util/HashMap;

    const-string v1, "com.ximalaya.ting.android.car"

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/xapp/media/handler/MediaBrowserHandler;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public enterCurrent(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->playbackControlInner(III)Z

    .line 89
    return-void
.end method

.method public enterTargetPackage(ILjava/lang/String;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;

    .line 93
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;->enterApp(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public isShowSeizeDialog(I)Z
    .locals 6
    .param p1, "displayId"    # I

    .line 48
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_media_no_seize_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    .local v0, "noShow":Z
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Show_Seize_Dialog:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    .line 51
    .local v1, "current":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v3

    const/4 v4, 0x1

    rsub-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v3

    .line 52
    .local v3, "other":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v3}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 52
    move v2, v4

    goto :goto_0

    .line 53
    :cond_0
    nop

    .line 52
    :goto_0
    return v2

    .line 55
    .end local v1    # "current":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .end local v3    # "other":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    :cond_1
    return v2
.end method

.method public isShowSeizeDialog(ILjava/lang/String;)Z
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getInstance()Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;

    move-result-object v0

    const-string v1, "key_media_no_seize_dialog"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/SharedPreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, "noShow":Z
    const-string v1, "MediaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShowSeizeDialog noShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->hasSharedDisplayFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/xiaopeng/xuiservice/mediacenter/Config;->Show_Seize_Dialog:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    rsub-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    .line 69
    .local v1, "other":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultMedia(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.xiaopeng.musicradio"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "otherPkgName":Ljava/lang/String;
    :goto_0
    const-string v3, "MediaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentPkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " &otherPkgName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 75
    .end local v1    # "other":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .end local v2    # "otherPkgName":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public isSupportMediaPlay(ILjava/lang/String;)Z
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getPackageScreenId(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "pkgScreenId":I
    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 83
    .end local v0    # "pkgScreenId":I
    :cond_1
    return v1
.end method

.method public mediaPlay(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;

    .line 100
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;
    if-eqz v0, :cond_1

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasMultiScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->setPackageScreenId(Ljava/lang/String;I)Z

    .line 104
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1, p3, p4, v1}, Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;->mediaPlay(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/media/Callback;)V

    .line 106
    :cond_1
    return-void
.end method

.method public mediaSpecialControl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/media/MediaManager;->mHandlerHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;

    .line 110
    .local v0, "handler":Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;
    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    invoke-interface {v0, p1, p3, p4, v1}, Lcom/xiaopeng/xuiservice/xapp/media/handler/IMediaHandler;->mediaPlay(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/media/Callback;)V

    .line 113
    :cond_0
    return-void
.end method

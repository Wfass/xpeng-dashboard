.class public Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;
.super Lcom/xiaopeng/speech/protocol/SpeechModel;
.source "MediaQueryModel.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/query/media/IMediaVideoQueryCaller;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaQueryModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/speech/protocol/SpeechModel;-><init>()V

    .line 28
    return-void
.end method

.method private getMediaVideoInfo(I)Lorg/json/JSONObject;
    .locals 11
    .param p1, "screenId"    # I

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentMediaInfo(I)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    .line 65
    .local v1, "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getCurrentPlayStatus(I)I

    move-result v2

    .line 66
    .local v2, "status":I
    if-eqz v1, :cond_4

    .line 67
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v3, "mediaInfoObject":Lorg/json/JSONObject;
    const-string v4, "screenId"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isScreenOpened(I)Z

    move-result v4

    .line 70
    .local v4, "isScreenOpen":Z
    const-string v5, "isFolded"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 71
    const-string v5, "title"

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v5, "artist"

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v5, "isXpMusic"

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v8

    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 74
    if-nez v2, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    .line 75
    .local v5, "isPlaying":Z
    :goto_1
    const-string v8, "isPlaying"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    const-string v8, "pkgName"

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v8, "isDefault"

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->isDefaultStatus(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v8

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getAppType(Ljava/lang/String;)I

    move-result v8

    .line 79
    .local v8, "appType":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    move v6, v7

    nop

    .line 80
    .local v6, "isVideo":Z
    :cond_2
    const-string v10, "type"

    if-eqz v6, :cond_3

    move v7, v9

    nop

    :cond_3
    invoke-virtual {v3, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string v7, "mediaInfo"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "mediaInfo":Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .end local v2    # "status":I
    .end local v3    # "mediaInfoObject":Lorg/json/JSONObject;
    .end local v4    # "isScreenOpen":Z
    .end local v5    # "isPlaying":Z
    .end local v6    # "isVideo":Z
    .end local v8    # "appType":I
    :cond_4
    goto :goto_2

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "ex":Lorg/json/JSONException;
    const-string v2, "MediaQueryModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMediaVideoInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v1    # "ex":Lorg/json/JSONException;
    :goto_2
    return-object v0
.end method


# virtual methods
.method public getDemandApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechUtils;->getTargetDisplayId(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "displayId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/video/VideoManager;->getTargetApp(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMediaVideoInfo()Ljava/lang/String;
    .locals 6

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 40
    .local v1, "screenArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;->getMediaVideoInfo(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    .local v2, "mainScreen":Lorg/json/JSONObject;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 42
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasPsnScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;->getMediaVideoInfo(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 44
    .local v3, "psnScreen":Lorg/json/JSONObject;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 45
    .end local v3    # "psnScreen":Lorg/json/JSONObject;
    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->isHasResScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;->getMediaVideoInfo(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 47
    .local v3, "resScreen":Lorg/json/JSONObject;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 49
    .end local v3    # "resScreen":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    const-string v3, "screenInfo"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AccessoryBluetoothManager;->isDeviceConnected()Z

    move-result v3

    .line 51
    .local v3, "isPassengerBtConnected":Z
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v4, "btObject":Lorg/json/JSONObject;
    const-string v5, "isSecondaryConnected"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 53
    const-string v5, "bluetoothInfo"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "screenArray":Lorg/json/JSONArray;
    .end local v2    # "mainScreen":Lorg/json/JSONObject;
    .end local v3    # "isPassengerBtConnected":Z
    .end local v4    # "btObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Lorg/json/JSONException;
    const-string v2, "MediaQueryModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMediaVideoInfo ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .end local v1    # "ex":Lorg/json/JSONException;
    :goto_1
    const-string v1, "MediaQueryModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaVideoInfo info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public subscribe()V
    .locals 2

    .line 31
    const-string v0, "MediaQueryModel"

    const-string v1, "subscribe node and query"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-class v0, Lcom/xiaopeng/speech/protocol/query/media/MediaVideoQuery;

    invoke-virtual {p0, v0, p0}, Lcom/xiaopeng/xuiservice/xapp/speech/MediaQueryModel;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    .line 33
    return-void
.end method

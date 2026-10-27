.class public Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;
.super Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;
.source "LegacyICMHandler.java"


# static fields
.field private static final TYPE_BLUETOOTH:I = 0x2

.field private static final TYPE_FM:I = 0x1

.field private static final TYPE_MUSIC:I = 0x1

.field private static final TYPE_RADIO:I = 0x1

.field private static final TYPE_READING:I = 0x2

.field private static final TYPE_USB:I = 0x3


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

.field private mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

.field private mNetRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

.field private mNetRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;

.field private mRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;

.field private mRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->initBeans()V

    .line 38
    return-void
.end method

.method private getNetRadioBeanJson(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[J)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "status"    # I
    .param p3, "position"    # [J

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;->setName(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;->setFre(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    const/4 v1, 0x1

    aget-wide v2, p3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;->setTotal(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;->setProgress(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    if-nez p2, :cond_0

    const-string v2, "play"

    goto :goto_0

    :cond_0
    const-string v2, "pause"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;->setStatus(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 109
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "timeString":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->setReporttime(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->setMsgtype(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mGson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTalkingBookBeanJson(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[J)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "status"    # I
    .param p3, "position"    # [J

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v0, "talkingBookJsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 119
    .local v1, "metaDataJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "enable"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v2, "msgtype"

    const-string v3, "2"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v2, "fre"

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v2, "total"

    const/4 v3, 0x1

    aget-wide v3, p3, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v2, "progress"

    const/4 v3, 0x0

    aget-wide v3, p3, v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v2, "status"

    if-nez p2, :cond_0

    const-string v3, "play"

    goto :goto_0

    :cond_0
    const-string v3, "pause"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v2, "talking_book"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initBeans()V
    .locals 2

    .line 55
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->setMusic(Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;)V

    .line 59
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;

    .line 60
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioIcmBean;->setRadio(Lcom/xiaopeng/xuiservice/mediacenter/bean/RadioBean;)V

    .line 63
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    .line 64
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mNetRadioBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioIcmBean;->setNetRadio(Lcom/xiaopeng/xuiservice/mediacenter/bean/NetRadioBean;)V

    .line 66
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mGson:Lcom/google/gson/Gson;

    .line 67
    return-void
.end method

.method private sendIcmMusicData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;ZI[JZ)V
    .locals 6
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "isXp"    # Z
    .param p3, "status"    # I
    .param p4, "position"    # [J
    .param p5, "withImage"    # Z

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setSong(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setArtist(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    aget-wide v2, p4, v1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setTotal(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    aget-wide v3, p4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "0"

    :goto_1
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setProgress(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    if-nez p3, :cond_2

    const-string v3, "play"

    goto :goto_2

    :cond_2
    const-string v3, "pause"

    :goto_2
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setStatus(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 89
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 88
    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "timeString":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->setReporttime(Ljava/lang/String;)V

    .line 91
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->setMsgtype(Ljava/lang/String;)V

    goto :goto_3

    .line 94
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->setMsgtype(Ljava/lang/String;)V

    .line 96
    :goto_3
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mGson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "beanJson":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    if-eqz p5, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->getBitmapByte(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    goto :goto_4

    :cond_4
    new-array v2, v2, [B

    :goto_4
    invoke-virtual {p0, v4, v2}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->setMusicInfo([B[B)V

    .line 98
    const-string v2, "LegacyICMHandler_sendIcmMusicData"

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v2, v1, p5, v4}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->printMediaDataLog(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V

    .line 99
    return-void
.end method

.method private sendIcmNetRadioData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V
    .locals 3
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "status"    # I
    .param p3, "position"    # [J
    .param p4, "withImage"    # Z

    .line 70
    const-string v0, ""

    .line 71
    .local v0, "beanJson":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->getNetRadioBeanJson(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->getTalkingBookBeanJson(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[J)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_1
    :goto_0
    const-string v1, "LegacyICMHandler_sendIcmNetRadioData"

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v0, p4, v2}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->printMediaDataLog(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 78
    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->getBitmapByte(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 77
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->setNetRadioInfo([B[B)V

    .line 79
    return-void
.end method


# virtual methods
.method public sendIcmMediaInfoData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V
    .locals 7
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "status"    # I
    .param p3, "position"    # [J
    .param p4, "withImage"    # Z

    .line 43
    if-nez p1, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v6

    .line 47
    .local v6, "isXp":Z
    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 48
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->sendIcmNetRadioData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V

    goto :goto_0

    .line 50
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/mediacenter/icm/LegacyICMHandler;->sendIcmMusicData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;ZI[JZ)V

    .line 52
    :goto_0
    return-void
.end method

.method public setNetRadioInfo([B[B)V
    .locals 1
    .param p1, "basic"    # [B
    .param p2, "image"    # [B

    .line 134
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->setNetRadioInfo([B[B)V

    .line 136
    return-void
.end method

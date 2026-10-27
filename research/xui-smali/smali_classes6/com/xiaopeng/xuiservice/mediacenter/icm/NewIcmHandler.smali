.class public Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;
.super Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;
.source "NewIcmHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewIcmHandler"


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

.field private mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/ICMHandler;-><init>()V

    return-void
.end method

.method private getStartPosition(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)I
    .locals 3
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 49
    if-eqz p1, :cond_0

    .line 50
    const-string v0, "startPosition"

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 53
    .local v1, "position":I
    add-int/lit8 v2, v1, 0x1

    div-int/lit16 v2, v2, 0x3e8

    return v2

    .line 56
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "position":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initMusicBean()V
    .locals 2

    .line 60
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    .line 61
    new-instance v0, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->setMusic(Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;)V

    .line 63
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mGson:Lcom/google/gson/Gson;

    .line 64
    return-void
.end method


# virtual methods
.method public sendIcmMediaInfoData(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;I[JZ)V
    .locals 7
    .param p1, "mediaInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
    .param p2, "status"    # I
    .param p3, "position"    # [J
    .param p4, "withImage"    # Z

    .line 28
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->isXpMusic()Z

    move-result v0

    .line 29
    .local v0, "isXp":Z
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    if-nez v1, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->initMusicBean()V

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setSong(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setArtist(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    aget-wide v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setTotal(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    aget-wide v3, p3, v2

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "0"

    :goto_1
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setProgress(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    if-nez p2, :cond_3

    const-string v3, "play"

    goto :goto_2

    :cond_3
    const-string v3, "pause"

    :goto_2
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setStatus(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->getStartPosition(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    const-string v3, "0"

    :goto_3
    invoke-virtual {v1, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicBean;->setStartPosition(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 40
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 39
    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 40
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "timeString":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    invoke-virtual {v4, v3}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->setReporttime(Ljava/lang/String;)V

    .line 42
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getSource()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;->setMsgtype(Ljava/lang/String;)V

    .line 43
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mGson:Lcom/google/gson/Gson;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mMusicIcmBean:Lcom/xiaopeng/xuiservice/mediacenter/bean/MusicIcmBean;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "beanJson":Ljava/lang/String;
    const-string v5, "NewIcmHandler_sendIcmMediaInfoData"

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p0, v5, v4, p4, v6}, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->printMediaDataLog(Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;)V

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->getBitmapByte(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    goto :goto_4

    :cond_5
    new-array v2, v2, [B

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->setMusicInfo([B[B)V

    .line 46
    return-void
.end method

.method public sendLyricsMessage(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 4
    .param p1, "lyricInfo"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 68
    const-string v0, ""

    .line 69
    .local v0, "content":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/icm/NewIcmHandler;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    const-string v1, "NewIcmHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendLyricsMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpIcmAgent;->sendLyricsMessage([B)V

    .line 75
    return-void
.end method

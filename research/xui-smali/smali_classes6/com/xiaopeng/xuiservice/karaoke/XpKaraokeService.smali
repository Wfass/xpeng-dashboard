.class public Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;
.super Ljava/lang/Object;
.source "XpKaraokeService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;


# static fields
.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "XpKaraokeService"

.field private static mMicVendor:Lcom/xiaopeng/xuiservice/karaoke/IXiaoPengMicVendor;

.field private static volatile xpKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;


# instance fields
.field private accompanimentTrack:Landroid/media/AudioTrack;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mMicSDKCallBack:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

.field private mTrackAvailable:I

.field private mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mTrackAvailable:I

    .line 40
    const-string v0, "XpKaraokeService"

    const-string v1, "XpKaraokeService init"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    .line 42
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;
    .locals 2

    .line 47
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->xpKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->xpKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->xpKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->xpKaraokeService:Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;

    return-object v0
.end method


# virtual methods
.method public aiWakeUp()I
    .locals 2

    .line 348
    const-string v0, "XpKaraokeService"

    const-string v1, "aiWakeUp"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    move-result-object v0

    const-string v1, "changba"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->wakeupSpeech(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public create(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "midware"    # Ljava/lang/String;

    .line 59
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create() pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " midware="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()I
    .locals 2

    .line 65
    const-string v0, "XpKaraokeService"

    const-string v1, "destroy() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public enableCarMicrophone(ZI)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "position"    # I

    .line 378
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCarMicrophone enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, "ret":I
    return v0
.end method

.method public enableVocalRemove(ZI)I
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "level"    # I

    .line 394
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVocalRemove enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, "ret":I
    return v0
.end method

.method public enableVocalRemoveDynamic(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 410
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVocalRemoveDynamic enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public getBgmVolume()I
    .locals 2

    .line 423
    const-string v0, "XpKaraokeService"

    const-string v1, "getBgmVolume"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public getCarMicrophonePosition()I
    .locals 2

    .line 389
    const-string v0, "XpKaraokeService"

    const-string v1, "getCarMicrophonePosition"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public getEcho()I
    .locals 2

    .line 130
    const-string v0, "XpKaraokeService"

    const-string v1, "getEcho()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getHandShakeStatus()I
    .locals 2

    .line 96
    const-string v0, "XpKaraokeService"

    const-string v1, "getHandShakeStatus "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getMicPowerStatus()I
    .locals 2

    .line 108
    const-string v0, "XpKaraokeService"

    const-string v1, "getMicPowerStatus() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getMicStatus()I
    .locals 2

    .line 102
    const-string v0, "XpKaraokeService"

    const-string v1, "getMicStatus() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getToken()I
    .locals 2

    .line 84
    const-string v0, "XpKaraokeService"

    const-string v1, "getToken()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getVocalRemoveLevel()I
    .locals 2

    .line 405
    const-string v0, "XpKaraokeService"

    const-string v1, "getVocalRemoveLevel"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public getVolume(I)I
    .locals 3
    .param p1, "type"    # I

    .line 120
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVolume() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public isCarMicrophoneEnable()Z
    .locals 2

    .line 384
    const-string v0, "XpKaraokeService"

    const-string v1, "isCarMicrophoneEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public isVocalRemoveDynamicEnable()Z
    .locals 2

    .line 414
    const-string v0, "XpKaraokeService"

    const-string v1, "isVocalRemoveDynamicEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public isVocalRemoveEnable()Z
    .locals 2

    .line 400
    const-string v0, "XpKaraokeService"

    const-string v1, "isVocalRemoveEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public micCreate(III)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I
    .param p3, "bufSize"    # I

    .line 319
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public micDestroy()I
    .locals 6

    .line 330
    const-string v0, "XpKaraokeService"

    const-string v1, "micDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 334
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    const-string v3, "MediaLoopback"

    const-string v4, "=OFF"

    invoke-virtual {v2, v0, v3, v4}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->stopPlay(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "XpKaraokeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "micDestroy exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public micGetAvail()I
    .locals 1

    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public micGetMinBuf(II)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I

    .line 313
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "micGetMinBuf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    return v0
.end method

.method public micRead([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public pause()I
    .locals 3

    .line 194
    const-string v0, "XpKaraokeService"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 199
    :cond_0
    return v0
.end method

.method public pausePlay()I
    .locals 3

    .line 248
    const-string v0, "XpKaraokeService"

    const-string v1, "pausePlay()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 251
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 253
    :cond_0
    return v0
.end method

.method public read([BI)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public recCreate(III)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I
    .param p3, "bufSize"    # I

    .line 278
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recCreate() sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public recDestroy()I
    .locals 2

    .line 302
    const-string v0, "XpKaraokeService"

    const-string v1, "recDestroy()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public recGetAvail()I
    .locals 1

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public recGetMinBuf(II)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I

    .line 270
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recGetMinBuf() sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 273
    .local v0, "ret":I
    return v0
.end method

.method public recStart()I
    .locals 2

    .line 210
    const-string v0, "XpKaraokeService"

    const-string v1, "recStart()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public recStop()I
    .locals 2

    .line 204
    const-string v0, "XpKaraokeService"

    const-string v1, "recStop()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public registCallback(Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)I
    .locals 2
    .param p1, "callBackFunc"    # Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    .line 71
    const-string v0, "XpKaraokeService"

    const-string v1, "registCallback()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mMicSDKCallBack:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public releaseKaraokeResource(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 372
    const-string v0, "XpKaraokeService"

    const-string v1, "releaseKaraokeResource() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "ret":I
    return v0
.end method

.method public requestKaraokeResource(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isAudioStackEmpty"    # Z

    .line 366
    const-string v0, "XpKaraokeService"

    const-string v1, "requestKaraokeResource() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, "ret":I
    return v0
.end method

.method public resume()I
    .locals 10

    .line 216
    const-string v0, "XpKaraokeService"

    const-string v1, "resume()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    move v9, v1

    .line 220
    .local v9, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0xac44

    const/4 v6, 0x2

    const/16 v7, 0x140

    const/4 v8, 0x2

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->setCaptureParameter(Ljava/lang/String;IIIIII)I

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xac44

    const/4 v6, 0x2

    const/16 v7, 0x140

    const/4 v8, 0x2

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->setPlaybackParameter(Ljava/lang/String;IIIIII)I

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    const-string v2, "MediaLoopback"

    const-string v3, "=ON"

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->startPlay(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v1

    .line 226
    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpKaraokeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v9
.end method

.method public resumePlay()I
    .locals 10

    .line 232
    const-string v0, "XpKaraokeService"

    const-string v1, "resumePlay()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    move v9, v1

    .line 236
    .local v9, "ret":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0xac44

    const/4 v6, 0x2

    const/16 v7, 0x140

    const/4 v8, 0x2

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->setCaptureParameter(Ljava/lang/String;IIIIII)I

    .line 237
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xac44

    const/4 v6, 0x2

    const/16 v7, 0x140

    const/4 v8, 0x2

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->setPlaybackParameter(Ljava/lang/String;IIIIII)I

    .line 238
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    const-string v2, "MediaLoopback"

    const-string v3, "=ON"

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mXpKaraokePlayer:Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/alsaplayer/XuiAlsaPlayer;->startPlay(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v1

    .line 242
    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XpKaraokeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePlay exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v9
.end method

.method public saveRec(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "mode"    # I
    .param p2, "micPath"    # Ljava/lang/String;
    .param p3, "mixPath"    # Ljava/lang/String;

    .line 258
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRec() mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " micPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mixPath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public setBgmVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .line 419
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBgmVolume volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public setBypassFilter(IZZZ)I
    .locals 2
    .param p1, "audioSatus"    # I
    .param p2, "isKaraokeApp"    # Z
    .param p3, "isResumed"    # Z
    .param p4, "isAudioStackEmpty"    # Z

    .line 360
    const-string v0, "XpKaraokeService"

    const-string v1, "setBypassFilter() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "ret":I
    return v0
.end method

.method public setCommonData(ILjava/lang/String;)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 354
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCommonData() type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "ret":I
    return v0
.end method

.method public setEcho(I)I
    .locals 3
    .param p1, "echo"    # I

    .line 125
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEcho() echo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public setOutPutPath(ZLjava/lang/String;)V
    .locals 3
    .param p1, "inCar"    # Z
    .param p2, "productId"    # Ljava/lang/String;

    .line 344
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WMM_SetOutPutPath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public setRecMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 291
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecMode() mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public setSignedToken(Ljava/lang/String;)I
    .locals 2
    .param p1, "sToken"    # Ljava/lang/String;

    .line 90
    const-string v0, "XpKaraokeService"

    const-string v1, "setSignedToken()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public setVolume(II)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "vol"    # I

    .line 114
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolume() type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public stopSaveRec()I
    .locals 2

    .line 264
    const-string v0, "XpKaraokeService"

    const-string v1, "stopSaveRec()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public trackCreate(III)I
    .locals 9
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I
    .param p3, "bufSize"    # I

    .line 145
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackCreate() sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 150
    :cond_0
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    .line 152
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    const/16 v2, 0xc

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :goto_1
    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object v2, v1

    move v4, p1

    move v7, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    .line 156
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    .line 157
    mul-int/lit8 v1, p3, 0x4

    iput v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mTrackAvailable:I

    .line 158
    return v0
.end method

.method public trackDestroy()I
    .locals 2

    .line 184
    const-string v0, "XpKaraokeService"

    const-string v1, "trackDestroy()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 187
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    .line 189
    return v0
.end method

.method public trackGetAvail()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mTrackAvailable:I

    return v0
.end method

.method public trackGetLatency()I
    .locals 3

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "ret":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getOutputLatency(I)I

    move-result v0

    .line 165
    return v0
.end method

.method public trackGetMinBuf(II)I
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "channel"    # I

    .line 136
    const-string v0, "XpKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackGetMinBuf() sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "ret":I
    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 139
    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x2

    .line 138
    invoke-static {p1, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 140
    return v0
.end method

.method public unRegistCallback()I
    .locals 2

    .line 78
    const-string v0, "XpKaraokeService"

    const-string v1, "unRegistCallback()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public write([BII)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "size"    # I

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 171
    const-string v0, "XpKaraokeService"

    const-string v1, "accompanimentTrack==null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, -0x1

    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/XpKaraokeService;->accompanimentTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result v0

    return v0
.end method

.class public Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartRecordService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;,
        Lcom/xiaopeng/xuiservice/smart/SmartRecordService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;
    }
.end annotation


# static fields
.field private static final MIC_POWER_OFF:I = 0x6

.field private static final MIC_POWER_ON:I = 0x5

.field private static final RECORD_START:I = 0x1

.field private static final RECORD_STOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SmartRecordService"

.field private static final UDB_DONGLE_OFF:I = 0x4

.field private static final UDB_DONGLE_ON:I = 0x3

.field private static mDongleStatus:Z

.field private static mMicCallback:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;

.field private static mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

.field private static mMicStatus:Z

.field private static mRecordStatus:I


# instance fields
.field private mRecordHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mDongleStatus:Z

    .line 41
    sput-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicStatus:Z

    .line 44
    sput v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordStatus:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->resetMicRecorder()V

    .line 153
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->micRecordReceiver()V

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->getProviderRecorder()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mDongleStatus:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 30
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mDongleStatus:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 30
    sget-boolean v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicStatus:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 30
    sput-boolean p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicStatus:Z

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 30
    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordStatus:I

    return v0
.end method

.method static synthetic access$700()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->startRecord()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->stopRecord()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
    .locals 1

    .line 162
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$InstanceHolder;->access$400()Lcom/xiaopeng/xuiservice/smart/SmartRecordService;

    move-result-object v0

    return-object v0
.end method

.method private getProviderRecorder()I
    .locals 4

    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "status":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mic_record"

    .line 59
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 67
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    const-string v1, "SmartRecordService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProviderRecorder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return v0
.end method

.method private micRecordReceiver()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mic_record"

    .line 87
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;

    new-instance v3, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;Landroid/os/Handler;)V

    .line 86
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    return-void
.end method

.method private resetMicRecorder()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->handleRecorderEvent(I)V

    .line 83
    return-void
.end method

.method private setProviderRecorder(I)V
    .locals 3
    .param p1, "status"    # I

    .line 48
    const-string v0, "SmartRecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProviderRecorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mic_record"

    .line 49
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    return-void
.end method

.method private declared-synchronized startRecord()V
    .locals 9

    monitor-enter p0

    .line 184
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_resume()I

    .line 187
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    const/4 v1, 0x2

    const v2, 0xbb80

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_recGetMinBuf(II)I

    move-result v0

    .line 188
    .local v0, "recSize":I
    sget-object v3, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v3, v2, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_trackGetMinBuf(II)I

    move-result v3

    .line 189
    .local v3, "trackSize":I
    new-array v4, v0, [B

    .line 190
    .local v4, "recData":[B
    new-array v5, v3, [B

    .line 191
    .local v5, "trackData":[B
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 193
    const-string v6, "SmartRecordService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startRecord, recSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", trackSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v6, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v6, v2, v1, v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_recCreate(III)I

    .line 196
    sget-object v6, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v6, v2, v1, v3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_trackCreate(III)I

    .line 197
    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_resumePlay()I

    .line 199
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$2;

    invoke-direct {v2, p0, v5}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;[B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 215
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 217
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$3;

    invoke-direct {v2, p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;[B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 233
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v0    # "recSize":I
    .end local v3    # "trackSize":I
    .end local v4    # "recData":[B
    .end local v5    # "trackData":[B
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
    throw v0
.end method

.method private declared-synchronized stopRecord()V
    .locals 2

    monitor-enter p0

    .line 240
    :try_start_0
    const-string v0, "SmartRecordService"

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :try_start_1
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_pausePlay()I

    .line 245
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_pause()I

    .line 246
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_recDestroy()I

    .line 247
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_trackDestroy()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartRecordService;
    throw v0
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "SmartRecordService"

    return-object v0
.end method

.method public handleRecorderEvent(I)V
    .locals 3
    .param p1, "status"    # I

    .line 72
    const-string v0, "SmartRecordService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRecorderEvent status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRecordStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    if-eqz v0, :cond_0

    sget v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordStatus:I

    if-eq v0, p1, :cond_0

    .line 74
    sput p1, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordStatus:I

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 76
    .local v0, "message":Landroid/os/Message;
    sget v1, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordStatus:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected initXUIManager()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 130
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->initXUIManager()V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "SmartRecordService"

    const-string v1, "initXUIManager failed, xuimanager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartRecordService;Lcom/xiaopeng/xuiservice/smart/SmartRecordService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicCallback:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;

    .line 139
    :try_start_0
    const-string v0, "SmartRecordService"

    const-string v1, "init micManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->getXuiManager()Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object v0

    const-string v1, "karaoke"

    .line 142
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    .line 143
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    const-string v1, "recorder"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_init(Ljava/lang/String;)I

    .line 144
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicManager:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mMicCallback:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$MicServiceCallBack;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_registerCallback(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->handleException(Ljava/lang/Exception;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method protected onInit()V
    .locals 2

    .line 172
    const-string v0, "SmartRecordService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->start()V

    .line 174
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 178
    const-string v0, "SmartRecordService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartRecordService;->mRecordHandlerThread:Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartRecordService$RecordHandlerThread;->quit()Z

    .line 180
    return-void
.end method

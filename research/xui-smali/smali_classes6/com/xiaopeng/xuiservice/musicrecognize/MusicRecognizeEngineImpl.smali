.class public Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;
.super Ljava/lang/Object;
.source "MusicRecognizeEngineImpl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$InstanceHolder;
    }
.end annotation


# static fields
.field private static final AUTO_CANCEL_DELAY:I = 0x32c8

.field public static final DBG:Z = true

.field private static final PRE_RECORD_MILLS:I = 0xbb8

.field private static final RECORD_PID:Ljava/lang/String; = "pid"

.field private static final RECORD_STATE:Ljava/lang/String; = "state"

.field private static final RECORD_STATE_START:I = 0x1

.field private static final RECORD_STATE_STOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicRecognizeEngineImpl"


# instance fields
.field private mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

.field private mAcrCloudClient:Lcom/acrcloud/rec/ACRCloudClient;

.field private mAutoCancelRunnable:Ljava/lang/Runnable;

.field private mCallback:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;

.field private mMinScore:F

.field private mMode:I

.field private mNeedCallbackFail:Z

.field private mStopAndRecognize:Z

.field private path:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->path:Ljava/lang/String;

    .line 39
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mMinScore:F

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mNeedCallbackFail:Z

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mStopAndRecognize:Z

    .line 44
    new-instance v1, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mAutoCancelRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v1, Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-direct {v1}, Lcom/acrcloud/rec/ACRCloudConfig;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iput-object p1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->context:Landroid/content/Context;

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    const-string v2, "identify-cn-north-1.acrcloud.com"

    iput-object v2, v1, Lcom/acrcloud/rec/ACRCloudConfig;->host:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/acrcloud"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->path:Ljava/lang/String;

    .line 83
    const-string v1, "MusicRecognizeEngineImpl"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_0
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->setMode(I)V

    .line 92
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    const/16 v3, 0x1f40

    iput v3, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    .line 93
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iput v0, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    .line 94
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    sget-object v3, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->HTTPS:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    iput-object v3, v2, Lcom/acrcloud/rec/ACRCloudConfig;->protocol:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    .line 99
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iput-boolean v0, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->isVolumeCallback:Z

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    new-instance v2, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$2;-><init>(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)V

    iput-object v2, v0, Lcom/acrcloud/rec/ACRCloudConfig;->acrcloudListener:Lcom/acrcloud/rec/IACRCloudListener;

    .line 183
    new-instance v0, Lcom/acrcloud/rec/ACRCloudClient;

    invoke-direct {v0}, Lcom/acrcloud/rec/ACRCloudClient;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mAcrCloudClient:Lcom/acrcloud/rec/ACRCloudClient;

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mAcrCloudClient:Lcom/acrcloud/rec/ACRCloudClient;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mACRCloudConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-virtual {v0, v2}, Lcom/acrcloud/rec/ACRCloudClient;->initWithConfig(Lcom/acrcloud/rec/ACRCloudConfig;)Z

    .line 187
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$1;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mNeedCallbackFail:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mNeedCallbackFail:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mCallback:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;F)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;
    .param p1, "x1"    # F

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->scoreFilter(F)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;
    .locals 1

    .line 57
    invoke-static {}, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl$InstanceHolder;->access$200()Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;

    move-result-object v0

    return-object v0
.end method

.method private scoreFilter(F)Z
    .locals 1
    .param p1, "score"    # F

    .line 212
    iget v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mMinScore:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getMinScore()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mMinScore:F

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mMode:I

    return v0
.end method

.method public setCallback(Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mCallback:Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngine$Callback;

    .line 257
    return-void
.end method

.method public setMinScore(F)V
    .locals 0
    .param p1, "minScore"    # F

    .line 67
    iput p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mMinScore:F

    .line 68
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 191
    packed-switch p1, :pswitch_data_0

    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mode, mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :pswitch_0
    goto :goto_0

    .line 199
    :pswitch_1
    nop

    .line 203
    :goto_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mMode:I

    .line 204
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 3

    .line 218
    const-string v0, "MusicRecognizeEngineImpl"

    const-string v1, "start!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.media.RECORDING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 226
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mAcrCloudClient:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-virtual {v1}, Lcom/acrcloud/rec/ACRCloudClient;->startRecognize()Z

    .line 231
    return-void
.end method

.method public stop()V
    .locals 3

    .line 236
    const-string v0, "MusicRecognizeEngineImpl"

    const-string v1, "stop!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.media.RECORDING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mAcrCloudClient:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-virtual {v1}, Lcom/acrcloud/rec/ACRCloudClient;->stopRecordToRecognize()V

    .line 247
    return-void
.end method

.method public stopAndRecognize()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/musicrecognize/MusicRecognizeEngineImpl;->mAcrCloudClient:Lcom/acrcloud/rec/ACRCloudClient;

    invoke-virtual {v0}, Lcom/acrcloud/rec/ACRCloudClient;->stopRecordToRecognize()V

    .line 252
    return-void
.end method

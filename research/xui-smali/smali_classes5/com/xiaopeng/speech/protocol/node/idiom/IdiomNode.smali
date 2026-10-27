.class public Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "IdiomNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/idiom/IIdiomListener;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBinder:Landroid/os/Binder;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsNeedResetSoundLock:Z

.field private mTTSBinder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 16
    const-string v0, "IdiomNode"

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mBinder:Landroid/os/Binder;

    .line 18
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mTTSBinder:Landroid/os/Binder;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mHandler:Landroid/os/Handler;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mIsNeedResetSoundLock:Z

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;)Landroid/os/Binder;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;
    .param p1, "x1"    # Z

    .line 15
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mIsNeedResetSoundLock:Z

    return p1
.end method


# virtual methods
.method public cancelListening()V
    .locals 1

    .line 91
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getASREngine()Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->cancelListen()V

    .line 92
    return-void
.end method

.method public disableWakeup()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode$1;-><init>(Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    return-void
.end method

.method public enableWakeup()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable wake up. Need reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mIsNeedResetSoundLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupEnhance(Landroid/os/IBinder;)V

    .line 120
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mBinder:Landroid/os/Binder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->setWheelWakeupEnabled(Landroid/os/IBinder;Z)V

    .line 122
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mIsNeedResetSoundLock:Z

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mIsNeedResetSoundLock:Z

    .line 124
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getSoundLockState()Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/SoundLockStateProxy;->initSoundConfig()V

    .line 126
    :cond_0
    return-void
.end method

.method public resetVadTime()V
    .locals 3

    .line 48
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getASREngine()Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->setVadPauseTime(J)V

    .line 49
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getASREngine()Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    move-result-object v0

    const-wide/16 v1, 0x1b58

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->setVadTimeout(J)V

    .line 50
    return-void
.end method

.method public setSingleTTS(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 58
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/idiom/IdiomNode;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->setSingleTTS(ZLandroid/os/IBinder;)V

    .line 59
    return-void
.end method

.method public setVadPauseTime(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .line 41
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getASREngine()Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->setVadPauseTime(J)V

    .line 42
    return-void
.end method

.method public setVadTimeout(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .line 32
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getASREngine()Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->setVadTimeout(J)V

    .line 33
    return-void
.end method

.method public shutupTTS(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->shutup(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public speakSingleTTS(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getTTSEngine()Lcom/xiaopeng/speech/proxy/TTSEngineProxy;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/speech/proxy/TTSEngineProxy;->speak(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startListening()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getASREngine()Lcom/xiaopeng/speech/proxy/ASREngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/ASREngineProxy;->startListen()V

    .line 85
    return-void
.end method

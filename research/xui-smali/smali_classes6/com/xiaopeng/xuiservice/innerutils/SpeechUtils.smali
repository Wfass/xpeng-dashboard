.class public Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;
.super Ljava/lang/Object;
.source "SpeechUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils$InstanceHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SpeechUtils"

.field private static isSpeechClientDisabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mWakeBinder:Landroid/os/Binder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->isSpeechClientDisabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->mWakeBinder:Landroid/os/Binder;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;
    .locals 1

    .line 71
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils$InstanceHolder;->access$000()Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disableSpeechByKaraoke()V
    .locals 8

    .line 35
    sget-boolean v0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->isSpeechClientDisabled:Z

    if-nez v0, :cond_0

    .line 36
    const-string/jumbo v0, "{\"info\":\"\u5531\u6b4c\u4e2d\uff0c\u6682\u4e0d\u652f\u6301\u8bed\u97f3\u5bf9\u8bdd\",\"toast\":\"K\u6b4c\u4e2d\uff0c\u8bed\u97f3\u4e0d\u53ef\u7528\"}"

    .line 37
    .local v0, "SpeechClientDisableStr":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 38
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->mWakeBinder:Landroid/os/Binder;

    const/4 v4, 0x1

    const-string v5, "K\u6b4c\u5e94\u7528"

    const-string/jumbo v6, "{\"info\":\"\u5531\u6b4c\u4e2d\uff0c\u6682\u4e0d\u652f\u6301\u8bed\u97f3\u5bf9\u8bdd\",\"toast\":\"K\u6b4c\u4e2d\uff0c\u8bed\u97f3\u4e0d\u53ef\u7528\"}"

    const/4 v7, 0x3

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 39
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->isSpeechClientDisabled:Z

    .line 41
    .end local v0    # "SpeechClientDisableStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public enableSpeechByKaraoke()V
    .locals 5

    .line 30
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->mWakeBinder:Landroid/os/Binder;

    const-string v2, "K\u6b4c\u5e94\u7528"

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->isSpeechClientDisabled:Z

    .line 32
    return-void
.end method

.method public handleASR(Ljava/lang/String;)V
    .locals 3
    .param p1, "asr_content"    # Ljava/lang/String;

    .line 56
    const-string v0, "SpeechUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleASR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "\u6211\u8981\u64ad\u706f\u821e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->startLightDancing(I)I

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->stopSpeech()V

    goto :goto_0

    .line 61
    :cond_0
    const-string/jumbo v0, "\u505c\u6b62\u706f\u821e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->stopLightDancing()I

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->stopSpeech()V

    goto :goto_0

    .line 64
    :cond_1
    const-string/jumbo v0, "\u6211\u8981\u5531\u8fd9\u9996\u6b4c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/karaoke/KaraokeManager;->startKaraokeCurrentMedia(I)I

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/innerutils/SpeechUtils;->stopSpeech()V

    .line 68
    :cond_2
    :goto_0
    return-void
.end method

.method public stopSpeech()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    .line 53
    return-void
.end method

.method public wakeupSpeech(Ljava/lang/String;)V
    .locals 1
    .param p1, "strFrom"    # Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->startDialogFrom(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public wakeupSpeechByKaraoke()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    const-string v1, "changba"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->startDialogFrom(Ljava/lang/String;)V

    .line 49
    return-void
.end method

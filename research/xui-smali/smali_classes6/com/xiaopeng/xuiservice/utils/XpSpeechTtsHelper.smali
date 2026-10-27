.class public Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;
.super Ljava/lang/Object;
.source "XpSpeechTtsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final KEY_PARAM_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_PARAM_STREAM:Ljava/lang/String; = "streamType"

.field public static final KEY_PARAM_TTS_MODE:Ljava/lang/String; = "ttsMode"

.field private static final TAG:Ljava/lang/String; = "XpSpeechTtsHelper"

.field private static final TTS_ENGINE_MS:Ljava/lang/String; = "com.xiaopeng.xpspeechservice.ms"

.field public static final TTS_EVENT_DONE:I = 0x1

.field public static final TTS_EVENT_ERROR:I = 0x2

.field public static final TTS_EVENT_START:I = 0x0

.field public static final TTS_EVENT_STOP:I = 0x3

.field private static final UUID_PREFIX:Ljava/lang/String; = "xuiservice"

.field private static mStatus:I

.field private static sHelper:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;


# instance fields
.field private mListener:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTtsEngines:Landroid/speech/tts/TtsEngines;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mStatus:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mListener:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    .line 35
    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 15
    sput p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mStatus:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mListener:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    return-object v0
.end method

.method public static instance()Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;
    .locals 2

    .line 38
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->sHelper:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->sHelper:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->sHelper:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->sHelper:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;

    return-object v0
.end method

.method private speak(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "isShutUp"    # Z

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xuiservice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "id":Ljava/lang/String;
    const-string v1, "XpSpeechTtsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speak start text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", priority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ttsId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mStatus:I

    if-nez v1, :cond_2

    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "priority"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const/4 v3, 0x4

    if-ne p2, v3, :cond_0

    .line 72
    const-string v3, "streamType"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 74
    :cond_0
    const-string v3, "streamType"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    :goto_0
    xor-int/lit8 v3, p3, 0x1

    .line 77
    .local v3, "queue":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, p1, v3, v1, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    .line 78
    .local v4, "res":I
    if-nez v4, :cond_1

    move-object v2, v0

    nop

    :cond_1
    return-object v2

    .line 80
    .end local v1    # "params":Landroid/os/Bundle;
    .end local v3    # "queue":I
    .end local v4    # "res":I
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getInitStatus()Z
    .locals 1

    .line 157
    sget v0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 161
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$1;-><init>(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 207
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-direct {v0, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    .line 208
    return-void
.end method

.method public notifyTtsEngineReady()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "XpSpeechTtsHelper"

    const-string v1, "notifyTtsEngineReady"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    const-string v1, "com.xiaopeng.xpspeechservice.ms"

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->setDefaultEngine(Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;

    monitor-enter p0

    .line 151
    if-eqz p1, :cond_0

    .line 152
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mListener:Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 150
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;
    throw p1

    .line 154
    .restart local p0    # "this":Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;
    .restart local p1    # "listener":Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper$SpeechTtsEventListener;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public release()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "XpSpeechTtsHelper"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 241
    :cond_0
    return-void
.end method

.method public shutup()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "XpSpeechTtsHelper"

    const-string v1, "shutup"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 218
    :cond_0
    return-void
.end method

.method public speak(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->speak(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "ttsId":Ljava/lang/String;
    const-string v1, "XpSpeechTtsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speak completed text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ttsId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object v0

    .line 98
    .end local v0    # "ttsId":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public speakByImportant(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 109
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->speak(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "ttsId":Ljava/lang/String;
    const-string v1, "XpSpeechTtsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakByImportant completed text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ttsId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public speakByInstant(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 139
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->speak(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "ttsId":Ljava/lang/String;
    const-string v1, "XpSpeechTtsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakByInstant completed text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",callback:,ttsId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isShutUp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method public speakByUrgent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShutUp"    # Z

    .line 124
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->speak(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "ttsId":Ljava/lang/String;
    const-string v1, "XpSpeechTtsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speakByUrgent completed text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",callback:,ttsId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isShutUp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public stop(Ljava/lang/String;)V
    .locals 3
    .param p1, "ttsId"    # Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "XpSpeechTtsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/XpSpeechTtsHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->stop(Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void
.end method

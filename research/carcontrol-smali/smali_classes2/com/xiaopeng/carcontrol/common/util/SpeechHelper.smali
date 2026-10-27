.class public Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;
.super Ljava/lang/Object;
.source "SpeechHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;,
        Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$SingletonHolder;
    }
.end annotation


# static fields
.field private static final REPLACE_STR:Ljava/lang/String; = "X-PILOT"

.field private static final SOURCE_STR:Ljava/lang/String; = "(?i)xpilot"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTtsPlayListener:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;

.field private final mTtsPlayListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SpeechHelper"

    .line 14
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTtsPlayListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 97
    new-instance v0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$1;-><init>(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 109
    new-instance v0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$2;-><init>(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTtsPlayListener:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTtsPlayListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$SingletonHolder;->sInstance:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    return-object v0
.end method


# virtual methods
.method public addTtsPlayListener(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttsPlayListener"
        }
    .end annotation

    const-string v0, "SpeechHelper"

    const-string v1, "addTtsPlayListener"

    .line 139
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTtsPlayListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initSpeechService()V
    .locals 3

    .line 38
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public release()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    return-void
.end method

.method public removeTtsPlayListener(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttsPlayListener"
        }
    .end annotation

    const-string v0, "SpeechHelper"

    const-string v1, "removeTtsPlayListener"

    .line 144
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTtsPlayListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTtsPlayListener(Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttsPlayListener"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTtsPlayListener:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;

    return-void
.end method

.method public speak(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public speak(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "flush"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public speak(Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "flush",
            "bundle"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "(?i)xpilot"

    const-string v0, "X-PILOT"

    .line 66
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3, p2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method

.method public stop()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTtsPlayListener:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;

    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "utteranceId"
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->stop()I

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->mTtsPlayListener:Lcom/xiaopeng/carcontrol/common/util/SpeechHelper$TtsPlayListener;

    return-void
.end method

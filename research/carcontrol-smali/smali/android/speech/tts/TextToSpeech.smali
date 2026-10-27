.class public Landroid/speech/tts/TextToSpeech;
.super Ljava/lang/Object;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/TextToSpeech$CallbackHandler;,
        Landroid/speech/tts/TextToSpeech$EngineInfo;,
        Landroid/speech/tts/TextToSpeech$Action;,
        Landroid/speech/tts/TextToSpeech$SystemConnection;,
        Landroid/speech/tts/TextToSpeech$DirectConnection;,
        Landroid/speech/tts/TextToSpeech$Connection;,
        Landroid/speech/tts/TextToSpeech$Engine;,
        Landroid/speech/tts/TextToSpeech$TtsStateListener;,
        Landroid/speech/tts/TextToSpeech$OnStateChangedListener;,
        Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;,
        Landroid/speech/tts/TextToSpeech$OnInitListenerExt;,
        Landroid/speech/tts/TextToSpeech$OnInitListener;,
        Landroid/speech/tts/TextToSpeech$Error;
    }
.end annotation


# static fields
.field public static final ACTION_TTS_QUEUE_PROCESSING_COMPLETED:Ljava/lang/String; = "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

.field public static final AUDIO_FOCUS_AUTO:I = 0x1

.field public static final AUDIO_FOCUS_DISABLE:I = 0x0

.field private static final DEBUG:Z = true

.field public static final ERROR:I = -0x1

.field public static final ERROR_DELAY_TIMEOUT:I = -0xb

.field public static final ERROR_INVALID_REQUEST:I = -0x8

.field public static final ERROR_NETWORK:I = -0x6

.field public static final ERROR_NETWORK_TIMEOUT:I = -0x7

.field public static final ERROR_NOT_INSTALLED_YET:I = -0x9

.field public static final ERROR_OUTPUT:I = -0x5

.field public static final ERROR_REJECT_BY_SOLO_MODE:I = -0xa

.field public static final ERROR_SERVICE:I = -0x4

.field public static final ERROR_SYNTHESIS:I = -0x3

.field public static final LANG_AVAILABLE:I = 0x0

.field public static final LANG_COUNTRY_AVAILABLE:I = 0x1

.field public static final LANG_COUNTRY_VAR_AVAILABLE:I = 0x2

.field public static final LANG_MISSING_DATA:I = -0x1

.field public static final LANG_NOT_SUPPORTED:I = -0x2

.field private static final MSG_ON_AUDIO_AVAILABLE:I = 0x5

.field private static final MSG_ON_BEGIN_SYNTHESIS:I = 0x4

.field private static final MSG_ON_ERROR:I = 0x2

.field private static final MSG_ON_RANGE_START:I = 0x6

.field private static final MSG_ON_START:I = 0x3

.field private static final MSG_ON_STATE_CHANGED:I = 0x7

.field private static final MSG_ON_STOP:I = 0x0

.field private static final MSG_ON_SUCCESS:I = 0x1

.field public static final PRIORITY_DEFAULT:I = 0x1

.field public static final PRIORITY_IMPORTANT:I = 0x2

.field public static final PRIORITY_INSTANT:I = 0x4

.field public static final PRIORITY_MAX:I = 0x4

.field public static final PRIORITY_MIN:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final PRIORITY_URGENT:I = 0x3

.field public static final QUEUE_ADD:I = 0x1

.field static final QUEUE_DESTROY:I = 0x2

.field public static final QUEUE_FLUSH:I = 0x0

.field public static final STOPPED:I = -0x2

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TextToSpeech"

.field public static final TTS_CHANNEL_BLUETOOTH:I = 0x2

.field public static final TTS_CHANNEL_HEADREST:I = 0x1

.field public static final TTS_CHANNEL_MAIN:I = 0x0

.field public static final TTS_CHANNEL_OUTSPK:I = 0x3

.field public static final TTS_STATE_ERROR:I = -0x1

.field public static final TTS_STATE_START:I = 0x1

.field public static final TTS_STATE_STOP:I


# instance fields
.field private mCallbackHandler:Landroid/speech/tts/TextToSpeech$CallbackHandler;

.field private mCallbackThread:Landroid/os/HandlerThread;

.field private mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentEngine:Ljava/lang/String;

.field private final mEarcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitExecutor:Ljava/util/concurrent/Executor;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private volatile mIsDataListener:Z

.field private final mIsSystem:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private mRequestedEngine:Ljava/lang/String;

.field private mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

.field private final mStartLock:Ljava/lang/Object;

.field private volatile mStateChangedListener:Landroid/speech/tts/TextToSpeech$OnStateChangedListener;

.field private volatile mTtsStateListener:Landroid/speech/tts/TextToSpeech$TtsStateListener;

.field private final mUseFallback:Z

.field private volatile mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private final mUtterances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 833
    invoke-direct {p0, p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 849
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 860
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    .line 786
    iput-object p5, p0, Landroid/speech/tts/TextToSpeech;->mStateChangedListener:Landroid/speech/tts/TextToSpeech$OnStateChangedListener;

    .line 787
    iput-object p5, p0, Landroid/speech/tts/TextToSpeech;->mTtsStateListener:Landroid/speech/tts/TextToSpeech$TtsStateListener;

    const/4 v0, 0x0

    .line 788
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mIsDataListener:Z

    .line 789
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    .line 799
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    .line 804
    iput-object p5, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 872
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    .line 873
    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mInitExecutor:Ljava/util/concurrent/Executor;

    .line 874
    iput-object p3, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 875
    iput-object p4, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 876
    iput-boolean p6, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    .line 878
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    .line 879
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    .line 880
    iput-object p5, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    .line 882
    new-instance p2, Landroid/os/HandlerThread;

    const-string/jumbo p3, "ttsHandler"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mCallbackThread:Landroid/os/HandlerThread;

    .line 883
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 884
    new-instance p2, Landroid/speech/tts/TextToSpeech$CallbackHandler;

    iget-object p3, p0, Landroid/speech/tts/TextToSpeech;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Landroid/speech/tts/TextToSpeech$CallbackHandler;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mCallbackHandler:Landroid/speech/tts/TextToSpeech$CallbackHandler;

    .line 886
    new-instance p2, Landroid/speech/tts/TtsEngines;

    invoke-direct {p2, p1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 888
    iput-boolean p7, p0, Landroid/speech/tts/TextToSpeech;->mIsSystem:Z

    .line 890
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    .line 892
    monitor-enter v0

    .line 893
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    .line 894
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;
    .locals 0

    .line 87
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Landroid/speech/tts/TextToSpeech;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    return-void
.end method

.method static synthetic access$1402(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0

    .line 87
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p0
.end method

.method static synthetic access$1502(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection;
    .locals 0

    .line 87
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/speech/tts/TextToSpeech;)I
    .locals 0

    .line 87
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Landroid/speech/tts/TextToSpeech;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$CallbackHandler;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mCallbackHandler:Landroid/speech/tts/TextToSpeech$CallbackHandler;

    return-object p0
.end method

.method static synthetic access$2100(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p0
.end method

.method static synthetic access$300(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$OnStateChangedListener;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mStateChangedListener:Landroid/speech/tts/TextToSpeech$OnStateChangedListener;

    return-object p0
.end method

.method static synthetic access$700(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech$TtsStateListener;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mTtsStateListener:Landroid/speech/tts/TextToSpeech$TtsStateListener;

    return-object p0
.end method

.method static synthetic access$800(Landroid/speech/tts/TextToSpeech;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Landroid/speech/tts/TextToSpeech;->mIsDataListener:Z

    return p0
.end method

.method static synthetic access$900(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;
    .locals 0

    .line 87
    iget-object p0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object p0
.end method

.method private connectToEngine(Ljava/lang/String;)Z
    .locals 4

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectToEngine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v0, Landroid/speech/tts/TextToSpeech$DirectConnection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/speech/tts/TextToSpeech$DirectConnection;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$1;)V

    .line 979
    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech$Connection;->connect(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 984
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sucessfully bound to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 p1, 0x1

    return p1
.end method

.method private convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2089
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2090
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "streamType"

    .line 2091
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    const-string/jumbo v1, "sessionId"

    .line 2092
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    const-string/jumbo v1, "utteranceId"

    .line 2093
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    const-string/jumbo v1, "volume"

    .line 2094
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "pan"

    .line 2095
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "networkTts"

    .line 2098
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "embeddedTts"

    .line 2099
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "networkTimeoutMs"

    .line 2100
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    const-string v1, "networkRetriesCount"

    .line 2101
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2106
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2107
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2109
    iget-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private copyFloatParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2215
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2216
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2218
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 2219
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private copyIntParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2203
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2204
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2206
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2207
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private copyStringParam(Landroid/os/Bundle;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2196
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2198
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dispatchOnInit(I)V
    .locals 1

    .line 991
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$8FnoH4MX7-vILphbHBz-eQ_3ij4;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/-$$Lambda$TextToSpeech$8FnoH4MX7-vILphbHBz-eQ_3ij4;-><init>(Landroid/speech/tts/TextToSpeech;I)V

    .line 1000
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech;->mInitExecutor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_0

    .line 1001
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1003
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    .line 1008
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getMaxSpeechInputLength()I
    .locals 1

    const/16 v0, 0xfa0

    return v0
.end method

.method private getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-eqz p1, :cond_0

    .line 2121
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2122
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2123
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string/jumbo p1, "streamType"

    .line 2125
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    const-string/jumbo p1, "sessionId"

    .line 2126
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    const-string/jumbo p1, "utteranceId"

    .line 2127
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    const-string/jumbo p1, "volume"

    .line 2128
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    const-string p1, "pan"

    .line 2129
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    const-string p1, "networkTts"

    .line 2132
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    const-string p1, "embeddedTts"

    .line 2133
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    const-string p1, "networkTimeoutMs"

    .line 2134
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    const-string p1, "networkRetriesCount"

    .line 2135
    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech;->verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z

    return-object v0

    .line 2139
    :cond_0
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    return-object p1
.end method

.method private getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1894
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "TextToSpeech"

    if-nez p1, :cond_0

    const-string p1, "getVoices returned null"

    .line 1896
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1899
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/Voice;

    .line 1900
    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    .line 1904
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find voice "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " in voice list"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private initTts()I
    .locals 6

    const-string v0, "TextToSpeech"

    const-string v1, "initTts"

    .line 919
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    .line 922
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v5, v1}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return v2

    .line 926
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v0, :cond_2

    .line 927
    iput-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 928
    invoke-direct {p0, v4}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    return v4

    .line 931
    :cond_1
    iget-boolean v1, p0, Landroid/speech/tts/TextToSpeech;->mUseFallback:Z

    if-nez v1, :cond_2

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested engine not installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iput-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 934
    invoke-direct {p0, v4}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    return v4

    .line 940
    :cond_2
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 941
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 942
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 943
    iput-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return v2

    .line 950
    :cond_3
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Landroid/speech/tts/TtsEngines;->getHighestRankedEngineName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 951
    iget-object v5, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 952
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 953
    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeech;->connectToEngine(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 954
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return v2

    .line 963
    :cond_4
    iput-object v3, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    .line 964
    invoke-direct {p0, v4}, Landroid/speech/tts/TextToSpeech;->dispatchOnInit(I)V

    return v4
.end method

.method static synthetic lambda$getAvailableLanguages$13(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1796
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1798
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 1800
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1801
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/Voice;

    .line 1802
    invoke-virtual {v1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic lambda$getDefaultLanguage$10(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1653
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object p0

    .line 1655
    new-instance v0, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getDefaultVoice$17(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1916
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1918
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1922
    aget-object v2, v0, v2

    .line 1923
    array-length v3, v0

    const-string v4, ""

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    aget-object v3, v0, v5

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 1924
    :goto_0
    array-length v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_2

    aget-object v4, v0, v6

    .line 1927
    :cond_2
    invoke-interface {p0, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    return-object v1

    .line 1934
    :cond_3
    invoke-interface {p0, v2, v3, v4}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1935
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 1940
    :cond_4
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    .line 1944
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/Voice;

    .line 1945
    invoke-virtual {v2}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-object v2

    :cond_7
    return-object v1

    :cond_8
    :goto_1
    const-string p0, "TextToSpeech"

    const-string/jumbo v0, "service.getClientDefaultLanguage() returned empty array"

    .line 1919
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method static synthetic lambda$getFeatures$5(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1497
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 1496
    invoke-interface {p1, v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService;->getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 1505
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 1506
    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 1499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t retrieve 3 letter ISO 639-2/T language and/or ISO 3166 country code for locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TextToSpeech"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method static synthetic lambda$getVoices$14(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1819
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object p0

    .line 1820
    new-instance v0, Ljava/util/HashSet;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$isLanguageAvailable$18(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TextToSpeech"

    const/4 v1, -0x2

    .line 1969
    :try_start_0
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1976
    :try_start_1
    invoke-virtual {p0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1982
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, v0, p0}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 1978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1979
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p1

    .line 1971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1972
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isSpeaking$6(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1523
    invoke-interface {p0}, Landroid/speech/tts/ITextToSpeechService;->isSpeaking()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$isSpeaking$7(ILandroid/speech/tts/ITextToSpeechService;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1530
    invoke-interface {p1, p0}, Landroid/speech/tts/ITextToSpeechService;->isSpeakingByChannel(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2

    .line 1258
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    .line 1259
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1260
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1261
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1262
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 903
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    if-nez v1, :cond_0

    const-string p1, "TextToSpeech"

    .line 910
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " failed: not bound to TTS engine"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    monitor-exit v0

    return-object p2

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 913
    invoke-virtual/range {v1 .. v6}, Landroid/speech/tts/TextToSpeech$Connection;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 915
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/speech/tts/TextToSpeech$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 899
    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static verifyBooleanBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    .line 2169
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2170
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2171
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2172
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Synthesis request paramter "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " containst value  with invalid type. Should be a Boolean or String"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextToSpeech"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static verifyFloatBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    .line 2183
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 2185
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 2186
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Synthesis request paramter "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " containst value  with invalid type. Should be a Float or a Double"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextToSpeech"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static verifyIntegerBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    .line 2144
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2145
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2146
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 2147
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Synthesis request paramter "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " containst value  with invalid type. Should be an Integer or a Long"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextToSpeech"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static verifyStringBundleParam(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    .line 2157
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2159
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Synthesis request paramter "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " containst value  with invalid type. Should be a String"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextToSpeech"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2

    .line 1251
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1252
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1253
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1254
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addEarcon(Ljava/lang/String;Ljava/io/File;)I
    .locals 0

    .line 1233
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1215
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public addEarcon(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1192
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I
    .locals 2

    .line 1160
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1161
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1162
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addSpeech(Ljava/lang/CharSequence;Ljava/io/File;)I
    .locals 0

    .line 1142
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public addSpeech(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 0

    .line 1106
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1124
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1075
    invoke-direct {p0, p2, p3}, Landroid/speech/tts/TextToSpeech;->makeResourceUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/speech/tts/TextToSpeech;->addSpeech(Ljava/lang/CharSequence;Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public areDefaultsEnforced()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getAvailableLanguages()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 1795
    sget-object v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$gxZIP5bgy90_Gg4dWgnNrUAVrKg;->INSTANCE:Landroid/speech/tts/-$$Lambda$TextToSpeech$gxZIP5bgy90_Gg4dWgnNrUAVrKg;

    const/4 v1, 0x0

    const-string v2, "getAvailableLanguages"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getCurrentEngine()Ljava/lang/String;
    .locals 1

    .line 1635
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .locals 1

    .line 2321
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLanguage()Ljava/util/Locale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1652
    sget-object v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$HrLgiLg-2yoQiYXRJM6HP0WyiJ4;->INSTANCE:Landroid/speech/tts/-$$Lambda$TextToSpeech$HrLgiLg-2yoQiYXRJM6HP0WyiJ4;

    const/4 v1, 0x0

    const-string v2, "getDefaultLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getDefaultVoice()Landroid/speech/tts/Voice;
    .locals 3

    .line 1914
    sget-object v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$Jyn6cffP3CqqpZ25YNYGgJo8t1k;->INSTANCE:Landroid/speech/tts/-$$Lambda$TextToSpeech$Jyn6cffP3CqqpZ25YNYGgJo8t1k;

    const/4 v1, 0x0

    const-string v2, "getDefaultVoice"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public getEngines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/TextToSpeech$EngineInfo;",
            ">;"
        }
    .end annotation

    .line 2345
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures(Ljava/util/Locale;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1493
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$vl5fIhX3BvOeFw7E1AXNUAuorwo;

    invoke-direct {v0, p1}, Landroid/speech/tts/-$$Lambda$TextToSpeech$vl5fIhX3BvOeFw7E1AXNUAuorwo;-><init>(Ljava/util/Locale;)V

    const/4 p1, 0x0

    const-string v1, "getFeatures"

    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public getLanguage()Ljava/util/Locale;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1781
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$dEAbinfvZ86WDL9DcYFh0hkpD4U;

    invoke-direct {v0, p0}, Landroid/speech/tts/-$$Lambda$TextToSpeech$dEAbinfvZ86WDL9DcYFh0hkpD4U;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getLanguage"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    return-object v0
.end method

.method public getVoice()Landroid/speech/tts/Voice;
    .locals 3

    .line 1876
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$GNGR-VFN_gLrKRB7g-am63WfjGc;

    invoke-direct {v0, p0}, Landroid/speech/tts/-$$Lambda$TextToSpeech$GNGR-VFN_gLrKRB7g-am63WfjGc;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v1, 0x0

    const-string v2, "getVoice"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/Voice;

    return-object v0
.end method

.method public getVoices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .line 1818
    sget-object v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$YbhcQcyCzBGlYL6ltVjAhvG2wwQ;->INSTANCE:Landroid/speech/tts/-$$Lambda$TextToSpeech$YbhcQcyCzBGlYL6ltVjAhvG2wwQ;

    const/4 v1, 0x0

    const-string v2, "getVoices"

    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 2

    .line 1965
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$5Eegb1AHJD7aXYZpvneuXQZJ_Mo;

    invoke-direct {v0, p1}, Landroid/speech/tts/-$$Lambda$TextToSpeech$5Eegb1AHJD7aXYZpvneuXQZJ_Mo;-><init>(Ljava/util/Locale;)V

    const/4 p1, -0x2

    .line 1983
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "isLanguageAvailable"

    .line 1965
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isSpeaking()Z
    .locals 3

    .line 1522
    sget-object v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$5CtpXbWT158KRMFxs8Z3i1zFm2E;->INSTANCE:Landroid/speech/tts/-$$Lambda$TextToSpeech$5CtpXbWT158KRMFxs8Z3i1zFm2E;

    const/4 v1, 0x0

    .line 1524
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSpeaking"

    .line 1522
    invoke-direct {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSpeaking(I)Z
    .locals 2

    .line 1529
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$nNlerBCyXAFU7P_7dx4UDVU5koM;

    invoke-direct {v0, p1}, Landroid/speech/tts/-$$Lambda$TextToSpeech$nNlerBCyXAFU7P_7dx4UDVU5koM;-><init>(I)V

    const/4 p1, 0x0

    .line 1531
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isSpeakingByChannel"

    .line 1529
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$dispatchOnInit$0$TextToSpeech(I)V
    .locals 2

    .line 992
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 993
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v1, :cond_0

    .line 994
    invoke-interface {v1, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    const/4 p1, 0x0

    .line 995
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 997
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic lambda$getLanguage$12$TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/util/Locale;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1784
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v0, "language"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1785
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1786
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v3, "variant"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1787
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public synthetic lambda$getVoice$16$TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1877
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1878
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1881
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$playEarcon$3$TextToSpeech(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1376
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEarcons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 p1, -0x1

    .line 1378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1380
    :cond_0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    .line 1381
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, p5

    move v3, p2

    move-object v5, p4

    .line 1380
    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$playSilentUtterance$4$TextToSpeech(JILjava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    move-object v0, p5

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playSilence(Landroid/os/IBinder;JILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$setLanguage$11$TextToSpeech(Ljava/util/Locale;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "Couldn\'t retrieve ISO 3166 country code for locale: "

    const-string v2, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    const-string v3, "TextToSpeech"

    const/4 v4, -0x2

    .line 1678
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez p1, :cond_0

    return-object v4

    .line 1682
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1689
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1695
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 1702
    invoke-interface {p2, v5, v6, p1}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 1705
    invoke-interface {p2, v5, v6, p1}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1706
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "-"

    if-eqz v9, :cond_1

    .line 1707
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t find the default voice for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1713
    :cond_1
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v9

    invoke-interface {p2, v9, v8}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_2

    .line 1714
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The service claimed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was available with voice name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " but loadVoice returned ERROR"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1722
    :cond_2
    invoke-direct {p0, p2, v8}, Landroid/speech/tts/TextToSpeech;->getVoice(Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    move-result-object p2

    if-nez p2, :cond_3

    .line 1724
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDefaultVoiceNameFor returned "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " for locale "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " but getVoice returns null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1731
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1734
    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1733
    invoke-static {v3, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    .line 1739
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1742
    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1741
    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1744
    :goto_1
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "voiceName"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "language"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v1, "country"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "variant"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p2

    .line 1691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4

    :catch_3
    move-exception p2

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method public synthetic lambda$setOnStateChangedListener$20$TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2266
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->setListenTtsStateChanged(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    .line 2267
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$setSoloMode$23$TextToSpeech(IZLandroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2356
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p3, v0, p1, p2}, Landroid/speech/tts/ITextToSpeechService;->setSoloMode(Landroid/os/IBinder;IZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$setTtsDataListener$22$TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->setTtsDataListener(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    .line 2286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$setTtsStateListener$21$TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2275
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/speech/tts/ITextToSpeechService;->setListenTtsStateChanged(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    .line 2276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$setVoice$15$TextToSpeech(Landroid/speech/tts/Voice;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "TextToSpeech"

    const-string v1, ""

    .line 1836
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Landroid/speech/tts/ITextToSpeechService;->loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    .line 1838
    iget-object v2, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "voiceName"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    :try_start_0
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve ISO 639-2/T language code for locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1847
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1846
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    .line 1852
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t retrieve ISO 3166 country code for locale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1855
    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1854
    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1857
    :goto_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v3, "language"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "variant"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$shutdown$1$TextToSpeech(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1028
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    .line 1029
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/speech/tts/ITextToSpeechService;->stop(Landroid/os/IBinder;Ljava/lang/String;)I

    .line 1030
    iget-object p1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 1038
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 1039
    iput-object v1, p0, Landroid/speech/tts/TextToSpeech;->mCurrentEngine:Ljava/lang/String;

    return-object v1
.end method

.method public synthetic lambda$speak$2$TextToSpeech(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 1298
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v2

    .line 1299
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    move-object v1, p5

    move v4, p2

    move-object v6, p4

    .line 1298
    invoke-interface/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1301
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "speak "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    move-object v2, p5

    move-object v4, p1

    move v5, p2

    move-object v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/speech/tts/ITextToSpeechService;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$stop$8$TextToSpeech(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1552
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/speech/tts/ITextToSpeechService;->stop(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$stopByChannel$9$TextToSpeech([ILandroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1558
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroid/speech/tts/ITextToSpeechService;->stopByChannel(Landroid/os/IBinder;[I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$synthesizeToFile$19$TextToSpeech(Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2008
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    .line 2009
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, p5

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 2008
    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 7

    .line 1375
    new-instance v6, Landroid/speech/tts/-$$Lambda$TextToSpeech$XhApgcMI36XxTffil0rm6QjhoHw;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/-$$Lambda$TextToSpeech$XhApgcMI36XxTffil0rm6QjhoHw;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 1382
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "playEarcon"

    .line 1375
    invoke-direct {p0, v6, p1, p2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1414
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "utteranceId"

    .line 1415
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1414
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public playSilence(JILjava/util/HashMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "utteranceId"

    .line 1470
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 1469
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeech;->playSilentUtterance(JILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public playSilentUtterance(JILjava/lang/String;)I
    .locals 7

    .line 1436
    new-instance v6, Landroid/speech/tts/-$$Lambda$TextToSpeech$HPao7nd7wxCqw1_2pXB6ikskxb8;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/-$$Lambda$TextToSpeech$HPao7nd7wxCqw1_2pXB6ikskxb8;-><init>(Landroid/speech/tts/TextToSpeech;JILjava/lang/String;)V

    const/4 p1, -0x1

    .line 1439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "playSilentUtterance"

    .line 1436
    invoke-direct {p0, v6, p1, p2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public preTrigger(I)V
    .locals 2

    .line 2362
    new-instance v0, Landroid/speech/tts/TextToSpeech$1;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/TextToSpeech$1;-><init>(Landroid/speech/tts/TextToSpeech;I)V

    const/4 p1, -0x1

    .line 2368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "preTrigger"

    .line 2362
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)I
    .locals 3

    if-eqz p1, :cond_0

    .line 1620
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1621
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "audioAttributes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1623
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setDefaultEngine(Ljava/lang/String;)V
    .locals 1

    .line 2326
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TtsEngines;->setDefaultEngine(Ljava/lang/String;)V

    return-void
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2310
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mRequestedEngine:Ljava/lang/String;

    .line 2311
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeech;->initTts()I

    move-result p1

    return p1
.end method

.method public setLanguage(Ljava/util/Locale;)I
    .locals 2

    .line 1676
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$PWMb_ep-hnTiZFP-FPayFW5R1Gk;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/-$$Lambda$TextToSpeech$PWMb_ep-hnTiZFP-FPayFW5R1Gk;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/util/Locale;)V

    const/4 p1, -0x2

    .line 1750
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "setLanguage"

    .line 1676
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public setOnInitExt(Landroid/speech/tts/TextToSpeech$OnInitListenerExt;)V
    .locals 0

    return-void
.end method

.method public setOnStateChangedListener(Landroid/speech/tts/TextToSpeech$OnStateChangedListener;)I
    .locals 2

    .line 2264
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mStateChangedListener:Landroid/speech/tts/TextToSpeech$OnStateChangedListener;

    .line 2265
    new-instance p1, Landroid/speech/tts/-$$Lambda$TextToSpeech$Y1UENZvJLpV6FpjYSVm-lXqvXSs;

    invoke-direct {p1, p0}, Landroid/speech/tts/-$$Lambda$TextToSpeech$Y1UENZvJLpV6FpjYSVm-lXqvXSs;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v0, -0x1

    .line 2268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "setListenOnStateChanged"

    .line 2265
    invoke-direct {p0, p1, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2238
    invoke-static {p1}, Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object p1

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    const/4 p1, 0x0

    return p1
.end method

.method public setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .locals 0

    .line 2253
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    const/4 p1, 0x0

    return p1
.end method

.method public setPitch(F)I
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-lez p1, :cond_0

    .line 1601
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1602
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string v2, "pitch"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1603
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setSoloMode(IZ)I
    .locals 1

    .line 2355
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;

    invoke-direct {v0, p0, p1, p2}, Landroid/speech/tts/-$$Lambda$TextToSpeech$QuUZiyUlDN9_a3WNtsR8ebpT2vk;-><init>(Landroid/speech/tts/TextToSpeech;IZ)V

    const/4 p1, -0x1

    .line 2357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "setSoloMode"

    .line 2355
    invoke-direct {p0, v0, p1, p2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public setSoloMode(Z)I
    .locals 1

    const/4 v0, 0x0

    .line 2350
    invoke-virtual {p0, v0, p1}, Landroid/speech/tts/TextToSpeech;->setSoloMode(IZ)I

    move-result p1

    return p1
.end method

.method public setSpeechRate(F)I
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-lez p1, :cond_0

    .line 1577
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1578
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mParams:Landroid/os/Bundle;

    const-string/jumbo v2, "rate"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1579
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setTtsDataListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .locals 2

    .line 2282
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    const/4 p1, 0x1

    .line 2283
    iput-boolean p1, p0, Landroid/speech/tts/TextToSpeech;->mIsDataListener:Z

    .line 2284
    new-instance p1, Landroid/speech/tts/-$$Lambda$TextToSpeech$OOUPYgdGCpzuefb4TvSBRvM51jc;

    invoke-direct {p1, p0}, Landroid/speech/tts/-$$Lambda$TextToSpeech$OOUPYgdGCpzuefb4TvSBRvM51jc;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v0, -0x1

    .line 2287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "setTtsDataListener"

    .line 2284
    invoke-direct {p0, p1, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public setTtsStateListener(Landroid/speech/tts/TextToSpeech$TtsStateListener;)I
    .locals 2

    .line 2273
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech;->mTtsStateListener:Landroid/speech/tts/TextToSpeech$TtsStateListener;

    .line 2274
    new-instance p1, Landroid/speech/tts/-$$Lambda$TextToSpeech$JFbliKsku3DZh5ZOv3izh0YadDs;

    invoke-direct {p1, p0}, Landroid/speech/tts/-$$Lambda$TextToSpeech$JFbliKsku3DZh5ZOv3izh0YadDs;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const/4 v0, -0x1

    .line 2277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "setTtsStateListener"

    .line 2274
    invoke-direct {p0, p1, v0, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public setVoice(Landroid/speech/tts/Voice;)I
    .locals 2

    .line 1835
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$V2I7KHWFKAd3eapaeg9GIAMAP1o;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/-$$Lambda$TextToSpeech$V2I7KHWFKAd3eapaeg9GIAMAP1o;-><init>(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/Voice;)V

    const/4 p1, -0x2

    .line 1862
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "setVoice"

    .line 1835
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public shutdown()V
    .locals 4

    .line 1018
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech$Connection;->disconnect()V

    .line 1021
    iput-object v2, p0, Landroid/speech/tts/TextToSpeech;->mConnectingServiceConnection:Landroid/speech/tts/TextToSpeech$Connection;

    .line 1022
    monitor-exit v0

    return-void

    .line 1024
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$AVHoGsPjiL77YWxNauMTCUllPrM;

    invoke-direct {v0, p0}, Landroid/speech/tts/-$$Lambda$TextToSpeech$AVHoGsPjiL77YWxNauMTCUllPrM;-><init>(Landroid/speech/tts/TextToSpeech;)V

    const-string/jumbo v1, "shutdown"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/speech/tts/TextToSpeech;->runActionNoReconnect(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 1043
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCallbackHandler:Landroid/speech/tts/TextToSpeech$CallbackHandler;

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1044
    iget-object v0, p0, Landroid/speech/tts/TextToSpeech;->mCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception v1

    .line 1024
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 7

    .line 1295
    new-instance v6, Landroid/speech/tts/-$$Lambda$TextToSpeech$kIMOLWAC0A4ONiHu59tntSEc0-Y;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/-$$Lambda$TextToSpeech$kIMOLWAC0A4ONiHu59tntSEc0-Y;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 1305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "speak"

    .line 1295
    invoke-direct {p0, v6, p2, p3}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 1308
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p3, "utteranceId"

    .line 1309
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, -0x4

    const-string p4, "errorCode"

    .line 1310
    invoke-virtual {p1, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1311
    iget-object p3, p0, Landroid/speech/tts/TextToSpeech;->mCallbackHandler:Landroid/speech/tts/TextToSpeech$CallbackHandler;

    const/4 p4, 0x2

    invoke-virtual {p3, p4, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1312
    iget-object p3, p0, Landroid/speech/tts/TextToSpeech;->mCallbackHandler:Landroid/speech/tts/TextToSpeech$CallbackHandler;

    invoke-virtual {p3, p1}, Landroid/speech/tts/TextToSpeech$CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return p2
.end method

.method public speak(Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1346
    invoke-direct {p0, p3}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "utteranceId"

    .line 1347
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1346
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stop()I
    .locals 1

    const/4 v0, 0x0

    .line 1541
    invoke-virtual {p0, v0}, Landroid/speech/tts/TextToSpeech;->stop(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stop(Ljava/lang/String;)I
    .locals 2

    .line 1551
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$gN4U9rXVVLZ9ozL3Q__ucKV8hRM;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/-$$Lambda$TextToSpeech$gN4U9rXVVLZ9ozL3Q__ucKV8hRM;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 1553
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "stop"

    .line 1551
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public stopByChannel([I)I
    .locals 2

    .line 1557
    new-instance v0, Landroid/speech/tts/-$$Lambda$TextToSpeech$eLWoQ4Sev_L5gDr6oQtRzkTmrB8;

    invoke-direct {v0, p0, p1}, Landroid/speech/tts/-$$Lambda$TextToSpeech$eLWoQ4Sev_L5gDr6oQtRzkTmrB8;-><init>(Landroid/speech/tts/TextToSpeech;[I)V

    const/4 p1, -0x1

    .line 1559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "stopByChannel"

    .line 1557
    invoke-direct {p0, v0, p1, v1}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .locals 7

    .line 2007
    new-instance v6, Landroid/speech/tts/-$$Lambda$TextToSpeech$JA3JBHbq45eNIpf2BIO_YQ1hOJ4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/-$$Lambda$TextToSpeech$JA3JBHbq45eNIpf2BIO_YQ1hOJ4;-><init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2010
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "synthesizeToFile"

    .line 2007
    invoke-direct {p0, v6, p1, p2}, Landroid/speech/tts/TextToSpeech;->runAction(Landroid/speech/tts/TextToSpeech$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I
    .locals 4

    const-string v0, " failed"

    .line 2034
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "TextToSpeech"

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2035
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t write to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/high16 v1, 0x2c000000

    .line 2039
    :try_start_0
    invoke-static {p3, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2044
    :try_start_1
    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result p1

    .line 2045
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 2047
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    .line 2038
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 2051
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Closing file "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_1
    move-exception p1

    .line 2048
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Opening file "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2084
    invoke-direct {p0, p2}, Landroid/speech/tts/TextToSpeech;->convertParamsHashMaptoBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "utteranceId"

    .line 2085
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2084
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

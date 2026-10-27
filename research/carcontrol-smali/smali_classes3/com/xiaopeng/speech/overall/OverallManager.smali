.class public Lcom/xiaopeng/speech/overall/OverallManager;
.super Ljava/lang/Object;
.source "OverallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/overall/OverallManager$Holder;
    }
.end annotation


# static fields
.field private static DELAY_TIME:I = 0xc8


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final asr_cmd:Ljava/lang/String;

.field private listenerEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listenerQueryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEvent:Ljava/lang/String;

.field private mEventData:Ljava/lang/String;

.field private mEventRun:Ljava/lang/Runnable;

.field private mEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mObserver:Ljava/lang/String;

.field private mObserverEvents:[Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mQueryData:Ljava/lang/String;

.field private mQueryRun:Ljava/lang/Runnable;

.field private mQuerys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

.field private mRecordParam:Ljava/lang/String;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerEventMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerQueryMap:Ljava/util/Map;

    const-string/jumbo v0, "xiaopeng.asr.result"

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->asr_cmd:Ljava/lang/String;

    const-string v0, "OverallManager"

    .line 171
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 182
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    .line 185
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    .line 186
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    .line 831
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvent:Ljava/lang/String;

    .line 832
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventData:Ljava/lang/String;

    .line 834
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$21;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/overall/OverallManager$21;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;)V

    iput-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventRun:Ljava/lang/Runnable;

    .line 849
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuery:Ljava/lang/String;

    .line 850
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryData:Ljava/lang/String;

    .line 851
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mCallback:Ljava/lang/String;

    .line 853
    new-instance v0, Lcom/xiaopeng/speech/overall/OverallManager$22;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager$22;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryRun:Ljava/lang/Runnable;

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiEngine-overall"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mThread:Landroid/os/HandlerThread;

    .line 177
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mCallback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/xiaopeng/speech/overall/OverallManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/overall/OverallManager;)Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/overall/OverallManager;)Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventRun:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/xiaopeng/speech/overall/OverallManager;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvent:Ljava/lang/String;

    return-object p0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 1

    .line 964
    invoke-static {}, Lcom/xiaopeng/speech/apirouter/Utils;->isXpDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaopeng.speechtesttools.ApiSpeechService"

    return-object v0

    :cond_0
    const-string v0, "com.xiaopeng.carspeechservice.ApiSpeechService"

    return-object v0
.end method

.method public static final instance()Lcom/xiaopeng/speech/overall/OverallManager;
    .locals 1

    .line 189
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager$Holder;->access$300()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    return-object v0
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]+(_[0-9]+)*"

    .line 871
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 872
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 873
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private registerReceiver()V
    .locals 5

    .line 280
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "carspeechservice.SpeechServer.Start"

    .line 281
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    new-instance v1, Lcom/xiaopeng/speech/overall/OverAllBroadCastReceiver;

    invoke-direct {v1}, Lcom/xiaopeng/speech/overall/OverAllBroadCastReceiver;-><init>()V

    const-string v2, "android.app.ActivityThread"

    .line 283
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentApplication"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    .line 284
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 285
    invoke-virtual {v2, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverallManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private subscribe(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 307
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/overall/OverallManager$5;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserverEvents([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 226
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 227
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->updateListener(Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 228
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-eqz p2, :cond_1

    .line 230
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 231
    aget-object v2, p2, v1

    invoke-virtual {p0, v2, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->updateListener(Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 232
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerEventMap:Ljava/util/Map;

    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerQueryMap:Ljava/util/Map;

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-nez p1, :cond_4

    move p3, v0

    goto :goto_2

    .line 242
    :cond_4
    array-length p3, p1

    :goto_2
    if-nez p2, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    array-length v1, p2

    :goto_3
    add-int/2addr p3, v1

    new-array v1, p3, [Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 244
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    if-eqz p2, :cond_8

    if-nez p1, :cond_7

    move p1, v0

    goto :goto_4

    .line 246
    :cond_7
    array-length p1, p1

    :goto_4
    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 248
    array-length p2, p1

    add-int/2addr p2, p3

    new-array p2, p2, [Ljava/lang/String;

    .line 249
    array-length v2, p1

    invoke-static {p1, v0, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length p1, p1

    invoke-static {v1, v0, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    goto :goto_5

    .line 253
    :cond_9
    iput-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 255
    :goto_5
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 581
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 584
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 585
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 591
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerEventMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 597
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 598
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerQueryMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public destroyRecord(Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 135
    new-instance v0, Lcom/xiaopeng/speech/overall/OverallManager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager$4;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "dispatchOverallEvent eventStr:"

    const-string v1, "dispatchOverallEvent mListeners:"

    :try_start_0
    const-string/jumbo v2, "xiaopeng.asr.result"

    .line 648
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    if-eqz v2, :cond_0

    .line 649
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaopeng/speech/overall/OverallManager$16;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/speech/overall/OverallManager$16;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 657
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const-string v4, "data"

    const-string v5, "event"

    const-string v6, "feedbackResult"

    const-string v7, "OverallManager"

    if-nez v2, :cond_f

    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-eqz v2, :cond_f

    .line 658
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallUtils;->getEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_d

    .line 660
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "\\|"

    const-string/jumbo v10, "|"

    if-eq v1, v3, :cond_9

    .line 662
    :try_start_2
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/speech/overall/OverallUtils;->getPackageEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 665
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 666
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$17;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 673
    :cond_1
    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 674
    aget-object v1, p1, v2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v2

    .line 675
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_8

    .line 676
    aget-object v4, v1, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 677
    iget-object v5, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    aget-object v6, v4, v2

    invoke-interface {v5, v6}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 678
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v9, v4, v8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ",obj:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_7

    .line 680
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 681
    aget-object v6, v4, v8

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 683
    :cond_2
    aget-object v4, v4, v8

    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 688
    :cond_4
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    .line 689
    aget-object v6, v4, v8

    invoke-direct {p0, v6}, Lcom/xiaopeng/speech/overall/OverallManager;->isNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    check-cast v5, Ljava/lang/Integer;

    .line 690
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v5, v4, :cond_5

    goto :goto_1

    :cond_5
    return-void

    .line 695
    :cond_6
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 696
    check-cast v5, Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    .line 708
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchOverallEvent run:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    aget-object p1, p1, v8

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$18;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 719
    :cond_9
    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaopeng/speech/overall/OverallUtils;->getQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v3, :cond_15

    .line 721
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallUtils;->getPackageQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 722
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 723
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 724
    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 725
    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 727
    :goto_2
    array-length v1, p2

    if-ge v2, v1, :cond_c

    .line 728
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    aget-object v3, p2, v2

    invoke-interface {v1, v3}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 730
    aget-object v3, p2, v2

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 735
    :cond_b
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 737
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_15

    .line 741
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feedbackResult:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 743
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 744
    invoke-virtual {p2, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 745
    invoke-virtual {p2, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 746
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 747
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 748
    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 755
    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    if-eqz v0, :cond_e

    new-array v1, v8, [Ljava/util/HashSet;

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 756
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$19;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 762
    :cond_e
    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    if-eqz p2, :cond_15

    new-array v0, v8, [Ljava/util/HashSet;

    aput-object p2, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 763
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 764
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 765
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 767
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 768
    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 769
    invoke-virtual {v0, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 770
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 771
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 772
    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 775
    :cond_f
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v0, :cond_10

    .line 776
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvent:Ljava/lang/String;

    .line 777
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventData:Ljava/lang/String;

    .line 778
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventRun:Ljava/lang/Runnable;

    sget v0, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 779
    :cond_10
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v0, :cond_15

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 784
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 785
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    if-eqz v2, :cond_12

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 786
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/speech/overall/OverallManager$20;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$20;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 794
    :cond_12
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    if-eqz v2, :cond_11

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 795
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 796
    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 797
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 799
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 800
    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 801
    invoke-virtual {v1, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 802
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 803
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 804
    invoke-static {v1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    goto :goto_3

    .line 807
    :cond_13
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 808
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvent:Ljava/lang/String;

    .line 809
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventData:Ljava/lang/String;

    .line 810
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventRun:Ljava/lang/Runnable;

    sget v0, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 812
    :cond_14
    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaopeng/speech/overall/OverallUtils;->getQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v3, :cond_15

    .line 814
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 815
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 816
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 817
    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 818
    invoke-virtual {v0, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 819
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 821
    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_15
    :goto_4
    return-void
.end method

.method public dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "dispatchOverallEvent mListeners:"

    const-string v1, "OverallManager"

    .line 881
    :try_start_0
    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mCallback:Ljava/lang/String;

    .line 882
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "result"

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-eqz v2, :cond_1

    .line 883
    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaopeng/speech/overall/OverallUtils;->getQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallUtils;->getPackageQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 886
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "|"

    .line 887
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 888
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-interface {v0, p2}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 889
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 892
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 893
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    new-instance v0, Lcom/xiaopeng/speech/overall/SpeechResult;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/speech/overall/SpeechResult;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 894
    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/SpeechResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 895
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 891
    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 905
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    aput-object v1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 906
    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 907
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 910
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 911
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    new-instance v0, Lcom/xiaopeng/speech/overall/SpeechResult;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/speech/overall/SpeechResult;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/SpeechResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 913
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 909
    invoke-static {p1}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 922
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v2, :cond_2

    .line 923
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuery:Ljava/lang/String;

    .line 924
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryData:Ljava/lang/String;

    .line 925
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryRun:Ljava/lang/Runnable;

    sget p3, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 926
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v2, :cond_5

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 929
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    .line 932
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_0
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchOverallEvent listener:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",event:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 935
    invoke-interface {v0, p1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 936
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_3

    .line 939
    :try_start_2
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 940
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v4, Lcom/xiaopeng/speech/overall/SpeechResult;

    invoke-direct {v4, p1, v0}, Lcom/xiaopeng/speech/overall/SpeechResult;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    invoke-virtual {v4}, Lcom/xiaopeng/speech/overall/SpeechResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 942
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 938
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 951
    :cond_4
    :try_start_3
    iget-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    if-nez p3, :cond_5

    .line 952
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuery:Ljava/lang/String;

    .line 953
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryData:Ljava/lang/String;

    .line 954
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryRun:Ljava/lang/Runnable;

    sget p3, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_5
    :goto_1
    return-void
.end method

.method public feedbackResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 502
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$13;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/overall/OverallManager;->init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 1

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".ApiRouterOverallService"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/speech/overall/OverallUtils;->getObserverEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 203
    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->registerReceiver()V

    return-void
.end method

.method public initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 3

    .line 52
    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 53
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordParam:Ljava/lang/String;

    .line 54
    iget-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_3

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ".ApiRouterOverallService"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->registerReceiver()V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    const-string/jumbo p3, "xiaopeng.asr.result"

    if-eqz p1, :cond_1

    .line 61
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length p1, p1

    aput-object p3, v0, p1

    .line 65
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_1
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 70
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/xiaopeng/speech/overall/OverallManager$1;

    invoke-direct {p3, p0, p2}, Lcom/xiaopeng/speech/overall/OverallManager$1;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public isSupportRecord()Z
    .locals 3

    .line 155
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "destroyRecord"

    .line 157
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 160
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverallManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 6

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 607
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerEventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 611
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerEventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_4

    move v2, v1

    .line 613
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 614
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 615
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 616
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 618
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 620
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v5, v0, v2

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerQueryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 628
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerQueryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 630
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_7

    .line 631
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 632
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 633
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 635
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 637
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public replySupport(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    .line 549
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/overall/OverallManager;->replySupport(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public replySupport(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 527
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/overall/OverallManager$14;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 453
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$11;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 557
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$15;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager$15;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public startDialogFrom(Ljava/lang/String;)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 478
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$12;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager$12;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager$2;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopDialog()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 430
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/overall/OverallManager$10;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/overall/OverallManager$3;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public subscribe()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 210
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordParam:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaopeng/speech/overall/OverallManager;->initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    .line 212
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "messageCode"

    const-string v2, "501"

    .line 213
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public subscribe(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    .line 295
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 296
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    if-nez p1, :cond_2

    .line 299
    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 301
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->registerReceiver()V

    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 406
    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$9;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 380
    new-instance v7, Lcom/xiaopeng/speech/overall/OverallManager$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/overall/OverallManager$8;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$6;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager$6;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$7;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateListener(Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 267
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

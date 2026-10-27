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
.field private static DELAY_TIME:I


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
    .locals 1

    .line 47
    const/16 v0, 0xc8

    sput v0, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

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

    .line 48
    const-string v0, "xiaopeng.asr.result"

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->asr_cmd:Ljava/lang/String;

    .line 171
    const-string v0, "OverallManager"

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->TAG:Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    .line 180
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager$1;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mCallback:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/speech/overall/OverallManager;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/speech/overall/OverallManager;)Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/speech/overall/OverallManager;)Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventRun:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/speech/overall/OverallManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/speech/overall/OverallManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvent:Ljava/lang/String;

    return-object v0
.end method

.method private getAuthority()Ljava/lang/String;
    .locals 1

    .line 964
    invoke-static {}, Lcom/xiaopeng/speech/apirouter/Utils;->isXpDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    const-string v0, "com.xiaopeng.speechtesttools.ApiSpeechService"

    return-object v0

    .line 967
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
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 871
    const-string v0, "[0-9]+(_[0-9]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 872
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 873
    .local v1, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 874
    const/4 v2, 0x0

    return v2

    .line 876
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private registerReceiver()V
    .locals 5

    .line 280
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 281
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "carspeechservice.SpeechServer.Start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    new-instance v1, Lcom/xiaopeng/speech/overall/OverAllBroadCastReceiver;

    invoke-direct {v1}, Lcom/xiaopeng/speech/overall/OverAllBroadCastReceiver;-><init>()V

    .line 283
    .local v1, "receiver":Lcom/xiaopeng/speech/overall/OverAllBroadCastReceiver;
    const-string v2, "android.app.ActivityThread"

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
    .local v2, "application":Landroid/app/Application;
    invoke-virtual {v2, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .end local v1    # "receiver":Lcom/xiaopeng/speech/overall/OverAllBroadCastReceiver;
    .end local v2    # "application":Landroid/app/Application;
    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OverallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private subscribe(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "observer"    # Ljava/lang/String;
    .param p2, "events"    # [Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/speech/overall/OverallManager$5;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserverEvents([Ljava/lang/String;[Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 5
    .param p1, "events"    # [Ljava/lang/String;
    .param p2, "querys"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 226
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 227
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->updateListener(Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 228
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_0
    move v1, v0

    .restart local v1    # "i":I
    :goto_1
    if-eqz p2, :cond_1

    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 231
    aget-object v2, p2, v1

    invoke-virtual {p0, v2, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->updateListener(Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 232
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    .end local v1    # "i":I
    :cond_1
    if-eqz p1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerEventMap:Ljava/util/Map;

    invoke-interface {v1, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_2
    if-eqz p2, :cond_3

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerQueryMap:Ljava/util/Map;

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_3
    if-nez p1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    array-length v1, p1

    :goto_2
    if-nez p2, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    array-length v2, p2

    :goto_3
    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 243
    .local v1, "returnEvents":[Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 244
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_6
    if-eqz p2, :cond_8

    .line 246
    if-nez p1, :cond_7

    move v2, v0

    goto :goto_4

    :cond_7
    array-length v2, p1

    :goto_4
    array-length v3, p2

    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    :cond_8
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 248
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length v2, v2

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    .line 249
    .local v2, "returnObserverEvents":[Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length v3, v3

    array-length v4, v1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iput-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 252
    .end local v2    # "returnObserverEvents":[Ljava/lang/String;
    goto :goto_5

    .line 253
    :cond_9
    iput-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 255
    :goto_5
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public addOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 581
    const/4 v0, 0x0

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
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 585
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;>;"
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
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
    .local v0, "array":[Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerEventMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .end local v0    # "array":[Ljava/lang/String;
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
    .restart local v0    # "array":[Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 598
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->listenerQueryMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .end local v0    # "array":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public destroyRecord(Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    if-ne v0, p1, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/overall/OverallManager$4;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :cond_1
    return-void
.end method

.method public dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 648
    :try_start_0
    const-string v0, "xiaopeng.asr.result"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$16;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/speech/overall/OverallManager$16;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 655
    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-eqz v0, :cond_15

    .line 658
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallUtils;->getEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 659
    .local v0, "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_12

    .line 660
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 661
    .local v4, "index":I
    if-eq v4, v1, :cond_c

    .line 662
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallUtils;->getPackageEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 663
    .local v1, "eventStr":Ljava/lang/String;
    const-string v5, "OverallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchOverallEvent eventStr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 665
    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 666
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/xiaopeng/speech/overall/OverallManager$17;

    invoke-direct {v3, p0, v1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$17;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 673
    :cond_1
    const-string v5, "\\|"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, "events":[Ljava/lang/String;
    aget-object v6, v5, v2

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 675
    .local v6, "querys":[Ljava/lang/String;
    move v7, v2

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_a

    .line 676
    aget-object v8, v6, v7

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 677
    .local v8, "query1":[Ljava/lang/String;
    iget-object v9, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    aget-object v10, v8, v2

    invoke-interface {v9, v10}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 678
    .local v9, "obj":Ljava/lang/Object;
    const-string v10, "OverallManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dispatchOverallEvent eventStr:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v8, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ",obj:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    if-eqz v9, :cond_9

    .line 680
    instance-of v10, v9, Ljava/lang/Boolean;

    if-eqz v10, :cond_4

    .line 681
    aget-object v10, v8, v3

    const-string v11, "true"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v9

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 682
    goto :goto_1

    .line 683
    :cond_2
    aget-object v10, v8, v3

    const-string v11, "false"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v9

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    .line 684
    goto :goto_1

    .line 686
    :cond_3
    return-void

    .line 688
    :cond_4
    instance-of v10, v9, Ljava/lang/Integer;

    if-eqz v10, :cond_6

    .line 689
    aget-object v10, v8, v3

    invoke-direct {p0, v10}, Lcom/xiaopeng/speech/overall/OverallManager;->isNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v9

    check-cast v10, Ljava/lang/Integer;

    .line 690
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v11, v8, v3

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 691
    goto :goto_1

    .line 693
    :cond_5
    return-void

    .line 695
    :cond_6
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 696
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    aget-object v11, v8, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 697
    nop

    .line 675
    .end local v8    # "query1":[Ljava/lang/String;
    .end local v9    # "obj":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 699
    .restart local v8    # "query1":[Ljava/lang/String;
    .restart local v9    # "obj":Ljava/lang/Object;
    :cond_7
    return-void

    .line 702
    :cond_8
    return-void

    .line 705
    :cond_9
    return-void

    .line 708
    .end local v7    # "i":I
    .end local v8    # "query1":[Ljava/lang/String;
    .end local v9    # "obj":Ljava/lang/Object;
    :cond_a
    const-string v2, "OverallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchOverallEvent run:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    aget-object v2, v5, v3

    .line 710
    .local v2, "event1":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/overall/OverallManager$18;

    invoke-direct {v7, p0, v2, p2}, Lcom/xiaopeng/speech/overall/OverallManager$18;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    .end local v1    # "eventStr":Ljava/lang/String;
    .end local v2    # "event1":Ljava/lang/String;
    .end local v5    # "events":[Ljava/lang/String;
    .end local v6    # "querys":[Ljava/lang/String;
    :cond_b
    :goto_2
    goto/16 :goto_5

    .line 719
    :cond_c
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaopeng/speech/overall/OverallUtils;->getQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 720
    .end local v4    # "index":I
    .local v3, "index":I
    if-eq v3, v1, :cond_11

    .line 721
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallUtils;->getPackageQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 722
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 723
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 724
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 725
    const-string v5, "\\|"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, "querys":[Ljava/lang/String;
    nop

    .local v2, "i":I
    :goto_3
    array-length v6, v5

    if-ge v2, v6, :cond_e

    .line 728
    iget-object v6, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    aget-object v7, v5, v2

    invoke-interface {v6, v7}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 729
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_d

    .line 730
    aget-object v7, v5, v2

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 734
    .end local v2    # "i":I
    .end local v5    # "querys":[Ljava/lang/String;
    :cond_e
    goto :goto_4

    .line 735
    :cond_f
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-interface {v2, v1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 736
    .local v2, "b":Ljava/lang/Object;
    if-eqz v2, :cond_10

    .line 737
    invoke-virtual {v4, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    .end local v2    # "b":Ljava/lang/Object;
    :cond_10
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 741
    const-string v2, "OverallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "feedbackResult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 743
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v5, "feedbackResult"

    .line 744
    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v5, "event"

    .line 745
    invoke-virtual {v2, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v5, "data"

    .line 746
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 747
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 748
    .local v2, "targetUrl":Landroid/net/Uri;
    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 754
    .end local v1    # "query":Ljava/lang/String;
    .end local v2    # "targetUrl":Landroid/net/Uri;
    .end local v3    # "index":I
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_11
    :goto_5
    goto :goto_6

    .line 755
    :cond_12
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    if-eqz v1, :cond_13

    new-array v1, v3, [Ljava/util/HashSet;

    iget-object v4, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 756
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaopeng/speech/overall/OverallManager$19;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$19;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 762
    :cond_13
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    if-eqz v1, :cond_14

    new-array v1, v3, [Ljava/util/HashSet;

    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 763
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 764
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 765
    .local v2, "result":Ljava/lang/Object;
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 767
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "feedbackResult"

    .line 768
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "event"

    .line 769
    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "data"

    .line 770
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 771
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 772
    .local v3, "targetUrl":Landroid/net/Uri;
    invoke-static {v3}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 775
    .end local v0    # "eventList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "targetUrl":Landroid/net/Uri;
    :cond_14
    :goto_6
    goto/16 :goto_9

    :cond_15
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v0, :cond_16

    .line 776
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvent:Ljava/lang/String;

    .line 777
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventData:Ljava/lang/String;

    .line 778
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventRun:Ljava/lang/Runnable;

    sget v2, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9

    .line 779
    :cond_16
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v0, :cond_1c

    .line 780
    const-string v0, "OverallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchOverallEvent mListeners:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 782
    const-string v0, "OverallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchOverallEvent mListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 784
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 785
    .local v2, "listener":Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvents:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 786
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/xiaopeng/speech/overall/OverallManager$20;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$20;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 794
    :cond_17
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 795
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 796
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 797
    .local v4, "result":Ljava/lang/Object;
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 799
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "feedbackResult"

    .line 800
    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "event"

    .line 801
    invoke-virtual {v5, v6, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "data"

    .line 802
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 803
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 804
    .local v5, "targetUrl":Landroid/net/Uri;
    invoke-static {v5}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    .line 806
    .end local v2    # "listener":Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "result":Ljava/lang/Object;
    .end local v5    # "targetUrl":Landroid/net/Uri;
    :cond_18
    :goto_8
    goto :goto_7

    .line 807
    .end local v0    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    :cond_19
    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    if-nez v0, :cond_1b

    .line 808
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEvent:Ljava/lang/String;

    .line 809
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventData:Ljava/lang/String;

    .line 810
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mEventRun:Ljava/lang/Runnable;

    sget v2, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 812
    :cond_1b
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallUtils;->getQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 813
    .local v0, "index":I
    if-eq v0, v1, :cond_1c

    .line 814
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 815
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 816
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "feedbackResult"

    .line 817
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "event"

    .line 818
    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "data"

    .line 819
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 820
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 821
    .local v2, "targetUrl":Landroid/net/Uri;
    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    .end local v0    # "index":I
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "targetUrl":Landroid/net/Uri;
    :cond_1c
    :goto_9
    goto :goto_a

    .line 826
    :catch_0
    move-exception v0

    .line 830
    :goto_a
    return-void
.end method

.method public dispatchOverallQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .line 881
    :try_start_0
    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mCallback:Ljava/lang/String;

    .line 882
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-eqz v0, :cond_3

    .line 883
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallUtils;->getQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 884
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 885
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/speech/overall/OverallUtils;->getPackageQueryEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 886
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-interface {v2, v1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 889
    .local v2, "b":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v3, :cond_0

    .line 891
    nop

    .line 892
    :try_start_1
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 893
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "result"

    new-instance v5, Lcom/xiaopeng/speech/overall/SpeechResult;

    invoke-direct {v5, p1, v2}, Lcom/xiaopeng/speech/overall/SpeechResult;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 894
    invoke-virtual {v5}, Lcom/xiaopeng/speech/overall/SpeechResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 895
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 891
    invoke-static {v3}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 900
    goto :goto_0

    .line 898
    :catch_0
    move-exception v3

    .line 905
    .end local v1    # "query":Ljava/lang/String;
    .end local v2    # "b":Ljava/lang/Object;
    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :try_start_2
    new-array v1, v1, [Ljava/util/HashSet;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 906
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 907
    .local v1, "b":Ljava/lang/Object;
    if-eqz v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v2, :cond_2

    .line 909
    nop

    .line 910
    :try_start_3
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 911
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "result"

    new-instance v4, Lcom/xiaopeng/speech/overall/SpeechResult;

    invoke-direct {v4, p1, v1}, Lcom/xiaopeng/speech/overall/SpeechResult;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    invoke-virtual {v4}, Lcom/xiaopeng/speech/overall/SpeechResult;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 913
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 909
    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 918
    goto :goto_1

    .line 916
    :catch_1
    move-exception v2

    .line 922
    .end local v0    # "index":I
    .end local v1    # "b":Ljava/lang/Object;
    :cond_2
    :goto_1
    goto/16 :goto_4

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v0, :cond_4

    .line 923
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuery:Ljava/lang/String;

    .line 924
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryData:Ljava/lang/String;

    .line 925
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryRun:Ljava/lang/Runnable;

    sget v2, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 926
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v0, :cond_8

    .line 927
    const-string v0, "OverallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchOverallEvent mListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 929
    const-string v0, "OverallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchOverallEvent mListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 932
    .local v0, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 933
    .local v2, "listener":Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;
    const-string v3, "OverallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchOverallEvent listener:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuerys:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 935
    invoke-interface {v2, p1}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onQuery(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 936
    .local v3, "b":Ljava/lang/Object;
    if-eqz v3, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v4, :cond_5

    .line 938
    nop

    .line 939
    :try_start_5
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 940
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "result"

    new-instance v6, Lcom/xiaopeng/speech/overall/SpeechResult;

    invoke-direct {v6, p1, v3}, Lcom/xiaopeng/speech/overall/SpeechResult;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    invoke-virtual {v6}, Lcom/xiaopeng/speech/overall/SpeechResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 942
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 938
    invoke-static {v4}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 947
    goto :goto_3

    .line 945
    :catch_2
    move-exception v4

    .line 950
    .end local v2    # "listener":Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;
    .end local v3    # "b":Ljava/lang/Object;
    :cond_5
    :goto_3
    goto :goto_2

    .line 951
    .end local v0    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    :cond_6
    goto :goto_4

    :cond_7
    :try_start_6
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    if-nez v0, :cond_8

    .line 952
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQuery:Ljava/lang/String;

    .line 953
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryData:Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mQueryRun:Ljava/lang/Runnable;

    sget v2, Lcom/xiaopeng/speech/overall/OverallManager;->DELAY_TIME:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 959
    :cond_8
    :goto_4
    goto :goto_5

    .line 957
    :catch_3
    move-exception v0

    .line 961
    :goto_5
    return-void
.end method

.method public feedbackResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$13;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 520
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/speech/overall/OverallManager;->init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V

    .line 194
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ApiRouterOverallService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallUtils;->getObserverEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->registerReceiver()V

    .line 206
    return-void
.end method

.method public initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 52
    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 53
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordParam:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ApiRouterOverallService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->registerReceiver()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "xiaopeng.asr.result"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 63
    .local v0, "returnObserverEvents":[Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    array-length v1, v1

    const-string v2, "xiaopeng.asr.result"

    aput-object v2, v0, v1

    .line 65
    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 66
    .end local v0    # "returnObserverEvents":[Ljava/lang/String;
    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "xiaopeng.asr.result"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/speech/overall/OverallManager$1;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    :cond_3
    return-void
.end method

.method public isSupportRecord()Z
    .locals 5

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
    .local v0, "targetUrl":Landroid/net/Uri;
    :try_start_0
    invoke-static {v0}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v1, 0x1

    return v1

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "OverallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const/4 v2, 0x0

    return v2
.end method

.method public removeOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    const/4 v0, 0x0

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

    .line 612
    .local v0, "events":[Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 613
    move v2, v1

    .local v2, "i":I
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
    .local v3, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 618
    iget-object v4, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 620
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v5, v0, v2

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .end local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v0    # "events":[Ljava/lang/String;
    .end local v2    # "i":I
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

    .line 629
    .restart local v0    # "events":[Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 630
    nop

    .local v1, "i":I
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
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 635
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 637
    :cond_5
    iget-object v3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    aget-object v4, v0, v1

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;>;"
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 644
    .end local v0    # "events":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_7
    return-void
.end method

.method public replySupport(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "isSupport"    # Z

    .line 549
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/overall/OverallManager;->replySupport(Ljava/lang/String;ZLjava/lang/String;)V

    .line 550
    return-void
.end method

.method public replySupport(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "isSupport"    # Z
    .param p3, "text"    # Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/speech/overall/OverallManager$14;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    :cond_0
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$11;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    :cond_0
    return-void
.end method

.method public setOverallListener(Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 577
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 578
    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 2
    .param p1, "tts"    # Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$15;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager$15;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    :cond_0
    return-void
.end method

.method public startDialogFrom(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$12;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager$12;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    :cond_0
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager$2;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public stopDialog()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/overall/OverallManager$10;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/overall/OverallManager$3;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public subscribe()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordParam:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/speech/overall/OverallManager;->initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    .line 212
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v0, "asr_result":Lorg/json/JSONObject;
    const-string v1, "messageCode"

    const-string v2, "501"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mRecordListener:Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "asr_result":Lorg/json/JSONObject;
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public subscribe(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Ljava/lang/String;
    .param p3, "events"    # [Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mPackageName:Ljava/lang/String;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 296
    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 299
    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserver:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mObserverEvents:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Ljava/lang/String;[Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/xiaopeng/speech/overall/OverallManager;->registerReceiver()V

    .line 303
    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$9;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    :cond_0
    return-void
.end method

.method public triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "skill"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/String;
    .param p3, "intent"    # Ljava/lang/String;
    .param p4, "slots"    # Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/xiaopeng/speech/overall/OverallManager$8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/speech/overall/OverallManager$8;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    :cond_0
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "observer"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$6;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/overall/OverallManager$6;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "observer"    # Ljava/lang/String;
    .param p2, "events"    # [Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/overall/OverallManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager$7;-><init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public updateListener(Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 265
    .local v0, "set":Ljava/util/HashSet;
    if-nez v0, :cond_0

    .line 266
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 267
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    :goto_0
    return-void
.end method

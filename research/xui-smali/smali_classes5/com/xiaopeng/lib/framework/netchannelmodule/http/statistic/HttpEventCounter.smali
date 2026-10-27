.class public final enum Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;
.super Ljava/lang/Enum;
.source "HttpEventCounter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

.field private static final EVENT_NAME:Ljava/lang/String; = "net_http_event"

.field public static final enum INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

.field private static final MAX_VALUE_COUNT:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "HttpEventCounter"


# instance fields
.field private mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

.field private mEventData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;",
            ">;"
        }
    .end annotation
.end field

.field private mEventListener:Lokhttp3/EventListener;

.field private final mHandler:Landroid/os/Handler;

.field private mLastHour:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->$VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventData:Ljava/util/Map;

    .line 136
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventListener:Lokhttp3/EventListener;

    .line 60
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "HttpEventCounter"

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 61
    .local p1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Lokhttp3/Call;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;
    .param p1, "x1"    # Lokhttp3/Call;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->getEventData(Lokhttp3/Call;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->runOnWorkThread(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->commitData()V

    return-void
.end method

.method private buildData(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "detail"    # Lorg/json/JSONArray;

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 111
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "pk"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v1, "dt"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized commitData()V
    .locals 10

    monitor-enter p0

    .line 66
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/ContextNetStatusProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 68
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    .line 72
    .local v1, "currentHour":J
    iget-wide v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mLastHour:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 73
    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mLastHour:J

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xa

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    iget-wide v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mLastHour:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_8

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 79
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;>;>;"
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 80
    .local v4, "array":Lorg/json/JSONArray;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 81
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 82
    .local v7, "et":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;

    .line 83
    .local v8, "data":Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;
    invoke-virtual {v8}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->readyPublish()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 84
    invoke-virtual {v8}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;->toJson()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 87
    .end local v7    # "et":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;>;"
    .end local v8    # "data":Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;
    :cond_3
    goto :goto_0

    .line 88
    :cond_4
    iget-object v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventData:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v7, v5

    if-lez v5, :cond_5

    .line 89
    iget-object v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventData:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 91
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 96
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v5

    .line 97
    .local v5, "international":Z
    if-nez v5, :cond_7

    .line 98
    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    if-nez v6, :cond_6

    .line 99
    const-class v6, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v6}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v6

    const-class v7, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v6, v7}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    iput-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 101
    :cond_6
    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mDataLog:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    const-string v7, "net_http_event"

    invoke-direct {p0, v0, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->buildData(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatOriginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v5    # "international":Z
    :cond_7
    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mLastHour:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;>;>;"
    .end local v4    # "array":Lorg/json/JSONArray;
    :cond_8
    monitor-exit p0

    return-void

    .line 65
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "currentHour":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;
    throw v0
.end method

.method private getEventData(Lokhttp3/Call;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventData:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;

    .line 125
    .local v0, "data":Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;
    if-nez v0, :cond_0

    .line 126
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/EventData;-><init>(Lokhttp3/Call;)V

    move-object v0, v1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventData:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object v0
.end method

.method private runOnWorkThread(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "method"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->$VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;

    return-object v0
.end method


# virtual methods
.method public getEventListener()Lokhttp3/EventListener;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpEventCounter;->mEventListener:Lokhttp3/EventListener;

    return-object v0
.end method

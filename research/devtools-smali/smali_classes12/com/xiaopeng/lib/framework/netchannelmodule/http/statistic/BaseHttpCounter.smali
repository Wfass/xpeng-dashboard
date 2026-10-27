.class public abstract Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;
.super Ljava/lang/Object;
.source "BaseHttpCounter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DEBUG:Z

.field private static final HALF_DAY_MILLS:J = 0x2932e00L

.field private static final MAX_DOMAINS_IN_DETAIL_LIST:S = 0xfs

.field private static final MAX_VALUE_THRESHOLD:J = 0x6400000L

.field private static final MESSAGE_APPLY:I = 0x1

.field private static final MESSAGE_APPLY_DELAY:J = 0x2710L

.field private static final STAT_KEY_DETAILS:Ljava/lang/String; = "details"

.field private static final STAT_KEY_FAILED:Ljava/lang/String; = "fail"

.field private static final STAT_KEY_LAST_DATE:Ljava/lang/String; = "date"

.field private static final STAT_KEY_PACKAGE_NAME:Ljava/lang/String; = "pack"

.field private static final STAT_KEY_REQUEST:Ljava/lang/String; = "req"

.field private static final STAT_KEY_RX_SIZE_IN_KB:Ljava/lang/String; = "rx"

.field private static final STAT_KEY_SUCCEED:Ljava/lang/String; = "suc"

.field private static final STAT_KEY_TX_SIZE_IN_KB:Ljava/lang/String; = "tx"

.field private static final TAG:Ljava/lang/String; = "NetChannel.Http.Counter"

.field protected static sKeyDetails:Ljava/lang/String;

.field protected static sKeyFailed:Ljava/lang/String;

.field protected static sKeyLastDate:Ljava/lang/String;

.field protected static sKeyRequest:Ljava/lang/String;

.field protected static sKeySucceed:Ljava/lang/String;

.field protected static sKeyTrafficRx:Ljava/lang/String;

.field protected static sKeyTrafficTx:Ljava/lang/String;


# instance fields
.field private MIN_SAVING_INTERVAL:I

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mJsonConverter:Lcom/google/gson/Gson;

.field private mLastDate:J

.field private mLastDetailSavingTime:J

.field private final mMoleButtonId:Ljava/lang/String;

.field private mRequestCount:J

.field private final mStatEventName:Ljava/lang/String;

.field private mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

.field private mTrafficDetails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->debuggable()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->DEBUG:Z

    .line 38
    const-string v0, "net_http_failed"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyFailed:Ljava/lang/String;

    .line 39
    const-string v0, "net_http_succeed"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeySucceed:Ljava/lang/String;

    .line 40
    const-string v0, "net_http_request"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyRequest:Ljava/lang/String;

    .line 41
    const-string v0, "net_http_rx"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficRx:Ljava/lang/String;

    .line 42
    const-string v0, "net_http_tx"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficTx:Ljava/lang/String;

    .line 43
    const-string v0, "net_http_details"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyDetails:Ljava/lang/String;

    .line 44
    const-string v0, "net_http_date"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyLastDate:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z

    .line 84
    const/16 v0, 0x7530

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->MIN_SAVING_INTERVAL:I

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mStatEventName:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mMoleButtonId:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z

    .line 84
    const/16 v1, 0x7530

    iput v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->MIN_SAVING_INTERVAL:I

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mStatEventName:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mMoleButtonId:Ljava/lang/String;

    .line 95
    new-instance p1, Landroid/os/Handler;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->dR(I)Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method private apply()V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 254
    :cond_0
    return-void
.end method

.method private declared-synchronized commitData()V
    .locals 9

    monitor-enter p0

    .line 257
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    div-long/2addr v0, v2

    .line 259
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->receivedSize()J

    move-result-wide v2

    const-wide/32 v4, 0x6400000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    .line 260
    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->sentSize()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mLastDate:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mJsonConverter:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isInternationVersion()Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    const-class v3, Lcom/xiaopeng/datalog/a;

    invoke-static {v3}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v3

    const-class v4, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v3, v4}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 267
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mStatEventName:Ljava/lang/String;

    .line 268
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "P00013"

    .line 269
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mMoleButtonId:Ljava/lang/String;

    .line 270
    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "pack"

    .line 271
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "req"

    iget-wide v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mRequestCount:J

    .line 272
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "fail"

    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    .line 273
    invoke-virtual {v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->failed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "suc"

    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    .line 274
    invoke-virtual {v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->succeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "rx"

    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    .line 275
    invoke-virtual {v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->receivedSize()J

    move-result-wide v6

    const/16 v8, 0xa

    shr-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "tx"

    iget-object v6, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    .line 276
    invoke-virtual {v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->sentSize()J

    move-result-wide v6

    shr-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v4

    const-string v5, "details"

    .line 277
    invoke-interface {v4, v5, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v4, "date"

    iget-wide v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mLastDate:J

    .line 278
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 279
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v2

    .line 267
    invoke-interface {v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .line 282
    :cond_1
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mLastDate:J

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyLastDate:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mLastDate:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->clearCounters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_2
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized debugInfo()V
    .locals 3

    monitor-enter p0

    .line 306
    :try_start_0
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Http ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mStatEventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")]: Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mRequestCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Details:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mJsonConverter:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;

    .line 310
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Net:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v1, "NetChannel.Http.Counter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_0
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ensureInitialized()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 321
    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StorageCounter has not been initialized yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTrafficDataByDomain(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 352
    nop

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 357
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;-><init>()V

    .line 358
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private initFromPreference(Landroid/content/SharedPreferences;)Ljava/util/HashMap;
    .locals 2
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;",
            ">;"
        }
    .end annotation

    .line 332
    nop

    .line 334
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyDetails:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;)V

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mJsonConverter:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 339
    :catch_0
    move-exception p1

    .line 343
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 344
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 347
    :cond_1
    return-object p1
.end method

.method private saveDetailData()V
    .locals 4

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mLastDetailSavingTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->MIN_SAVING_INTERVAL:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 325
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyDetails:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mJsonConverter:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mLastDetailSavingTime:J

    .line 329
    return-void
.end method


# virtual methods
.method public declared-synchronized addReceivedSize(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 212
    monitor-exit p0

    return-void

    .line 215
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->addReceivedSize(J)V

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficRx:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->receivedSize()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 218
    if-eqz p1, :cond_1

    .line 219
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->getTrafficDataByDomain(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    move-result-object p1

    .line 220
    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->addReceivedSize(J)V

    .line 222
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->saveDetailData()V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->apply()V

    .line 227
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->debugInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addSentSize(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 231
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 232
    monitor-exit p0

    return-void

    .line 235
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->addSentSize(J)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficTx:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->sentSize()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 238
    if-eqz p1, :cond_1

    .line 239
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->getTrafficDataByDomain(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    move-result-object p1

    .line 240
    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->addSentSize(J)V

    .line 242
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->saveDetailData()V

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->apply()V

    .line 247
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->debugInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearCounters()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 291
    monitor-exit p0

    return-void

    .line 294
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mRequestCount:J

    .line 295
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyRequest:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 296
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyFailed:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 297
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeySucceed:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 298
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficRx:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 299
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficTx:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->reset()V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyDetails:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 100
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->commitData()V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 106
    :cond_0
    :goto_0
    return v0
.end method

.method public declared-synchronized increaseFailureWithSize(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 169
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->increaseFailed(J)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyFailed:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->failed()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficRx:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->receivedSize()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 176
    if-eqz p1, :cond_1

    .line 177
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->getTrafficDataByDomain(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    move-result-object p1

    .line 178
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->increaseFailed(J)V

    .line 180
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->saveDetailData()V

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->apply()V

    .line 185
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->debugInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized increaseRequest(Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 151
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->ensureInitialized()V

    .line 155
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mRequestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mRequestCount:J

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyRequest:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mRequestCount:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->addSentSize(J)V

    .line 160
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->getTrafficDataByDomain(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    move-result-object p1

    .line 161
    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->addSentSize(J)V

    .line 163
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->saveDetailData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :cond_1
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized increaseSucceedWithSize(Ljava/lang/String;J)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 190
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v0, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->increaseSucceed(J)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeySucceed:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->succeed()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficRx:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->receivedSize()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 198
    if-eqz p1, :cond_1

    .line 199
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->getTrafficDataByDomain(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    move-result-object p1

    .line 200
    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->increaseSucceed(J)V

    .line 202
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->saveDetailData()V

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->apply()V

    .line 207
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->debugInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init()V
    .locals 8

    monitor-enter p0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z

    .line 113
    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 114
    monitor-exit p0

    return-void

    .line 117
    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :try_start_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mEditor:Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    goto :goto_1

    .line 120
    :catch_0
    move-exception v3

    .line 123
    :try_start_3
    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/SharedPrefsUtil;->clearNetChannelSharedPrefs(Landroid/content/Context;)V

    .line 124
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 127
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v3, 0x2932e00

    div-long/2addr v0, v3

    .line 128
    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyLastDate:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mLastDate:J

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mRequestCount:J

    .line 131
    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    invoke-direct {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;-><init>()V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    .line 132
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mJsonConverter:Lcom/google/gson/Gson;

    .line 133
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :try_start_4
    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyRequest:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mRequestCount:J

    .line 137
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    sget-object v4, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeySucceed:Ljava/lang/String;

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v6, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyFailed:Ljava/lang/String;

    .line 138
    invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 137
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->setCount(JJ)V

    .line 139
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTotalData:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;

    sget-object v4, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficRx:Ljava/lang/String;

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v6, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->sKeyTrafficTx:Ljava/lang/String;

    .line 140
    invoke-interface {v2, v6, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 139
    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/TrafficData;->setSize(JJ)V

    .line 141
    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->initFromPreference(Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->mTrafficDetails:Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    goto :goto_2

    .line 142
    :catch_1
    move-exception v0

    .line 143
    :try_start_5
    const-string v1, "NetChannel.Http.Counter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to load from preference due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;->debugInfo()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

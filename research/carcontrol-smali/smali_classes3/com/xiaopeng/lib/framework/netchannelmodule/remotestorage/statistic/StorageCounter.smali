.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;
.super Ljava/lang/Object;
.source "StorageCounter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$Holder;
    }
.end annotation


# static fields
.field private static final DAILY_TRAFFIC_QUOTA:J = 0x4b000L

.field private static final DEBUG:Z

.field private static final EVENT_NAME:Ljava/lang/String; = "net_rs_stat"

.field private static final KEY_ERROR_CODES:Ljava/lang/String; = "net_rs_codes"

.field private static final KEY_FAILED:Ljava/lang/String; = "net_rs_failed"

.field private static final KEY_LAST_DATE:Ljava/lang/String; = "net_rs_date"

.field private static final KEY_REJECT:Ljava/lang/String; = "net_rs_rej"

.field private static final KEY_REQUEST:Ljava/lang/String; = "net_rs_request"

.field private static final KEY_SUCCEED:Ljava/lang/String; = "net_rs_succeed"

.field private static final KEY_TRAFFIC_SIZE:Ljava/lang/String; = "net_rs_size"

.field private static final MAX_ERROR_CODES:S = 0xas

.field private static final MAX_VALUE_THRESHOLD:J = 0x3fffffffffffffffL

.field private static final MESSAGE_APPLY:I = 0x1

.field private static final MESSAGE_APPLY_DELAY:J = 0x2710L

.field private static final MOLE_TRAFFIC_OSS_BUTTON_ID:Ljava/lang/String; = "B005"

.field private static final ONE_DAY_MILLS:J = 0x5265c00L

.field private static final STAT_KEY_ERROR_CODES:Ljava/lang/String; = "codes"

.field private static final STAT_KEY_FAILED:Ljava/lang/String; = "fail"

.field private static final STAT_KEY_LAST_DATE:Ljava/lang/String; = "date"

.field private static final STAT_KEY_PACKAGE_NAME:Ljava/lang/String; = "pack"

.field private static final STAT_KEY_REJECT:Ljava/lang/String; = "rej"

.field private static final STAT_KEY_REQUEST:Ljava/lang/String; = "req"

.field private static final STAT_KEY_SUCCEED:Ljava/lang/String; = "suc"

.field private static final STAT_KEY_TRAFFIC_SIZE_IN_KB:Ljava/lang/String; = "size"

.field private static final TAG:Ljava/lang/String; = "NetChannel.RemoteStorage.Counter"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mErrorCodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mExceedTrafficQuota:Z

.field private mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mHandler:Landroid/os/Handler;

.field private mJsonConverter:Lcom/google/gson/Gson;

.field private mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

.field private mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->debuggable()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 89
    new-instance v1, Landroid/os/Handler;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->getLooper(I)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;-><init>()V

    return-void
.end method

.method private apply()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private commitData()V
    .locals 18

    move-object/from16 v0, p0

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    .line 183
    iget-object v3, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 184
    iget-object v5, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide v7, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v9, v3, v7

    if-gez v9, :cond_0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    .line 186
    iget-object v7, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 188
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->needResetCounter(JJ)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    :cond_0
    iget-object v7, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 190
    iget-object v9, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    .line 191
    iget-object v11, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    .line 192
    iget-object v13, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    int-to-long v13, v13

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getErrorCodesInString()Ljava/lang/String;

    move-result-object v15

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->clearCounters()V

    move-wide/from16 v16, v11

    .line 197
    iget-object v11, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 198
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    const-string v2, "net_rs_date"

    invoke-interface {v1, v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const-class v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 208
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v11, "net_rs_stat"

    .line 209
    invoke-interface {v2, v11}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v11, "P00013"

    .line 210
    invoke-interface {v2, v11}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v11, "B005"

    .line 211
    invoke-interface {v2, v11}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 212
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pack"

    invoke-interface {v2, v12, v11}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 213
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "req"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 214
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "fail"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 215
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "suc"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 216
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "rej"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 217
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "size"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v3, "codes"

    .line 218
    invoke-interface {v2, v3, v15}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 219
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "date"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 220
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v2

    .line 208
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    :cond_1
    return-void
.end method

.method private debugInfo()V
    .locals 3

    .line 249
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RemoteStorage] Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 251
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 252
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Succeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 253
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Size(KB):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 254
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ErrorCodes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 255
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getErrorCodesInString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Net:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 257
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetChannel.RemoteStorage.Counter"

    .line 258
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ensureInitialized()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StorageCounter has not been initialized yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getErrorCodesInString()Ljava/lang/String;
    .locals 5

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 335
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;
    .locals 1

    .line 93
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    return-object v0
.end method

.method private initFromPreference(Landroid/content/SharedPreferences;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "net_rs_codes"

    const-string v1, ""

    .line 291
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;)V

    .line 294
    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 302
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    :cond_1
    return-object p1
.end method

.method public static isInternationVersion()Z
    .locals 3

    .line 361
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v0

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInternationVersion :\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netChannel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private needResetCounter(JJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmp-long p1, p1, p3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private releaseInfo()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficSize(KB):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastDate(Day):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetChannel.RemoteStorage.Counter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateErrorCodes(Ljava/lang/String;)V
    .locals 5

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 313
    :cond_0
    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    :cond_1
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    if-nez p1, :cond_4

    .line 323
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    .line 325
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "net_rs_codes"

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public clearCounters()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_request"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_failed"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_succeed"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "net_rs_rej"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 242
    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 244
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net_rs_codes"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void

    :catchall_0
    move-exception v0

    .line 244
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 271
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->commitData()V

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return v0
.end method

.method public increaseFailureWithCode(Ljava/lang/String;J)V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 134
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_failed"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v1, 0xa

    shr-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p2

    const-wide/32 v0, 0x4b000

    cmp-long p2, p2, v0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 137
    :goto_0
    iput-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 139
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->updateErrorCodes(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->apply()V

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->debugInfo()V

    return-void
.end method

.method public increaseRejectCount()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "net_rs_rej"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->apply()V

    .line 162
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->debugInfo()V

    return-void
.end method

.method public increaseRequestCount()V
    .locals 4

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->ensureInitialized()V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 129
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_request"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public increaseSucceedWithSize(J)V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v3, 0xa

    shr-long/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    const-wide/32 v2, 0x4b000

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 148
    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 150
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_succeed"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net_rs_size"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->apply()V

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->debugInfo()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    .line 97
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 101
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "net_rs_date"

    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 104
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "net_rs_request"

    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "net_rs_succeed"

    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "net_rs_failed"

    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "net_rs_size"

    invoke-interface {p1, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "net_rs_rej"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 116
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->initFromPreference(Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "NetChannel.RemoteStorage.Counter"

    const-string v1, "StorageCounter init failed!"

    .line 119
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->debugInfo()V

    .line 123
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->releaseInfo()V

    return-void
.end method

.method public isExceedTrafficQuota()Z
    .locals 4

    .line 166
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 168
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->needResetCounter(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    return v0
.end method

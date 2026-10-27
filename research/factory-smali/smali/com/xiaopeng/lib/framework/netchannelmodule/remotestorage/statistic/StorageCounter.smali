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

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 86
    new-instance v1, Landroid/os/Handler;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->getLooper(I)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;-><init>()V

    return-void
.end method

.method private apply()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    :cond_0
    return-void
.end method

.method private commitData()V
    .locals 22

    .line 177
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    .line 178
    .local v1, "currentDate":J
    iget-object v3, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 179
    .local v3, "requestCount":J
    iget-object v5, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 181
    .local v5, "trafficSize":J
    const-wide v7, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v9, v3, v7

    if-gez v9, :cond_1

    cmp-long v7, v5, v7

    if-gez v7, :cond_1

    iget-object v7, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 183
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    goto/16 :goto_1

    .line 184
    :cond_1
    :goto_0
    iget-object v7, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 185
    .local v7, "success":J
    iget-object v9, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    .line 186
    .local v9, "fail":J
    iget-object v11, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    .line 187
    .local v11, "lastDate":J
    iget-object v13, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    int-to-long v13, v13

    .line 188
    .local v13, "reject":J
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getErrorCodesInString()Ljava/lang/String;

    move-result-object v15

    .line 190
    .local v15, "errorCodes":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->clearCounters()V

    .line 192
    move-wide/from16 v16, v11

    iget-object v11, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    .end local v11    # "lastDate":J
    .local v16, "lastDate":J
    invoke-virtual {v11, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 193
    iget-object v11, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v12, "net_rs_date"

    move-wide/from16 v18, v1

    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    .end local v1    # "currentDate":J
    .local v18, "currentDate":J
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-interface {v11, v12, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v1

    .line 200
    .local v1, "international":Z
    if-nez v1, :cond_2

    .line 202
    const-class v2, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v2

    const-class v11, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v2, v11}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 203
    .local v2, "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v11

    const-string v12, "net_rs_stat"

    .line 204
    invoke-interface {v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v11

    const-string v12, "P00013"

    .line 205
    invoke-interface {v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v11

    const-string v12, "B005"

    .line 206
    invoke-interface {v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v11

    const-string v12, "pack"

    .line 207
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v12, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    const-string v11, "req"

    .line 208
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    const-string v11, "fail"

    .line 209
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    const-string v11, "suc"

    .line 210
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    const-string v11, "rej"

    .line 211
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    const-string v11, "size"

    .line 212
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    const-string v11, "codes"

    .line 213
    invoke-interface {v0, v11, v15}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    const-string v11, "date"

    .line 214
    move-wide/from16 v20, v3

    move-wide/from16 v3, v16

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .end local v16    # "lastDate":J
    .local v3, "lastDate":J
    .local v20, "requestCount":J
    invoke-interface {v0, v11, v12}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v0

    .line 203
    invoke-interface {v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    .end local v1    # "international":Z
    .end local v2    # "dataLogService":Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;
    .end local v3    # "lastDate":J
    .end local v7    # "success":J
    .end local v9    # "fail":J
    .end local v13    # "reject":J
    .end local v15    # "errorCodes":Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v20    # "requestCount":J
    .local v3, "requestCount":J
    :cond_2
    move-wide/from16 v20, v3

    .end local v3    # "requestCount":J
    .restart local v20    # "requestCount":J
    :goto_1
    return-void
.end method

.method private debugInfo()V
    .locals 3

    .line 244
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RemoteStorage] Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 246
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 247
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Succeed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 248
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Size(KB):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 249
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ErrorCodes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getErrorCodesInString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Net:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "message":Ljava/lang/String;
    const-string v1, "NetChannel.RemoteStorage.Counter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private ensureInitialized()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 274
    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "StorageCounter has not been initialized yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getErrorCodesInString()Ljava/lang/String;
    .locals 5

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "builder":Ljava/lang/StringBuilder;
    monitor-enter p0

    .line 320
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

    .line 321
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 323
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 323
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;
    .locals 1

    .line 90
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    return-object v0
.end method

.method private initFromPreference(Landroid/content/SharedPreferences;)Ljava/util/HashMap;
    .locals 4
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "errorCodesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v1, "net_rs_codes"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "codes":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;)V

    .line 282
    invoke-virtual {v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 284
    .local v2, "type":Ljava/lang/reflect/Type;
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 286
    goto :goto_0

    .line 285
    :catch_0
    move-exception v3

    .line 289
    .end local v2    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 290
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, v2

    .line 293
    :cond_1
    return-object v0
.end method

.method public static isInternationVersion()Z
    .locals 4

    .line 339
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v0

    .line 341
    .local v0, "internation":Z
    const-string v1, "netChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInternationVersion :\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v0
.end method

.method private updateErrorCodes(Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    return-void

    .line 301
    :cond_0
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 303
    .local v0, "hasCode":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    .line 304
    :cond_1
    const-wide/16 v1, 0x0

    .line 305
    .local v1, "cnt":J
    if-eqz v0, :cond_2

    .line 306
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v1, v3

    .line 308
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v1    # "cnt":J
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    if-nez v1, :cond_4

    .line 311
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "net_rs_codes"

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    .end local v0    # "hasCode":Z
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearCounters()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_request"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_failed"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_succeed"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "net_rs_rej"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    iput-boolean v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 239
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net_rs_codes"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 259
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->commitData()V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    :cond_0
    return v1
.end method

.method public increaseFailureWithCode(Ljava/lang/String;J)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 129
    .local v0, "count":J
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_failed"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v3, 0xa

    shr-long v3, p2, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p2

    .line 132
    const-wide/32 v2, 0x4b000

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 134
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->updateErrorCodes(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->apply()V

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->debugInfo()V

    .line 138
    return-void
.end method

.method public increaseRejectCount()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 154
    .local v0, "count":I
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "net_rs_rej"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->apply()V

    .line 157
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->debugInfo()V

    .line 158
    return-void
.end method

.method public increaseRequestCount()V
    .locals 4

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->ensureInitialized()V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 124
    .local v0, "count":J
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_request"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 125
    return-void
.end method

.method public increaseSucceedWithSize(J)V
    .locals 5
    .param p1, "size"    # J

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 142
    .local v0, "count":J
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v3, 0xa

    shr-long v3, p1, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    .line 143
    const-wide/32 v2, 0x4b000

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 145
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_succeed"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 146
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_rs_size"

    invoke-interface {v2, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->apply()V

    .line 149
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->debugInfo()V

    .line 150
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    .line 98
    .local v1, "currentDate":J
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v4, "net_rs_date"

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 100
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 102
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 104
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mJsonConverter:Lcom/google/gson/Gson;

    .line 108
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRequestCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v7, "net_rs_request"

    invoke-interface {v0, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 109
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mSucceedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v7, "net_rs_succeed"

    invoke-interface {v0, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 110
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v7, "net_rs_failed"

    invoke-interface {v0, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 111
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mTrafficSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v7, "net_rs_size"

    invoke-interface {v0, v7, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 112
    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mRejectCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v4, "net_rs_rej"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 113
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->initFromPreference(Landroid/content/SharedPreferences;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mErrorCodes:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v3

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->debugInfo()V

    .line 119
    return-void
.end method

.method public isExceedTrafficQuota()Z
    .locals 4

    .line 161
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 163
    .local v0, "currentDate":J
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 164
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    .line 167
    .end local v0    # "currentDate":J
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->mExceedTrafficQuota:Z

    return v0
.end method

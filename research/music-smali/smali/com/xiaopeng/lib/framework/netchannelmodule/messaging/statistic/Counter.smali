.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;
.super Ljava/lang/Object;
.source "Counter.java"


# static fields
.field private static final COMMIT_ACCORDING_TO_DATE:Z = false

.field private static final DEBUG:Z

.field private static final EVENT_NAME:Ljava/lang/String; = "net_mqtt_stat"

.field private static final KEY_INIT_FAILED:Ljava/lang/String; = "net_mqtt_init_failed"

.field private static final KEY_LAST_DATE:Ljava/lang/String; = "net_mqtt_date"

.field private static final KEY_PUBLISHED:Ljava/lang/String; = "net_mqtt_pub"

.field private static final KEY_PUBLISHED_SIZE:Ljava/lang/String; = "net_mqtt_pub_size"

.field private static final KEY_PUBLISH_FAILED:Ljava/lang/String; = "net_mqtt_pub_failed"

.field private static final KEY_RECEIVED:Ljava/lang/String; = "net_mqtt_recv"

.field private static final KEY_TRY_PUBLISH:Ljava/lang/String; = "net_mqtt_try_pub"

.field private static final MAX_VALUE_THRESHOLD:J = 0x3fffffffffffffffL

.field private static final MESSAGE_APPLY_DELAY:J = 0x2710L

.field private static final MIN_COMMIT_COUNT:J = 0xaL

.field private static final MOLE_TRAFFIC_MQTT_BUTTON_ID:Ljava/lang/String; = "B003"

.field private static final ONE_DAY_MILLS:J = 0x5265c00L

.field private static final STAT_KEY_INIT_FAILED:Ljava/lang/String; = "init_fail"

.field private static final STAT_KEY_LAST_DATE:Ljava/lang/String; = "date"

.field private static final STAT_KEY_NETWORK_TYPE:Ljava/lang/String; = "net"

.field private static final STAT_KEY_PACKAGE_NAME:Ljava/lang/String; = "pack"

.field private static final STAT_KEY_PUBLISHED:Ljava/lang/String; = "pub"

.field private static final STAT_KEY_PUBLISHED_SIZE_KB:Ljava/lang/String; = "pub_size"

.field private static final STAT_KEY_PUBLISH_FAILED:Ljava/lang/String; = "fail"

.field private static final STAT_KEY_RECEIVED:Ljava/lang/String; = "recv"

.field private static final STAT_KEY_TRY_PUBLISH:Ljava/lang/String; = "try"

.field private static final TAG:Ljava/lang/String; = "NetChannel-Counter"

.field private static final UNPUBLISHED_COUNT_THRESHOLD:J = 0x80L


# instance fields
.field private final mApplyRunnable:Ljava/lang/Runnable;

.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

.field private final mInitFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mNeedToPost:Z

.field private final mPublishFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mPublishedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mPublishedSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mReceivedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mTryToPublishCount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->debuggable()Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;Z)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mApplyRunnable:Ljava/lang/Runnable;

    .line 91
    iput-boolean p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mNeedToPost:Z

    .line 92
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    .line 94
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 95
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/32 v0, 0x5265c00

    div-long/2addr p2, v0

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "net_mqtt_date"

    invoke-interface {p1, v1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    invoke-direct {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 100
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mTryToPublishCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 102
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mReceivedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 104
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mInitFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 105
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    :try_start_0
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mTryToPublishCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p3, "net_mqtt_try_pub"

    invoke-interface {p1, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 109
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p3, "net_mqtt_pub_failed"

    invoke-interface {p1, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 110
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p3, "net_mqtt_pub"

    invoke-interface {p1, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 111
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mReceivedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p3, "net_mqtt_recv"

    invoke-interface {p1, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 112
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mInitFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p3, "net_mqtt_init_failed"

    invoke-interface {p1, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 113
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p3, "net_mqtt_pub_size"

    invoke-interface {p1, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->debugInfo()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->tryToCommitData(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method private apply()V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mApplyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mApplyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private debugInfo()V
    .locals 4

    .line 243
    sget-boolean v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MQTTSTATUS] try to pub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mTryToPublishCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 245
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " published:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 246
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " publish fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 247
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " received:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mReceivedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 248
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " init fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mInitFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 249
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " published size(KB):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 250
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const/16 v3, 0xa

    shr-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " net:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetChannel-Counter"

    .line 253
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private tryToCommitData(Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    .line 182
    iget-object v3, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mTryToPublishCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 183
    iget-object v5, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mReceivedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    .line 184
    iget-object v7, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    if-nez p1, :cond_0

    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v9, v7, v9

    if-gez v9, :cond_0

    .line 186
    iget-object v9, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 188
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v9, v9, v1

    if-gez v9, :cond_1

    .line 189
    :cond_0
    iget-object v9, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    .line 190
    iget-object v11, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    .line 191
    iget-object v13, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mInitFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    .line 192
    iget-object v15, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->clearCounters()V

    move-wide/from16 v17, v15

    .line 196
    iget-object v15, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v15, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 197
    iget-object v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mLastDate:Ljava/util/concurrent/atomic/AtomicLong;

    move-wide v15, v13

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    const-string v2, "net_mqtt_date"

    invoke-interface {v1, v2, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 198
    iget-boolean v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mNeedToPost:Z

    if-eqz v1, :cond_1

    add-long v1, v3, v5

    const-wide/16 v13, 0xa

    cmp-long v1, v1, v13

    if-lez v1, :cond_1

    .line 202
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    const-class v1, Lany;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    .line 206
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->buildMoleEvent()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v13, "net_mqtt_stat"

    .line 207
    invoke-interface {v2, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setEvent(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v13, "P00013"

    .line 208
    invoke-interface {v2, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setPageId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const-string v13, "B003"

    .line 209
    invoke-interface {v2, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setButtonId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 210
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationSimpleName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "pack"

    invoke-interface {v2, v14, v13}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 211
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "try"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 212
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "fail"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 213
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "pub"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    const/16 v3, 0xa

    shr-long v3, v7, v3

    .line 214
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "pub_size"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 215
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "recv"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 216
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "init_fail"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 217
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "date"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 218
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getNetworkType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "net"

    invoke-interface {v2, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->setProperty(Ljava/lang/String;Ljava/lang/Number;)Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;

    move-result-object v2

    .line 219
    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEventBuilder;->build()Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;

    move-result-object v2

    .line 206
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IMoleEvent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearCounters()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mTryToPublishCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_try_pub"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_pub"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_pub_failed"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_pub_size"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mReceivedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_recv"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mInitFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_init_failed"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public commitForcibly()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mApplyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mHandler:Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mApplyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/BackgroundHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public increaseInitFailedCount()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mInitFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 164
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_init_failed"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->debugInfo()V

    return-void
.end method

.method public increasePublishFailureCount()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishFailedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 158
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_pub_failed"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->debugInfo()V

    return-void
.end method

.method public increasePublishedCountWithSize(J)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 140
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_pub"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "net_mqtt_pub_size"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->debugInfo()V

    return-void
.end method

.method public increaseReceivedCount()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mReceivedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 148
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_recv"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x2

    shr-long v3, v0, v2

    shl-long v2, v3, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->apply()V

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->debugInfo()V

    return-void
.end method

.method public increaseTryingToPublish()V
    .locals 7

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mTryToPublishCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 123
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mPublishedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x80

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x6

    shr-long v5, v2, v4

    shl-long v4, v5, v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_0

    .line 127
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "un publish too large"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MqttChannel;->disconnectedDueToException(Ljava/lang/Throwable;)V

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "net_mqtt_try_pub"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x2

    shr-long v3, v0, v2

    shl-long v2, v3, v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->apply()V

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->debugInfo()V

    return-void
.end method

.class public Lcom/android/car/XpUpdateTimeService;
.super Ljava/lang/Object;
.source "XpUpdateTimeService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;
    }
.end annotation


# static fields
.field private static final ACTION_POLL:Ljava/lang/String; = "com.android.car.XpUpdateTimeService.action.POLL"

.field private static final ID_TBOX_CONNECT_STATE:I = 0x2140100f

.field private static final ID_TBOX_SYNC_UTC_TIME:I = 0x21511049

.field private static final ID_TBOX_TIME_INFO:I = 0x2141103b

.field private static final INVALID_CAN_DATE_TIME:[I

.field private static final POLL_REQUEST:I

.field public static final SINGLE_CHECK_SYNC_TBOX_TIME_TIMEOUT:J

.field public static final TOTAL_CHECK_SYNC_TBOX_TIME_TIMEOUT:J


# instance fields
.field private final TBOX_CAN_UPDATE_TIME:Z

.field private final isFactory:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mLogTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPendingPollIntent:Landroid/app/PendingIntent;

.field private final mPollingIntervalMs:J

.field private final mPropertyService:Lcom/android/car/CarPropertyService;

.field private mTboxTimeSyncTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTimeErrorThresholdMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/car/XpUpdateTimeService;->TOTAL_CHECK_SYNC_TBOX_TIME_TIMEOUT:J

    .line 55
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/car/XpUpdateTimeService;->SINGLE_CHECK_SYNC_TBOX_TIME_TIMEOUT:J

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/XpUpdateTimeService;->INVALID_CAN_DATE_TIME:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7df
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/car/CarPropertyService;Landroid/content/Context;)V
    .locals 5
    .param p1, "service"    # Lcom/android/car/CarPropertyService;
    .param p2, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSyncTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mLogTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Lcom/android/car/XpUpdateTimeService$1;

    invoke-direct {v0, p0}, Lcom/android/car/XpUpdateTimeService$1;-><init>(Lcom/android/car/XpUpdateTimeService;)V

    iput-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 86
    iput-object p1, p0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 87
    iput-object p2, p0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/car/XpUpdateTimeService;->mTimeErrorThresholdMs:J

    .line 90
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/car/XpUpdateTimeService;->mPollingIntervalMs:J

    .line 92
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.car.XpUpdateTimeService.action.POLL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v0, "pollIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/XpUpdateTimeService;->mPendingPollIntent:Landroid/app/PendingIntent;

    .line 95
    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const-string v2, "persist.sys.tbox_update_time"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :goto_0
    iput-boolean v2, p0, Lcom/android/car/XpUpdateTimeService;->TBOX_CAN_UPDATE_TIME:Z

    .line 96
    const-string v2, "ro.xiaopeng.special"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    move v1, v3

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/car/XpUpdateTimeService;->isFactory:Z

    .line 97
    const-string v1, "CAR.UPDATETIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TBOX_CAN_UPDATE_TIME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/car/XpUpdateTimeService;->TBOX_CAN_UPDATE_TIME:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFactory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/car/XpUpdateTimeService;->isFactory:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/XpUpdateTimeService;)Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpUpdateTimeService;

    .line 48
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandler:Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/XpUpdateTimeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpUpdateTimeService;
    .param p1, "x1"    # Z

    .line 48
    invoke-direct {p0, p1}, Lcom/android/car/XpUpdateTimeService;->syncTboxTime(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/XpUpdateTimeService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpUpdateTimeService;

    .line 48
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/XpUpdateTimeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpUpdateTimeService;
    .param p1, "x1"    # Z

    .line 48
    invoke-direct {p0, p1}, Lcom/android/car/XpUpdateTimeService;->setTboxTimeSyncTimeout(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/XpUpdateTimeService;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpUpdateTimeService;
    .param p1, "x1"    # [J

    .line 48
    invoke-direct {p0, p1}, Lcom/android/car/XpUpdateTimeService;->dispatchTboxTimeSyncEvent([J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/XpUpdateTimeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpUpdateTimeService;

    .line 48
    invoke-direct {p0}, Lcom/android/car/XpUpdateTimeService;->cancelTimeSyncAlarm()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/XpUpdateTimeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpUpdateTimeService;

    .line 48
    invoke-direct {p0}, Lcom/android/car/XpUpdateTimeService;->removeSyncTboxTimeTimeoutMessages()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/XpUpdateTimeService;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/XpUpdateTimeService;
    .param p1, "x1"    # [I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/car/XpUpdateTimeService;->dispatchCanTimeEvent([I)V

    return-void
.end method

.method private cancelTimeSyncAlarm()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/car/XpUpdateTimeService;->mPendingPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 279
    return-void
.end method

.method private dispatchCanTimeEvent([I)V
    .locals 9
    .param p1, "array"    # [I

    .line 286
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 287
    invoke-direct {p0, p1}, Lcom/android/car/XpUpdateTimeService;->isInvalidDateTime([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "CAR.UPDATETIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore invalid can time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    .line 291
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 292
    .local v0, "c":Ljava/util/Calendar;
    aget v3, p1, v1

    aget v1, p1, v2

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x2

    aget v5, p1, v1

    const/4 v1, 0x3

    aget v6, p1, v1

    const/4 v1, 0x4

    aget v7, p1, v1

    const/4 v1, 0x5

    aget v8, p1, v1

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 293
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 294
    .local v1, "when":J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 296
    .local v3, "skew":J
    iget-wide v5, p0, Lcom/android/car/XpUpdateTimeService;->mTimeErrorThresholdMs:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 297
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 298
    const-string v5, "CAR.UPDATETIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update can time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v5, p0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.TIME_SET"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 302
    :cond_1
    const-string v5, "CAR.UPDATETIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update can time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v3    # "skew":J
    :cond_2
    :goto_0
    goto :goto_1

    .line 307
    :cond_3
    const-string v3, "CAR.UPDATETIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring can time update due to invalid data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "when":J
    :goto_1
    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mLogTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    const-string v0, "CAR.UPDATETIME"

    const-string v1, "Drop the can time due to the tbox time synced"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_5
    :goto_2
    return-void
.end method

.method private dispatchTboxTimeSyncEvent([J)V
    .locals 23
    .param p1, "array"    # [J

    move-object/from16 v0, p0

    .line 194
    const/4 v1, 0x0

    aget-wide v2, p1, v1

    .line 195
    .local v2, "tz":J
    const/4 v4, 0x1

    aget-wide v5, p1, v4

    .line 196
    .local v5, "timeS":J
    const/4 v7, 0x2

    aget-wide v7, p1, v7

    .line 197
    .local v7, "timeMs":J
    const-wide/32 v9, 0x7fffffff

    cmp-long v11, v5, v9

    if-gez v11, :cond_d

    .line 198
    const-wide/16 v11, 0x3e8

    mul-long/2addr v11, v5

    add-long/2addr v11, v7

    .line 199
    .local v11, "totalMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 200
    .local v13, "skew":J
    iget-boolean v1, v0, Lcom/android/car/XpUpdateTimeService;->TBOX_CAN_UPDATE_TIME:Z

    if-eqz v1, :cond_2

    move-wide v15, v5

    iget-wide v4, v0, Lcom/android/car/XpUpdateTimeService;->mTimeErrorThresholdMs:J

    .end local v5    # "timeS":J
    .local v15, "timeS":J
    cmp-long v1, v13, v4

    if-ltz v1, :cond_3

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/android/car/XpUpdateTimeService;->isWifi()Z

    move-result v1

    .line 203
    .local v1, "isWifi":Z
    iget-boolean v4, v0, Lcom/android/car/XpUpdateTimeService;->isFactory:Z

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    :cond_0
    invoke-static {v11, v12}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    const-string v4, "CAR.UPDATETIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update tbox time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v4, "sys.xiaopeng.usetboxtime"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v4, v0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.TIME_SET"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v4, "CAR.UPDATETIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update tbox time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " failed, isWifi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isFactory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/car/XpUpdateTimeService;->isFactory:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "isWifi":Z
    goto :goto_0

    .line 213
    .end local v15    # "timeS":J
    .restart local v5    # "timeS":J
    :cond_2
    move-wide v15, v5

    .end local v5    # "timeS":J
    .restart local v15    # "timeS":J
    :cond_3
    :goto_0
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    .line 214
    .local v4, "rawTboxRawOffsetMs":J
    cmp-long v1, v4, v9

    if-gez v1, :cond_b

    .line 215
    long-to-int v1, v4

    .line 216
    .local v1, "tboxRawOffsetMs":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 217
    .local v6, "currentTimeZoneOffsetMs":I
    if-eq v1, v6, :cond_a

    .line 218
    invoke-static {v1}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, "zones":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 220
    .local v10, "selectZone":Ljava/lang/String;
    if-eqz v9, :cond_8

    move-wide/from16 v17, v4

    array-length v4, v9

    .end local v4    # "rawTboxRawOffsetMs":J
    .local v17, "rawTboxRawOffsetMs":J
    if-lez v4, :cond_7

    .line 221
    array-length v4, v9

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_7

    move/from16 v19, v4

    aget-object v4, v9, v5

    .line 222
    .local v4, "zone":Ljava/lang/String;
    move/from16 v20, v6

    const-string v6, "Etc/GMT"

    .end local v6    # "currentTimeZoneOffsetMs":I
    .local v20, "currentTimeZoneOffsetMs":I
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 223
    move-object v10, v4

    .line 224
    nop

    .line 236
    move-wide/from16 v21, v7

    goto :goto_3

    .line 226
    :cond_4
    if-nez v10, :cond_5

    .line 227
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 229
    .local v6, "timezone":Ljava/util/TimeZone;
    move-wide/from16 v21, v7

    invoke-virtual {v6, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    .end local v7    # "timeMs":J
    .local v21, "timeMs":J
    if-ne v7, v1, :cond_6

    .line 230
    move-object v10, v4

    .end local v4    # "zone":Ljava/lang/String;
    .end local v6    # "timezone":Ljava/util/TimeZone;
    goto :goto_2

    .line 221
    .end local v21    # "timeMs":J
    .restart local v7    # "timeMs":J
    :cond_5
    move-wide/from16 v21, v7

    .end local v7    # "timeMs":J
    .restart local v21    # "timeMs":J
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v19

    move/from16 v6, v20

    move-wide/from16 v7, v21

    goto :goto_1

    .line 236
    .end local v20    # "currentTimeZoneOffsetMs":I
    .end local v21    # "timeMs":J
    .local v6, "currentTimeZoneOffsetMs":I
    .restart local v7    # "timeMs":J
    :cond_7
    move/from16 v20, v6

    move-wide/from16 v21, v7

    .end local v6    # "currentTimeZoneOffsetMs":I
    .end local v7    # "timeMs":J
    .restart local v20    # "currentTimeZoneOffsetMs":I
    .restart local v21    # "timeMs":J
    goto :goto_3

    .end local v17    # "rawTboxRawOffsetMs":J
    .end local v20    # "currentTimeZoneOffsetMs":I
    .end local v21    # "timeMs":J
    .local v4, "rawTboxRawOffsetMs":J
    .restart local v6    # "currentTimeZoneOffsetMs":I
    .restart local v7    # "timeMs":J
    :cond_8
    move-wide/from16 v17, v4

    move/from16 v20, v6

    move-wide/from16 v21, v7

    .end local v4    # "rawTboxRawOffsetMs":J
    .end local v6    # "currentTimeZoneOffsetMs":I
    .end local v7    # "timeMs":J
    .restart local v17    # "rawTboxRawOffsetMs":J
    .restart local v20    # "currentTimeZoneOffsetMs":I
    .restart local v21    # "timeMs":J
    :goto_3
    if-eqz v10, :cond_9

    .line 237
    iget-object v4, v0, Lcom/android/car/XpUpdateTimeService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 238
    const-string v4, "CAR.UPDATETIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set timezone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v4, "sys.xiaopeng.tbox_tz"

    const-wide/16 v5, 0xf

    div-long v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 241
    :cond_9
    const-string v4, "CAR.UPDATETIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timezone offset(minute) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "tboxRawOffsetMs":I
    .end local v9    # "zones":[Ljava/lang/String;
    .end local v10    # "selectZone":Ljava/lang/String;
    .end local v20    # "currentTimeZoneOffsetMs":I
    goto :goto_4

    .line 244
    .end local v17    # "rawTboxRawOffsetMs":J
    .end local v21    # "timeMs":J
    .restart local v4    # "rawTboxRawOffsetMs":J
    .restart local v7    # "timeMs":J
    :cond_a
    move-wide/from16 v17, v4

    move-wide/from16 v21, v7

    .end local v4    # "rawTboxRawOffsetMs":J
    .end local v7    # "timeMs":J
    .restart local v17    # "rawTboxRawOffsetMs":J
    .restart local v21    # "timeMs":J
    :goto_4
    goto :goto_5

    .line 245
    .end local v17    # "rawTboxRawOffsetMs":J
    .end local v21    # "timeMs":J
    .restart local v4    # "rawTboxRawOffsetMs":J
    .restart local v7    # "timeMs":J
    :cond_b
    move-wide/from16 v17, v4

    move-wide/from16 v21, v7

    .end local v4    # "rawTboxRawOffsetMs":J
    .end local v7    # "timeMs":J
    .restart local v17    # "rawTboxRawOffsetMs":J
    .restart local v21    # "timeMs":J
    const-string v1, "CAR.UPDATETIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timezone offset(minute) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " is invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_5
    iget-object v1, v0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    .line 249
    .local v1, "ret":Z
    if-eqz v1, :cond_c

    .line 250
    iget-object v4, v0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v5, 0x2141103b

    iget-object v6, v0, Lcom/android/car/XpUpdateTimeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v5, v6}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 252
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/car/XpUpdateTimeService;->removeSyncTboxTimeTimeoutMessages()V

    .line 253
    .end local v1    # "ret":Z
    .end local v11    # "totalMs":J
    .end local v13    # "skew":J
    .end local v17    # "rawTboxRawOffsetMs":J
    goto :goto_6

    .line 254
    .end local v15    # "timeS":J
    .end local v21    # "timeMs":J
    .restart local v5    # "timeS":J
    .restart local v7    # "timeMs":J
    :cond_d
    move-wide v15, v5

    move-wide/from16 v21, v7

    .end local v5    # "timeS":J
    .end local v7    # "timeMs":J
    .restart local v15    # "timeS":J
    .restart local v21    # "timeMs":J
    const-string v1, "CAR.UPDATETIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring tbox time update due to invalid data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_6
    iget-wide v4, v0, Lcom/android/car/XpUpdateTimeService;->mPollingIntervalMs:J

    invoke-direct {v0, v4, v5}, Lcom/android/car/XpUpdateTimeService;->resetAlarm(J)V

    .line 257
    return-void
.end method

.method private isInvalidDateTime([I)Z
    .locals 5
    .param p1, "array"    # [I

    .line 316
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    array-length v1, p1

    sget-object v2, Lcom/android/car/XpUpdateTimeService;->INVALID_CAN_DATE_TIME:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    sget-object v1, Lcom/android/car/XpUpdateTimeService;->INVALID_CAN_DATE_TIME:[I

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    return v0

    .line 325
    :cond_1
    :try_start_0
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 326
    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    aget v3, p1, v0

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 327
    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x2

    aget v3, p1, v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 328
    sget-object v1, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x3

    aget v3, p1, v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 329
    sget-object v1, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x4

    aget v3, p1, v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    .line 330
    sget-object v1, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    const/4 v3, 0x5

    aget v3, p1, v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    nop

    .line 334
    return v2

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    return v0

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return v0
.end method

.method private isWifi()Z
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 261
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 262
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const/4 v2, 0x1

    return v2

    .line 266
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private registerForAlarms()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/car/XpUpdateTimeService$2;

    invoke-direct {v1, p0}, Lcom/android/car/XpUpdateTimeService$2;-><init>(Lcom/android/car/XpUpdateTimeService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.car.XpUpdateTimeService.action.POLL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method private removeSyncTboxTimeTimeoutMessages()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandler:Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;

    invoke-virtual {v0}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->removeSyncTboxTimeTimeoutMessages()V

    .line 283
    return-void
.end method

.method private resetAlarm(J)V
    .locals 7
    .param p1, "intervalMs"    # J

    .line 270
    invoke-direct {p0}, Lcom/android/car/XpUpdateTimeService;->cancelTimeSyncAlarm()V

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 272
    .local v0, "now":J
    add-long v2, v0, p1

    .line 273
    .local v2, "next":J
    iget-object v4, p0, Lcom/android/car/XpUpdateTimeService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/car/XpUpdateTimeService;->mPendingPollIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 275
    return-void
.end method

.method private setTboxTimeSyncTimeout(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSyncTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    return-void
.end method

.method private syncTboxTime(Z)V
    .locals 6
    .param p1, "checkTimeout"    # Z

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21511049

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/car/CarPropertyService;->setLongVectorProperty(II[J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-wide v0, p0, Lcom/android/car/XpUpdateTimeService;->mPollingIntervalMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/car/XpUpdateTimeService;->resetAlarm(J)V

    goto :goto_1

    .line 135
    :cond_0
    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandler:Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;

    sget-wide v1, Lcom/android/car/XpUpdateTimeService;->TOTAL_CHECK_SYNC_TBOX_TIME_TIMEOUT:J

    invoke-virtual {v0, v1, v2}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->sendTotalSyncTboxTimeTimeout(J)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSyncTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-wide v0, p0, Lcom/android/car/XpUpdateTimeService;->mPollingIntervalMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/car/XpUpdateTimeService;->resetAlarm(J)V

    goto :goto_1

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandler:Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;

    sget-wide v1, Lcom/android/car/XpUpdateTimeService;->SINGLE_CHECK_SYNC_TBOX_TIME_TIMEOUT:J

    invoke-virtual {v0, v1, v2}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->sendSingleSyncTboxTimeTimeout(J)V

    .line 148
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 180
    const-string v0, "**dump XpUpdateTimeService**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string v0, "    PollingIntervalMs: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 182
    iget-wide v0, p0, Lcom/android/car/XpUpdateTimeService;->mPollingIntervalMs:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 183
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 185
    const-string v0, "    TimeErrorThresholdMs: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    iget-wide v0, p0, Lcom/android/car/XpUpdateTimeService;->mTimeErrorThresholdMs:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 187
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 189
    const-string v0, "    mTboxTimeSynced: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mTboxTimeSynced:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 191
    return-void
.end method

.method public init()V
    .locals 4

    .line 112
    invoke-direct {p0}, Lcom/android/car/XpUpdateTimeService;->registerForAlarms()V

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAR.UPDATETIME"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 115
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    new-instance v0, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;

    iget-object v1, p0, Lcom/android/car/XpUpdateTimeService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;-><init>(Lcom/android/car/XpUpdateTimeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandler:Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2141103b

    iget-object v2, p0, Lcom/android/car/XpUpdateTimeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 120
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x21511049

    iget-object v2, p0, Lcom/android/car/XpUpdateTimeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x2140100f

    iget-object v2, p0, Lcom/android/car/XpUpdateTimeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 123
    return-void

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 4

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandler:Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/XpUpdateTimeService$UpdateTimeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/car/XpUpdateTimeService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 160
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 163
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "CAR.UPDATETIME"

    const-string v3, "Timeout while joining for handler thread to join."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x21511049

    iget-object v3, p0, Lcom/android/car/XpUpdateTimeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x2141103b

    iget-object v3, p0, Lcom/android/car/XpUpdateTimeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 169
    iget-object v1, p0, Lcom/android/car/XpUpdateTimeService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x2140100f

    iget-object v3, p0, Lcom/android/car/XpUpdateTimeService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v1, v2, v3}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 171
    return-void

    .line 160
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public vehicleHalReconnected()V
    .locals 0

    .line 176
    return-void
.end method

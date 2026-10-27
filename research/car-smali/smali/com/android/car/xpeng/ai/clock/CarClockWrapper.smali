.class public Lcom/android/car/xpeng/ai/clock/CarClockWrapper;
.super Ljava/lang/Object;
.source "CarClockWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field public static final ACTION_ALARM_WAKE_UP:Ljava/lang/String; = "com.xiaopeng.car.ai.ACTION_ALARM_WAKE_UP"

.field public static final EXTRA_ALARM_CLOCK_ID:Ljava/lang/String; = "extra_clock_id"

.field public static final EXTRA_ALARM_REQUEST_CODE:Ljava/lang/String; = "extra_request_code"

.field public static final INTERVAL_WEEK:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "CarClockWrapper"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mClockCycleAlarmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mContext:Landroid/content/Context;

    .line 42
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 43
    return-void
.end method

.method private addAlarm(Ljava/lang/String;JJILandroid/os/Bundle;)V
    .locals 24
    .param p1, "clockId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "whenWeek"    # I
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p6

    .line 111
    move-object/from16 v12, p7

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "CarClockWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAlarm: clockId invalid. clockId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, v9, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 116
    .local v0, "alarmCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    if-nez v0, :cond_1

    .line 117
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 118
    iget-object v1, v9, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .end local v0    # "alarmCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    .local v13, "alarmCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    :cond_1
    move-object v13, v0

    const-wide/32 v0, 0xea60

    sub-long v14, p2, v0

    .line 123
    .end local p2    # "timestamp":J
    .local v14, "timestamp":J
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/PendingIntent;

    .line 124
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v16, :cond_2

    .line 125
    const-string v0, "CarClockWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAlarm: pendingIntent exist! clockId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " whenWeek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object v0, v9

    move-object v1, v10

    move-wide v2, v14

    move-wide/from16 v4, p4

    move v6, v11

    move-object v7, v12

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->modifyAlarm(Ljava/lang/String;JJILandroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 127
    return-void

    .line 129
    :cond_2
    iget-object v0, v9, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mAtomicId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 130
    .local v0, "requestCode":I
    invoke-direct {v9, v10, v0}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->newAlarmIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_3

    .line 132
    invoke-virtual {v1, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    :cond_3
    iget-object v2, v9, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 137
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v3, v9, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    const-wide/16 v18, 0x0

    const/16 v23, 0x0

    move-wide v5, v14

    move-object v14, v3

    .end local v14    # "timestamp":J
    .local v5, "timestamp":J
    move v15, v4

    move-wide/from16 v16, v5

    move-wide/from16 v20, p4

    move-object/from16 v22, v2

    invoke-virtual/range {v14 .. v23}, Landroid/app/AlarmManager;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 138
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v3, "CarClockWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAlarm: success. clockId:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " whenWeek:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " time:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/car/xpeng/ai/clock/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " requestCode:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method private newAlarmIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .param p1, "clockId"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/car/xpeng/ai/clock/CarAlarmReceiverService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaopeng.car.ai.ACTION_ALARM_WAKE_UP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "extra_clock_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "extra_request_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    return-object v0
.end method


# virtual methods
.method public addCycleAlarm(Ljava/lang/String;JILandroid/os/Bundle;)V
    .locals 26
    .param p1, "clockId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "cycle"    # I
    .param p5, "bundle"    # Landroid/os/Bundle;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move/from16 v12, p4

    .line 46
    const-string v0, "CarClockWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCycleAlarm() called with: clockId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], timestamp = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Lcom/android/car/xpeng/ai/clock/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], cycle = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], bundle = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "CarClockWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCycleAlarm: clock invalid. clockId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 52
    :cond_0
    iget-object v0, v8, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 53
    .local v0, "alarmCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    if-nez v0, :cond_1

    .line 54
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 55
    iget-object v1, v8, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v0    # "alarmCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    .local v14, "alarmCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    :cond_1
    move-object v14, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 58
    .local v15, "now":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 59
    const/16 v7, 0xd

    const/4 v6, 0x0

    invoke-virtual {v15, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 60
    const/4 v4, 0x7

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 61
    .local v16, "nowWeek":I
    const-wide/32 v17, 0xea60

    if-nez v12, :cond_4

    .line 62
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 63
    .local v1, "week":I
    invoke-virtual {v8, v9, v1}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->removeAlarm(Ljava/lang/String;I)V

    .line 64
    .end local v1    # "week":I
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v0, v0, v17

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    .line 66
    const-string v0, "CarClockWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCycleAlarm: expired for at least one minute. clockId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_3
    const-wide/16 v4, 0x0

    move-object v0, v8

    move-object v1, v9

    move-wide v2, v10

    move/from16 v6, v16

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->addAlarm(Ljava/lang/String;JJILandroid/os/Bundle;)V

    .line 71
    return-void

    .line 74
    :cond_4
    move v0, v6

    .local v0, "pos":I
    :goto_1
    move v5, v0

    .end local v0    # "pos":I
    .local v5, "pos":I
    if-ge v5, v4, :cond_8

    .line 75
    invoke-static {v12, v5}, Lcom/android/car/xpeng/ai/clock/DateUtil;->getBitValue(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v6

    :goto_2
    move/from16 v19, v1

    .line 76
    .local v19, "isCycle":Z
    rsub-int/lit8 v2, v5, 0x7

    .line 78
    .local v2, "whenWeek":I
    if-eqz v19, :cond_7

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 81
    .local v3, "when":Ljava/util/Calendar;
    invoke-virtual {v3, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 82
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-virtual {v3, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v20, v20, v17

    cmp-long v0, v0, v20

    if-gez v0, :cond_6

    .line 88
    const-string v0, "CarClockWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCycleAlarm: whenTimestamp < current,need add 7 days. clockId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " whenWeek:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/car/xpeng/ai/clock/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v6, 0x240c8400

    add-long/2addr v0, v6

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 96
    :cond_6
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/32 v20, 0x240c8400

    move-object v0, v8

    move-object v1, v9

    move v4, v2

    move-object/from16 v23, v3

    move-wide v2, v6

    .end local v2    # "whenWeek":I
    .end local v3    # "when":Ljava/util/Calendar;
    .local v4, "whenWeek":I
    .local v23, "when":Ljava/util/Calendar;
    move v7, v4

    move/from16 v22, v5

    const/16 v24, 0x7

    move-wide/from16 v4, v20

    .end local v4    # "whenWeek":I
    .end local v5    # "pos":I
    .local v7, "whenWeek":I
    .local v22, "pos":I
    const/16 v20, 0x0

    move v6, v7

    move v10, v7

    const/16 v11, 0xd

    move-object v7, v13

    .end local v7    # "whenWeek":I
    .local v10, "whenWeek":I
    invoke-direct/range {v0 .. v7}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->addAlarm(Ljava/lang/String;JJILandroid/os/Bundle;)V

    .line 101
    .end local v23    # "when":Ljava/util/Calendar;
    goto :goto_3

    .line 103
    .end local v10    # "whenWeek":I
    .end local v22    # "pos":I
    .restart local v2    # "whenWeek":I
    .restart local v5    # "pos":I
    :cond_7
    move v10, v2

    move/from16 v24, v4

    move/from16 v22, v5

    move/from16 v20, v6

    move v11, v7

    .end local v2    # "whenWeek":I
    .end local v5    # "pos":I
    .restart local v10    # "whenWeek":I
    .restart local v22    # "pos":I
    invoke-virtual {v8, v9, v10}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->removeAlarm(Ljava/lang/String;I)V

    .line 74
    .end local v10    # "whenWeek":I
    .end local v19    # "isCycle":Z
    :goto_3
    add-int/lit8 v0, v22, 0x1

    .end local v22    # "pos":I
    .restart local v0    # "pos":I
    move v7, v11

    move/from16 v6, v20

    move/from16 v4, v24

    move-wide/from16 v10, p2

    goto/16 :goto_1

    .line 106
    .end local v0    # "pos":I
    :cond_8
    const-string v0, "CarClockWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCycleAlarm: success add recyle alarm. clockId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " whenWeek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public getAlarmList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAlarmSize()I
    .locals 4

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 213
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    if-eqz v2, :cond_0

    .line 214
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 216
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    :cond_0
    goto :goto_0

    .line 217
    :cond_1
    return v0
.end method

.method public getClockCycleAlarmMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    return-object v0
.end method

.method public getNextAlarmTriggerTime()Ljava/lang/String;
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Landroid/app/AlarmManager;->getNextAlarmClock()Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 226
    .local v0, "alarmClockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    .line 228
    .local v1, "timestamp":J
    invoke-static {v1, v2}, Lcom/android/car/xpeng/ai/clock/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 230
    .end local v1    # "timestamp":J
    :cond_0
    const-string v1, "NA"

    return-object v1
.end method

.method public modifyAlarm(Ljava/lang/String;JJILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 15
    .param p1, "clockId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "intervalMillis"    # J
    .param p6, "whenWeek"    # I
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p6

    move-object/from16 v2, p7

    .line 144
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const-string v3, "CarClockWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyAlarm: clockId invalid. clockId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 149
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 150
    const-string v4, "CarClockWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "modifyAlarm: intent not exist, need create default! clockId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " whenWeek:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 153
    :cond_1
    if-eqz v2, :cond_2

    .line 154
    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 156
    :cond_2
    move-object v4, p0

    iget-object v5, v4, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v14, 0x0

    move-wide/from16 v7, p2

    move-wide/from16 v11, p4

    move-object/from16 v13, p8

    invoke-virtual/range {v5 .. v14}, Landroid/app/AlarmManager;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;)V

    .line 157
    const-string v5, "CarClockWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyAlarm: success modify alarm. clockId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " whenWeek:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Lcom/android/car/xpeng/ai/clock/DateUtil;->formatDateYMDMHS(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public removeAlarm(Ljava/lang/String;I)V
    .locals 5
    .param p1, "clockId"    # Ljava/lang/String;
    .param p2, "whenWeek"    # I

    .line 188
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 189
    .local v0, "alarmCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    if-nez v0, :cond_0

    .line 190
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 191
    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 194
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 196
    return-void

    .line 198
    :cond_1
    const-string v2, "CarClockWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAlarm() called with: clockId = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], whenWeek = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 200
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    return-void
.end method

.method public removeAllCycleAlarm()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    .local v1, "clockId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->removeCycleAlarm(Ljava/lang/String;)V

    .line 163
    .end local v1    # "clockId":Ljava/lang/String;
    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 165
    return-void
.end method

.method public removeCycleAlarm(Ljava/lang/String;)V
    .locals 5
    .param p1, "clockId"    # Ljava/lang/String;

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "CarClockWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAllCycleAlarm: clockId invalid. clockId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 173
    .local v0, "alarmCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/app/PendingIntent;>;"
    if-nez v0, :cond_1

    .line 174
    const-string v1, "CarClockWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAlarm: clockId not exist! clockId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 178
    .local v2, "whenWeek":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 179
    const-string v1, "CarClockWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAlarm: clockId not exist! clockId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " whenWeek:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 183
    .end local v2    # "whenWeek":I
    goto :goto_0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockWrapper;->mClockCycleAlarmMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

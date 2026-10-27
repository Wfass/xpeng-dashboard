.class public Lcom/android/car/xpeng/ai/clock/CarClockService;
.super Ljava/lang/Object;
.source "CarClockService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarClockService"

.field private static final sDataLock:Ljava/lang/Object;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutoWakeClockMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/car/xpeng/ai/clock/AutoWakeClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public final mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncClocksToTboxRunnable:Ljava/lang/Runnable;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/car/xpeng/ai/clock/CarClockService;->sDataLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mListener:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mAutoWakeClockMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mPendingIntentMap:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/android/car/xpeng/ai/clock/-$$Lambda$CarClockService$9cIxMFcO-dUxl6J6zDh9OySjawQ;->INSTANCE:Lcom/android/car/xpeng/ai/clock/-$$Lambda$CarClockService$9cIxMFcO-dUxl6J6zDh9OySjawQ;

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mSyncClocksToTboxRunnable:Ljava/lang/Runnable;

    .line 44
    iput-object p2, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mWorkHandler:Landroid/os/Handler;

    .line 45
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 46
    iput-object p1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic lambda$new$0()V
    .locals 0

    .line 41
    return-void
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 102
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 103
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 104
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 107
    .end local v0    # "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addAlarmClock(Landroid/car/xpeng/ai/clock/AutoWakeClock;)V
    .locals 8
    .param p1, "clock"    # Landroid/car/xpeng/ai/clock/AutoWakeClock;

    .line 82
    invoke-virtual {p1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getTime()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HH:mm"

    invoke-static {v0, v1}, Lcom/android/car/xpeng/ai/clock/CarClockService;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 83
    .local v0, "date":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 85
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 86
    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 87
    const/16 v2, 0xc

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 88
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/car/xpeng/ai/clock/CarAlarmReceiverService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.xiaopeng.car.ai.ACTION_ALARM_WAKE_UP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v3, "extra_clock_id"

    invoke-virtual {p1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v3, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mPendingIntentMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 94
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 96
    iget-object v4, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mPendingIntentMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 140
    return-void
.end method

.method public handleAlarmReceivedData(Ljava/lang/String;)V
    .locals 3
    .param p1, "lockId"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/android/car/xpeng/ai/clock/CarClockService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;

    .line 113
    .local v2, "listener":Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;
    if-eqz v2, :cond_0

    .line 114
    invoke-interface {v2, p1}, Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;->onCarAlarmReceived(Ljava/lang/String;)V

    .line 116
    .end local v2    # "listener":Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 0

    .line 127
    return-void
.end method

.method public initClocks(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/car/xpeng/ai/clock/AutoWakeClock;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/car/xpeng/ai/clock/AutoWakeClock;>;"
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mAutoWakeClockMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mAutoWakeClockMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mAutoWakeClockMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/xpeng/ai/clock/AutoWakeClock;

    .line 55
    .local v1, "clock":Landroid/car/xpeng/ai/clock/AutoWakeClock;
    invoke-virtual {p0, v1}, Lcom/android/car/xpeng/ai/clock/CarClockService;->addAlarmClock(Landroid/car/xpeng/ai/clock/AutoWakeClock;)V

    .line 56
    .end local v1    # "clock":Landroid/car/xpeng/ai/clock/AutoWakeClock;
    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mSyncClocksToTboxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mSyncClocksToTboxRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method public insertOrUpdateClock(Landroid/car/xpeng/ai/clock/AutoWakeClock;)V
    .locals 4
    .param p1, "clock"    # Landroid/car/xpeng/ai/clock/AutoWakeClock;

    .line 62
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mAutoWakeClockMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/car/xpeng/ai/clock/AutoWakeClock;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mSyncClocksToTboxRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    iget-object v0, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mSyncClocksToTboxRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method

.method public registerCarAlarmReceivedListener(Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;

    .line 68
    sget-object v0, Lcom/android/car/xpeng/ai/clock/CarClockService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 0

    .line 135
    return-void
.end method

.method public unregisterCarAlarmReceivedListener(Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/xpeng/ai/clock/CarAlarmReceivedListener;

    .line 76
    sget-object v0, Lcom/android/car/xpeng/ai/clock/CarClockService;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/ai/clock/CarClockService;->mListener:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

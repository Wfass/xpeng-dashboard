.class public Lcom/android/car/xpeng/CarAwarenessService;
.super Ljava/lang/Object;
.source "CarAwarenessService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final AWARENESS_TIMING_TAG:Ljava/lang/String; = "AwarenessServiceTiming"

.field private static final TAG:Ljava/lang/String; = "CarAwarenessService"


# instance fields
.field private final mAllServices:[Lcom/android/car/CarServiceBase;

.field private mBootTiming:Landroid/util/TimingsTraceLog;

.field private final mCarAIVehicleService:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

.field private final mCarAutoWakeService:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

.field private final mCarClockService:Lcom/android/car/xpeng/ai/clock/CarClockService;

.field private final mCarImmService:Lcom/android/car/xpeng/imm/CarImmService;

.field private final mCarPretreatService:Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;

.field private final mCarWelcomeSceneService:Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;

.field private final mDumpServices:[Lcom/android/car/CarServiceBase;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carPropertyService"    # Lcom/android/car/CarPropertyService;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "allServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarServiceBase;>;"
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "car-awareness-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mWorkHandler:Landroid/os/Handler;

    .line 61
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mMainHandler:Landroid/os/Handler;

    .line 63
    new-instance v2, Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;

    invoke-direct {v2}, Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;-><init>()V

    iput-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarWelcomeSceneService:Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;

    .line 64
    new-instance v2, Lcom/android/car/xpeng/ai/clock/CarClockService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/car/xpeng/CarAwarenessService;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/car/xpeng/ai/clock/CarClockService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarClockService:Lcom/android/car/xpeng/ai/clock/CarClockService;

    .line 65
    new-instance v2, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;

    iget-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarPretreatService:Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;

    .line 66
    new-instance v2, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;-><init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V

    iput-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAutoWakeService:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    .line 67
    new-instance v2, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/car/xpeng/CarAwarenessService;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, p2}, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    iput-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAIVehicleService:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    .line 68
    new-instance v2, Lcom/android/car/xpeng/imm/CarImmService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/car/xpeng/CarAwarenessService;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, p2}, Lcom/android/car/xpeng/imm/CarImmService;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    iput-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarImmService:Lcom/android/car/xpeng/imm/CarImmService;

    .line 69
    const-class v2, Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;

    iget-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarWelcomeSceneService:Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 70
    const-class v2, Lcom/android/car/xpeng/ai/clock/CarClockService;

    iget-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarClockService:Lcom/android/car/xpeng/ai/clock/CarClockService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 71
    const-class v2, Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;

    iget-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarPretreatService:Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 72
    const-class v2, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    iget-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAutoWakeService:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 73
    const-class v2, Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    iget-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAIVehicleService:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 74
    const-class v2, Lcom/android/car/xpeng/imm/CarImmService;

    iget-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarImmService:Lcom/android/car/xpeng/imm/CarImmService;

    invoke-static {v2, v3}, Lcom/android/car/CarLocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 76
    iget-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarWelcomeSceneService:Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarClockService:Lcom/android/car/xpeng/ai/clock/CarClockService;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarPretreatService:Lcom/android/car/xpeng/ai/pretreat/CarPretreatService;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAutoWakeService:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAIVehicleService:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarImmService:Lcom/android/car/xpeng/imm/CarImmService;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v2, 0x0

    new-array v3, v2, [Lcom/android/car/CarServiceBase;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/car/CarServiceBase;

    iput-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mAllServices:[Lcom/android/car/CarServiceBase;

    .line 83
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/android/car/CarServiceBase;

    iget-object v4, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAutoWakeService:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarWelcomeSceneService:Lcom/android/car/xpeng/ai/scene/CarWelcomeSceneService;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAIVehicleService:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarImmService:Lcom/android/car/xpeng/imm/CarImmService;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iput-object v3, p0, Lcom/android/car/xpeng/CarAwarenessService;->mDumpServices:[Lcom/android/car/CarServiceBase;

    .line 84
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.xiaopeng.broadcast.ACTION_OTA_STATE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    new-instance v4, Lcom/android/car/xpeng/CarAwarenessService$1;

    invoke-direct {v4, p0}, Lcom/android/car/xpeng/CarAwarenessService$1;-><init>(Lcom/android/car/xpeng/CarAwarenessService;)V

    invoke-virtual {p1, v4, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 99
    return-void
.end method

.method private dumpAllowedServices(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 167
    iget-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mDumpServices:[Lcom/android/car/CarServiceBase;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 169
    .local v3, "service":Lcom/android/car/CarServiceBase;
    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/car/CarServiceBase;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_1

    .line 170
    :catch_0
    move-exception v4

    .line 171
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed dumping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v4, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 174
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 167
    .end local v3    # "service":Lcom/android/car/CarServiceBase;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method private traceBegin(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    const-string v0, "CarAwarenessService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mBootTiming:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private traceEnd()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mBootTiming:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 126
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 152
    const-string v0, "*Dump carai service*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 155
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 156
    .local v0, "formatter":Ljava/time/format/DateTimeFormatter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    current date time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .end local v0    # "formatter":Ljava/time/format/DateTimeFormatter;
    :cond_0
    const-string v0, "*Dump all services*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/car/xpeng/CarAwarenessService;->dumpAllowedServices(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed dump carai!"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getCarService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x197c9

    if-eq v0, v1, :cond_2

    const v1, 0xd89a15

    if-eq v0, v1, :cond_1

    const v1, 0x66496dd

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ai_auto_wake"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "ai_vehicle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "imm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 145
    const-string v0, "CarAwarenessService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarService for unknown service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarImmService:Lcom/android/car/xpeng/imm/CarImmService;

    return-object v0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAIVehicleService:Lcom/android/car/xpeng/ai/vehicle/CarAIVehicleService;

    return-object v0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mCarAutoWakeService:Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 7

    .line 103
    const-string v0, "CarAwarenessService"

    const-string v1, "init: "

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "AwarenessServiceTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mBootTiming:Landroid/util/TimingsTraceLog;

    .line 105
    const-string v0, "CarAwarenessService.init"

    invoke-direct {p0, v0}, Lcom/android/car/xpeng/CarAwarenessService;->traceBegin(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 108
    .local v3, "service":Lcom/android/car/CarServiceBase;
    :try_start_0
    invoke-interface {v3}, Lcom/android/car/CarServiceBase;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_1

    .line 109
    :catch_0
    move-exception v4

    .line 110
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CarAwarenessService"

    const-string v6, "Got unexpected exception"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v3    # "service":Lcom/android/car/CarServiceBase;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/car/xpeng/CarAwarenessService;->traceEnd()V

    .line 115
    return-void
.end method

.method public release()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/car/xpeng/CarAwarenessService;->mAllServices:[Lcom/android/car/CarServiceBase;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/car/xpeng/CarAwarenessService;->mAllServices:[Lcom/android/car/CarServiceBase;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/car/CarServiceBase;->release()V

    .line 130
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.class public Lcom/xiaopeng/devtools/model/f/b;
.super Ljava/lang/Object;
.source "GpsPerformanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/f/b$b;,
        Lcom/xiaopeng/devtools/model/f/b$a;
    }
.end annotation


# static fields
.field private static volatile uc:Lcom/xiaopeng/devtools/model/f/b;


# instance fields
.field private mLocationManager:Landroid/location/LocationManager;

.field private tX:Ljava/text/SimpleDateFormat;

.field private tY:Ljava/lang/StringBuilder;

.field private tZ:Ljava/lang/StringBuilder;

.field private te:Ljava/lang/StringBuilder;

.field private tf:Landroid/location/Location;

.field private ua:Ljava/lang/String;

.field private ub:I

.field private ud:Lcom/xiaopeng/devtools/model/f/b$b;

.field private ue:Lcom/xiaopeng/devtools/model/f/b$a;

.field private uf:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->te:Ljava/lang/StringBuilder;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->tY:Ljava/lang/StringBuilder;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->tZ:Ljava/lang/StringBuilder;

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->tX:Ljava/text/SimpleDateFormat;

    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->uf:Ljava/util/concurrent/ExecutorService;

    .line 46
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->mLocationManager:Landroid/location/LocationManager;

    .line 47
    new-instance v0, Lcom/xiaopeng/devtools/model/f/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/f/b$b;-><init>(Lcom/xiaopeng/devtools/model/f/b;Lcom/xiaopeng/devtools/model/f/b$1;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->ud:Lcom/xiaopeng/devtools/model/f/b$b;

    .line 56
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/b;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    iget-object v7, p0, Lcom/xiaopeng/devtools/model/f/b;->ud:Lcom/xiaopeng/devtools/model/f/b$b;

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 58
    new-instance v0, Lcom/xiaopeng/devtools/model/f/b$a;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/f/b$a;-><init>(Lcom/xiaopeng/devtools/model/f/b;Lcom/xiaopeng/devtools/model/f/b$1;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->ue:Lcom/xiaopeng/devtools/model/f/b$a;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/b;->ue:Lcom/xiaopeng/devtools/model/f/b$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/f/b;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/f/b;->a(Landroid/location/Location;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/f/b;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/xiaopeng/devtools/model/f/b;->ub:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/f/b;)Landroid/location/LocationManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/b;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method private a(Landroid/location/Location;)V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->te:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->tZ:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 79
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/b;->tX:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->ua:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->te:Ljava/lang/StringBuilder;

    const-string v1, "\u7ecf\u5ea6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u7eac\u5ea6: "

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6d77\u62d4\u9ad8\u5ea6: "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->tZ:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string p1, "N/A"

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/b;->ua:Ljava/lang/String;

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/b;->te:Ljava/lang/StringBuilder;

    const-string v0, "\u7ecf\u5ea6: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u7eac\u5ea6: "

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u6d77\u62d4\u9ad8\u5ea6: "

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/b;->tZ:Ljava/lang/StringBuilder;

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/GpsLocationEvent;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/b;->ua:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/b;->te:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/devtools/bean/event/signal/GpsLocationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/GpsSpeedEvent;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/b;->tZ:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/signal/GpsSpeedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/f/b;Landroid/location/Location;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/f/b;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/f/b;)Ljava/lang/StringBuilder;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/b;->tY:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/model/f/b;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/f/b;->uf:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->tf:Landroid/location/Location;

    .line 123
    return-object v0
.end method

.method public static hi()Lcom/xiaopeng/devtools/model/f/b;
    .locals 2

    .line 64
    sget-object v0, Lcom/xiaopeng/devtools/model/f/b;->uc:Lcom/xiaopeng/devtools/model/f/b;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/xiaopeng/devtools/model/f/b;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/xiaopeng/devtools/model/f/b;->uc:Lcom/xiaopeng/devtools/model/f/b;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/xiaopeng/devtools/model/f/b;

    invoke-direct {v1}, Lcom/xiaopeng/devtools/model/f/b;-><init>()V

    sput-object v1, Lcom/xiaopeng/devtools/model/f/b;->uc:Lcom/xiaopeng/devtools/model/f/b;

    .line 69
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/devtools/model/f/b;->uc:Lcom/xiaopeng/devtools/model/f/b;

    return-object v0
.end method


# virtual methods
.method public getGpsSpeed()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->tZ:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTime()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public hj()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->tY:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hk()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b;->te:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hl()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/xiaopeng/devtools/model/f/b;->ub:I

    return v0
.end method

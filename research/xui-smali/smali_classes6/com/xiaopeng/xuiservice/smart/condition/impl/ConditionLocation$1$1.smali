.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1;->create()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final locationListener:Landroid/location/LocationListener;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1;
    .param p2, "name"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->this$0:Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1$1;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$onStartWatch$0(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;)V
    .locals 6

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "gps"

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->locationListener:Landroid/location/LocationListener;

    const-wide/32 v2, 0xea60

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    return-void
.end method

.method public static synthetic lambda$onStopWatch$1(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method


# virtual methods
.method protected fetch()Landroid/location/Location;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    .line 71
    .local v0, "locationManager":Landroid/location/LocationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return-object v1

    .line 74
    :cond_0
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 75
    .local v2, "isGPSEnable":Z
    move-object v3, v1

    .line 77
    .local v3, "location":Landroid/location/Location;
    if-eqz v2, :cond_1

    :try_start_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "getLastKnownLocation"

    invoke-static {v4, v1}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->ERROR(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    move-object v3, v1

    .line 80
    nop

    .line 81
    :goto_1
    return-object v3
.end method

.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;->fetch()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method getLocationManager()Landroid/location/LocationManager;
    .locals 2

    .line 64
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method protected onStartWatch()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$1$1$sSSFeB54fJDnjkQs4wAWtgQ4kJw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$1$1$sSSFeB54fJDnjkQs4wAWtgQ4kJw;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method protected onStopWatch()V
    .locals 2

    .line 94
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$1$1$YswhQz8c5PmJNwtgUC70nrHTNpQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$1$1$YswhQz8c5PmJNwtgUC70nrHTNpQ;-><init>(Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation$1$1;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

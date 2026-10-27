.class public Lcom/android/car/PerUserCarService;
.super Landroid/app/Service;
.source "PerUserCarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/PerUserCarService$CarUserServiceBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarUserService"


# instance fields
.field private mCarBluetoothUserService:Lcom/android/car/CarBluetoothUserService;

.field private mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/car/PerUserCarService;)Lcom/android/car/CarBluetoothUserService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/PerUserCarService;

    .line 33
    iget-object v0, p0, Lcom/android/car/PerUserCarService;->mCarBluetoothUserService:Lcom/android/car/CarBluetoothUserService;

    return-object v0
.end method


# virtual methods
.method public createBluetoothUserService()V
    .locals 2

    .line 78
    const-string v0, "CarUserService"

    const-string v1, "createBluetoothUserService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Lcom/android/car/CarBluetoothUserService;

    invoke-direct {v0, p0}, Lcom/android/car/CarBluetoothUserService;-><init>(Lcom/android/car/PerUserCarService;)V

    iput-object v0, p0, Lcom/android/car/PerUserCarService;->mCarBluetoothUserService:Lcom/android/car/CarBluetoothUserService;

    .line 81
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 42
    const-string v0, "CarUserService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/car/PerUserCarService;->mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    if-nez v0, :cond_0

    .line 45
    const-string v0, "CarUserService"

    const-string v1, "UserSvcBinder null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/car/PerUserCarService;->mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 61
    const-string v0, "CarUserService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    invoke-direct {v0, p0, p0}, Lcom/android/car/PerUserCarService$CarUserServiceBinder;-><init>(Lcom/android/car/PerUserCarService;Lcom/android/car/PerUserCarService;)V

    iput-object v0, p0, Lcom/android/car/PerUserCarService;->mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 70
    const-string v0, "CarUserService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/PerUserCarService;->mCarBluetoothUserService:Lcom/android/car/CarBluetoothUserService;

    .line 73
    iput-object v0, p0, Lcom/android/car/PerUserCarService;->mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    .line 74
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 53
    const-string v0, "CarUserService"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    return v0
.end method

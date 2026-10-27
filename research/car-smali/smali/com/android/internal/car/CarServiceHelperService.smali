.class public Lcom/android/internal/car/CarServiceHelperService;
.super Lcom/android/server/SystemService;
.source "CarServiceHelperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;
    }
.end annotation


# static fields
.field private static final CAR_SERVICE_INTERFACE:Ljava/lang/String; = "android.car.ICar"

.field private static final TAG:Ljava/lang/String; = "CarServiceHelper"


# instance fields
.field private mCarService:Landroid/os/IBinder;

.field private final mCarServiceConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHelper:Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;-><init>(Lcom/android/internal/car/CarServiceHelperService;Lcom/android/internal/car/CarServiceHelperService$1;)V

    iput-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mHelper:Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;

    .line 43
    new-instance v0, Lcom/android/internal/car/CarServiceHelperService$1;

    invoke-direct {v0, p0}, Lcom/android/internal/car/CarServiceHelperService$1;-><init>(Lcom/android/internal/car/CarServiceHelperService;)V

    iput-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarServiceConnection:Landroid/content/ServiceConnection;

    .line 72
    iput-object p1, p0, Lcom/android/internal/car/CarServiceHelperService;->mContext:Landroid/content/Context;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/car/CarServiceHelperService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/car/CarServiceHelperService;

    .line 37
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/car/CarServiceHelperService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/car/CarServiceHelperService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 37
    iput-object p1, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/car/CarServiceHelperService;)Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/car/CarServiceHelperService;

    .line 37
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mHelper:Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/car/CarServiceHelperService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/car/CarServiceHelperService;

    .line 37
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->handleCarServiceCrash()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/car/CarServiceHelperService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/car/CarServiceHelperService;

    .line 37
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 37
    invoke-static {p0}, Lcom/android/internal/car/CarServiceHelperService;->nativeForceSuspend(I)I

    move-result v0

    return v0
.end method

.method private handleCarServiceCrash()V
    .locals 0

    .line 89
    return-void
.end method

.method private static native nativeForceSuspend(I)I
.end method


# virtual methods
.method public onStart()V
    .locals 5

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "android.car.ICar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/car/CarServiceHelperService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const-string v1, "CarServiceHelper"

    const-string v2, "cannot start car service"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const-string v1, "car-framework-service-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.class public final Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;,
        Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$Holder;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ServiceProvider"


# instance fields
.field private mBoundService:Z

.field private mLocationService:Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

.field private mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;)Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mLocationService:Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mBoundService:Z

    return p1
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;
    .locals 1

    .line 36
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$Holder;->access$200()Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mLocationService:Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    if-nez v0, :cond_0

    const-string p1, "ServiceProvider"

    const-string v0, "Location service is not ready"

    .line 67
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->seal()V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mLocationService:Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;->publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V

    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 4

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to launch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public started()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mBoundService:Z

    return v0
.end method

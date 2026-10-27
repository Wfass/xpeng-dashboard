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

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$1;

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;)Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mLocationService:Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    return-object p1
.end method

.method static synthetic access$402(Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;
    .param p1, "x1"    # Z

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
    .param p1, "location"    # Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    .line 56
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->seal()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mLocationService:Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;->publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V

    .line 58
    return-void
.end method

.method public startService(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v0, "serviceStartIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    .line 48
    .local v1, "service":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 52
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider$InternalServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    return-void

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public started()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->mBoundService:Z

    return v0
.end method

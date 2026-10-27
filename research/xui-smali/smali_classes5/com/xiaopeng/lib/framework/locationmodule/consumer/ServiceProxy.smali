.class public Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;
    }
.end annotation


# static fields
.field private static final DELAY_TO_BIND_SERVICE:I = 0x1388

.field private static final DELAY_TO_POST_LAST_LOCATION:I = 0xbb8

.field private static final REMOTE_APP_PACKAGE:Ljava/lang/String; = "com.xiaopeng.montecarlo"

.field private static final TAG:Ljava/lang/String; = "LocationModule.Consumer.ServiceProxy"


# instance fields
.field private final mAssignedRemotePackageName:Ljava/lang/String;

.field private volatile mBoundService:Z

.field private mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentDrLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

.field private final mPersistence:Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

.field private final mPostLastLocationTask:Ljava/lang/Runnable;

.field private mRemoteLocationService:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

.field private mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteAppPackage"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    .line 44
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;

    .line 48
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mContext:Landroid/content/Context;

    .line 59
    if-nez p2, :cond_0

    .line 60
    const-string p2, "com.xiaopeng.montecarlo"

    .line 62
    :cond_0
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mAssignedRemotePackageName:Ljava/lang/String;

    .line 63
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPersistence:Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    .line 64
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPersistence:Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->read()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->updateCurrentLocation(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V

    .line 65
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$2;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPostLastLocationTask:Ljava/lang/Runnable;

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPostLastLocationTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->startBindingTask()V

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->updateCurrentLocation(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPersistence:Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCurrentDrLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->bindToLocationServiceInternal()V

    return-void
.end method

.method static synthetic access$502(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;)Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;
    .param p1, "x1"    # Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mRemoteLocationService:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;
    .param p1, "x1"    # Z

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->clearPostingTask()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;
    .param p1, "x1"    # I

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->checkAndStartBindingWithDelay(I)V

    return-void
.end method

.method private bindToLocationServiceInternal()V
    .locals 5

    .line 115
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/common/Debug;->assertion(Z)V

    .line 116
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    const-string v0, "LocationModule.Consumer.ServiceProxy"

    const-string v1, "Try to bind location service."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mAssignedRemotePackageName:Ljava/lang/String;

    sget-object v2, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;

    const/high16 v3, 0x40000000    # 2.0f

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 126
    .local v1, "result":Z
    if-eqz v1, :cond_1

    const/16 v2, 0x4e20

    goto :goto_0

    :cond_1
    const/16 v2, 0x1388

    .line 127
    .local v2, "timeDelay":I
    :goto_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->checkAndStartBindingWithDelay(I)V

    .line 128
    return-void
.end method

.method private checkAndStartBindingWithDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .line 144
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    const-string v0, "LocationModule.Consumer.ServiceProxy"

    const-string v1, "Try to bind location service..."

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$3;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 156
    return-void
.end method

.method private clearPostingTask()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPostLastLocationTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method private startBindingTask()V
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    .line 132
    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->bindToLocationServiceInternal()V

    .line 135
    return-void
.end method

.method private updateCurrentLocation(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V
    .locals 2
    .param p1, "location"    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 138
    if-eqz p1, :cond_0

    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->DR_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCurrentDrLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public bindToLocationService()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->startBindingTask()V

    .line 81
    return-void
.end method

.method public connected()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    return v0
.end method

.method public getLastDrLocation()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCurrentDrLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    return-object v0
.end method

.method public subscribe(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)V
    .locals 3
    .param p1, "category"    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mRemoteLocationService:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;->subscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw v0
.end method

.method public unsubscribe()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mRemoteLocationService:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;->unsubscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw v0
.end method

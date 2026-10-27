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

.field private static final REMOTE_APP_PACKAGE_INTERNAL:Ljava/lang/String; = "com.telenav.app.arp"

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
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    .line 51
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;

    .line 55
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    .line 68
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "com.telenav.app.arp"

    goto :goto_0

    :cond_0
    const-string p2, "com.xiaopeng.montecarlo"

    .line 74
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOCATION pkg:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mAssignedRemotePackageName:Ljava/lang/String;

    .line 76
    new-instance p2, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    invoke-direct {p2, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPersistence:Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPersistence:Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->read()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->updateCurrentLocation(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V

    .line 78
    new-instance p1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$2;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPostLastLocationTask:Ljava/lang/Runnable;

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPostLastLocationTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    .line 89
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->startBindingTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->updateCurrentLocation(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPersistence:Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCurrentDrLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->bindToLocationServiceInternal()V

    return-void
.end method

.method static synthetic access$502(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;)Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mRemoteLocationService:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    return-object p1
.end method

.method static synthetic access$602(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->clearPostingTask()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->checkAndStartBindingWithDelay(I)V

    return-void
.end method

.method private bindToLocationServiceInternal()V
    .locals 6

    .line 134
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/common/Debug;->assertion(Z)V

    .line 135
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LocationModule.Consumer.ServiceProxy"

    const-string v1, "Try to bind location service."

    .line 138
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mAssignedRemotePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "client_pid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mAssignedRemotePackageName:Ljava/lang/String;

    sget-object v2, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mServiceConnection:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;

    const/high16 v4, 0x40000000    # 2.0f

    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_1

    const/16 v0, 0x4e20

    goto :goto_1

    :cond_1
    const/16 v0, 0x1388

    .line 154
    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->checkAndStartBindingWithDelay(I)V

    return-void
.end method

.method private checkAndStartBindingWithDelay(I)V
    .locals 4

    .line 171
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "LocationModule.Consumer.ServiceProxy"

    const-string v1, "Try to bind location service..."

    .line 174
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 175
    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$3;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method private clearPostingTask()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mPostLastLocationTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startBindingTask()V
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->bindToLocationServiceInternal()V

    return-void
.end method

.method private updateCurrentLocation(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 165
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->DR_LOCATION:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;->category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCurrentDrLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    :cond_0
    return-void
.end method


# virtual methods
.method public bindToLocationService()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->startBindingTask()V

    return-void
.end method

.method public connected()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    return v0
.end method

.method public getLastDrLocation()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCurrentDrLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    return-object v0
.end method

.method public subscribe(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)V
    .locals 3

    .line 103
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mRemoteLocationService:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;->subscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V

    const-string v0, "LocationModule.Consumer.ServiceProxy"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] subscribe location type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    new-instance p1, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw p1

    .line 104
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw p1
.end method

.method public unsubscribe()V
    .locals 3

    .line 116
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mBoundService:Z

    if-eqz v0, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mRemoteLocationService:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mCallback:Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;->unsubscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V

    const-string v0, "LocationModule.Consumer.ServiceProxy"

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ] unsubscribe location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw v0
.end method

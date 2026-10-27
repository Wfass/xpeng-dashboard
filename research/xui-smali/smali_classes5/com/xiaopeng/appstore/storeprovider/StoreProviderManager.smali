.class public Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
.super Ljava/lang/Object;
.source "StoreProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteQueryCallbackWrapper;,
        Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;,
        Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    }
.end annotation


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.resourceservice"

.field private static final RELEASE_DELAY:J = 0x2710L

.field public static final SERVICE:Ljava/lang/String; = "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

.field private static final TAG:Ljava/lang/String; = "StoreProviderManager"

.field private static final WAIT_CONNECTED_TIMEOUT:J = 0xafc8L

.field private static sCallingPackageName:Ljava/lang/String;

.field private static volatile sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;


# instance fields
.field private mConfiguration:Lcom/xiaopeng/appstore/storeprovider/Configuration;

.field private final mConnectLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mIsConnected:Z

.field private volatile mIsConnecting:Z

.field private final mListenerCookies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerLock:Ljava/lang/Object;

.field private mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mTryToBindAction:Ljava/lang/Runnable;

.field private final mTryToReleaseAction:Ljava/lang/Runnable;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    .line 86
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    .line 87
    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerLock:Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$_-6etHrtks4xr8SvQfXHrYRirrk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$_-6etHrtks4xr8SvQfXHrYRirrk;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToBindAction:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$6aVBPmB4mSwf5S3Kvz5KOpanvS0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$6aVBPmB4mSwf5S3Kvz5KOpanvS0;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToReleaseAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToReleaseAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 42
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->initInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method private assertContextValid()V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 586
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initialize should be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bindService()V
    .locals 6
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mConnectLock"
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    .line 212
    .local v0, "context":Landroid/content/Context;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", pn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "com.xiaopeng.resourceservice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    .line 215
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v2, "it":Landroid/content/Intent;
    const-string v3, "com.xiaopeng.resourceservice"

    const-string v4, "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mCurrentUserId:I

    if-eqz v3, :cond_0

    .line 218
    const-string v3, "StoreProviderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindServiceAsSystemUser currentUser:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.xiaopeng.resourceservice"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v4, 0x2710

    .line 220
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 219
    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaopeng/appstore/storeprovider/ReflectHelper;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    goto :goto_0

    .line 222
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    .line 224
    :goto_0
    const-string v1, "StoreProviderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService isConnecting:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", pn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.xiaopeng.resourceservice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method private cancelSchedule()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 183
    const-string v0, "StoreProviderManager"

    const-string v1, "cancelSchedule: work handler is not init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToReleaseAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    return-void
.end method

.method private executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 603
    .local p1, "callback":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const-string v0, "StoreProviderManager"

    const-string v1, "executeWaitConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    .line 606
    .local v1, "connected":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-nez v2, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    const-string v2, "StoreProviderManager"

    const-string v3, "executeWaitConnected: already connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 607
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    if-nez v2, :cond_2

    .line 608
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->bindService()V

    .line 611
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->isConnectedWait()Z

    move-result v2

    move v1, v2

    .line 615
    :goto_1
    const/4 v2, 0x0

    .line 616
    .local v2, "result":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    .line 618
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 622
    :goto_2
    goto :goto_3

    .line 619
    :catch_0
    move-exception v3

    .line 620
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 621
    const-string v4, "StoreProviderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeWaitConnected error, callback ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 624
    :cond_3
    const-string v3, "StoreProviderManager"

    const-string v4, "executeWaitConnected error: bindService fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->notifyDisconnected()V

    .line 627
    :goto_3
    monitor-exit v0

    return-object v2

    .line 628
    .end local v1    # "connected":Z
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
    .locals 2

    .line 48
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-direct {v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    return-object v0
.end method

.method private initInternal(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 279
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 281
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .local v2, "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    :try_start_1
    const-string v3, "StoreProviderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register remote callback in init:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    iget v4, v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->resType:I

    iget-object v5, v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->callingPackage:Ljava/lang/String;

    iget-object v6, v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-interface {v3, v4, v5, v6}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    goto :goto_1

    .line 289
    :catch_0
    move-exception v3

    .line 290
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "StoreProviderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init, registerCallback ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v2    # "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 294
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->notifyConnected()V

    .line 296
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: service END:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 294
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private isConnectedWait()Z
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 253
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "StoreProviderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitConnected ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 259
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    monitor-exit v0

    return v1

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$6aVBPmB4mSwf5S3Kvz5KOpanvS0(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->tryToRelease()V

    return-void
.end method

.method public static synthetic lambda$_-6etHrtks4xr8SvQfXHrYRirrk(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->tryToBind()V

    return-void
.end method

.method public static synthetic lambda$assemble$1(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 4
    .param p1, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_3

    .line 343
    :try_start_0
    instance-of v0, p1, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    if-eqz v0, :cond_1

    .line 344
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    .line 345
    .local v0, "enqueueRequest":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;->getContinuation()Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;->getParent()Lcom/xiaopeng/appstore/storeprovider/RequestContinuation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "StoreProviderManager"

    const-string v2, "assemble, enqueueAll if there\'s parent task in the request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    invoke-interface {v1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->assembleEnqueueAll(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v1

    return-object v1

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    invoke-interface {v1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->assembleEnqueue(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v1

    return-object v1

    .line 351
    .end local v0    # "enqueueRequest":Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;
    :cond_1
    instance-of v0, p1, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    invoke-interface {v0, p2, v1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->assembleAction(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v0

    return-object v0

    .line 354
    :cond_2
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assemble: not support request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assemble ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$getAssembleInfoList$2(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;IZLjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "resType"    # I
    .param p2, "includeSilent"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssembleInfoList start, resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleConstants;->resTypeToStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", includeSilent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", calling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->getAssembleInfoListAll(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssembleInfoList ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$query$0(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 4
    .param p1, "resourceRequest"    # Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->query(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$queryAppGroups$3(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;[I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 4
    .param p1, "appGroupTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_0

    .line 479
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryAppGroups start, appGroupTypes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->queryAppGroups([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v0

    .line 482
    .local v0, "ret":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAppGroups result, appGroupTypes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    return-object v0

    .line 485
    .end local v0    # "ret":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAppGroups ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$queryAppStoreCloud$5(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)Ljava/lang/Integer;
    .locals 12
    .param p1, "query"    # Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    iget v6, p1, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mMethod:I

    .line 550
    .local v6, "method":I
    iget-object v7, p1, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mPath:Ljava/lang/String;

    .line 551
    .local v7, "path":Ljava/lang/String;
    const/16 v0, -0xa

    const/4 v1, 0x1

    if-eq v6, v1, :cond_0

    const/4 v1, 0x2

    if-eq v6, v1, :cond_0

    .line 552
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAppStoreCloud, invalid method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 555
    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAppStoreCloud, invalid path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 559
    :cond_1
    iget-object v8, p1, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mQueryParams:Ljava/util/Map;

    .line 560
    .local v8, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p1, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mBody:Ljava/lang/String;

    .line 561
    .local v9, "body":Ljava/lang/String;
    iget-object v0, p1, Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;->mCallback:Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;

    move-object v10, v0

    .line 563
    .local v10, "callback":Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;
    const/4 v0, 0x0

    .line 564
    .local v0, "inputQuery":Landroid/os/Bundle;
    if-eqz v8, :cond_2

    .line 565
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 566
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 567
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 572
    .end local v0    # "inputQuery":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 570
    .restart local v0    # "inputQuery":Landroid/os/Bundle;
    :cond_2
    move-object v11, v0

    .end local v0    # "inputQuery":Landroid/os/Bundle;
    .local v11, "inputQuery":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    new-instance v5, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteQueryCallbackWrapper;

    invoke-direct {v5, v10}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteQueryCallbackWrapper;-><init>(Lcom/xiaopeng/appstore/storeprovider/HttpQueryCallback;)V

    move v1, v6

    move-object v2, v7

    move-object v3, v11

    move-object v4, v9

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->queryAppStoreCloud(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 572
    .end local v11    # "inputQuery":Landroid/os/Bundle;
    :goto_1
    nop

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAppStoreCloud ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 575
    const/16 v1, -0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic lambda$queryOperationApps$4(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 4
    .param p1, "requests"    # [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOperationApps start, requests:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    invoke-interface {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    move-result-object v0

    .line 519
    .local v0, "ret":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOperationApps result, requests:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    return-object v0

    .line 522
    .end local v0    # "ret":Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOperationApps ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyConnected()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    .line 267
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyDisconnected()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    .line 274
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    .line 275
    monitor-exit v0

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseInternal()V
    .locals 6

    .line 300
    const-string v0, "StoreProviderManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;

    .line 304
    .local v1, "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    :try_start_0
    const-string v2, "StoreProviderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister remote callback in release:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    iget-object v3, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-interface {v2, v3}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_1

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "StoreProviderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "release, unregisterAssembleListener ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v1    # "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->unbindService(Landroid/content/Context;)V

    .line 313
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->notifyDisconnected()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    .line 315
    const-string v0, "StoreProviderManager"

    const-string v1, "release end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method private scheduleToBind()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 161
    const-string v0, "StoreProviderManager"

    const-string v1, "scheduleToBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 163
    const-string v0, "StoreProviderManager"

    const-string v1, "scheduleToBind: work handler is not init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->cancelSchedule()V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToBindAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method private scheduleToRelease()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 172
    const-string v0, "StoreProviderManager"

    const-string v1, "scheduleToRelease"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "StoreProviderManager"

    const-string v1, "scheduleToRelease: work handler is not init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToReleaseAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    return-void
.end method

.method public static setFakeCalling(Ljava/lang/String;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 140
    sput-object p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method private tryConnected()Z
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    .line 591
    .local v1, "connected":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-nez v2, :cond_2

    .line 592
    :cond_0
    iget-boolean v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    if-nez v2, :cond_1

    .line 593
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->bindService()V

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->isConnectedWait()Z

    move-result v2

    move v1, v2

    .line 598
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 599
    .end local v1    # "connected":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryToBind()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    if-nez v1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->bindService()V

    goto :goto_0

    .line 194
    :cond_0
    const-string v1, "StoreProviderManager"

    const-string v2, "tryToBind: bind already."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryToRelease()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->releaseInternal()V

    goto :goto_0

    .line 204
    :cond_0
    const-string v1, "StoreProviderManager"

    const-string v2, "tryToRelease: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 228
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 230
    return-void
.end method

.method private waitConnected()Z
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "StoreProviderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitConnected ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 241
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 244
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 1
    .param p1, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "assembleRequest"
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object v0

    return-object v0
.end method

.method public assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 3
    .param p1, "assembleRequest"    # Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "assembleRequest",
            "callingPackage"
        }
    .end annotation

    .line 339
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assemble start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", calling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$M9U6jBT973prKQuxiV7bItCMLyI;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$M9U6jBT973prKQuxiV7bItCMLyI;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    return-object v0
.end method

.method public getAssembleInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAssembleInfoList(I)Ljava/util/List;
    .locals 1
    .param p1, "resType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "resType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resType",
            "callingPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAssembleInfoList(IZLjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "resType"    # I
    .param p2, "includeSilent"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resType",
            "includeSilent",
            "callingPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$3pwWVESGWOu_MHrYMeW1AilfQF4;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;IZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 411
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;>;"
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssembleInfoList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/Configuration$Builder;->build()Lcom/xiaopeng/appstore/storeprovider/Configuration;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->initialize(Landroid/content/Context;Lcom/xiaopeng/appstore/storeprovider/Configuration;)V

    .line 108
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/xiaopeng/appstore/storeprovider/Configuration;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "configuration"    # Lcom/xiaopeng/appstore/storeprovider/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "configuration"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already initialized! Old:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 116
    .local v0, "uid":I
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize, ctx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "2.0.0.32-SNAPSHOT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "5.3.0_xpdev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "a7153b1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "2024/08/26 14:46:01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/UserHelper;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mCurrentUserId:I

    .line 122
    iput-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConfiguration:Lcom/xiaopeng/appstore/storeprovider/Configuration;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    .line 125
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "StoreProviderManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method public query(Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 3
    .param p1, "resourceRequest"    # Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceRequest"
        }
    .end annotation

    .line 319
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$66PZefPvGkRd5PI_lSTTbL3iV80;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$66PZefPvGkRd5PI_lSTTbL3iV80;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    return-object v0
.end method

.method public varargs queryAppGroups([I)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 3
    .param p1, "appGroupTypes"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appGroupTypes"
        }
    .end annotation

    .line 472
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryAppGroups IN, appGroupTypes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 474
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryAppGroups, invalid args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    return-object v0

    .line 477
    :cond_0
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$CSlhitjN8a_Il3a66RpQSi8Uop4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$CSlhitjN8a_Il3a66RpQSi8Uop4;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;[I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    return-object v0
.end method

.method public varargs queryAppGroupsAsync(Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[I)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;
    .param p2, "appGroupTypes"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "appGroupTypes"
        }
    .end annotation

    .line 494
    if-nez p1, :cond_0

    .line 495
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryAppGroupsAsync, listener is null, args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConfiguration:Lcom/xiaopeng/appstore/storeprovider/Configuration;

    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$2;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method public queryAppStoreCloud(Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)I
    .locals 4
    .param p1, "query"    # Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "query"
        }
    .end annotation

    .line 547
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 548
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$EmELnVmXtL63CLxblpD-MdlpisY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$EmELnVmXtL63CLxblpD-MdlpisY;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/HttpQueryParam;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 578
    .local v0, "ret":Ljava/lang/Integer;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAppStoreCloud: ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public varargs queryOperationApps([Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;
    .locals 3
    .param p1, "requests"    # [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requests"
        }
    .end annotation

    .line 509
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOperationApps IN, requests:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 511
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOperationApps, invalid args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v0, 0x0

    return-object v0

    .line 514
    :cond_0
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$f3fxb5KJGsHnPSDd4iQXXtFFSsU;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$f3fxb5KJGsHnPSDd4iQXXtFFSsU;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/appstore/storeprovider/bean/AppGroupsResp;

    return-object v0
.end method

.method public varargs queryOperationAppsAsync(Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;
    .param p2, "requests"    # [Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "requests"
        }
    .end annotation

    .line 531
    if-nez p1, :cond_0

    .line 532
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOperationAppsAsync, listener is null, args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConfiguration:Lcom/xiaopeng/appstore/storeprovider/Configuration;

    invoke-virtual {v0}, Lcom/xiaopeng/appstore/storeprovider/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$3;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/AppGroupsListener;[Lcom/xiaopeng/appstore/storeprovider/bean/OperationAppsRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 543
    return-void
.end method

.method public registerListener(ILcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V
    .locals 1
    .param p1, "resourceType"    # I
    .param p2, "listener"    # Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "listener"
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->registerListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    .line 417
    return-void
.end method

.method public registerListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V
    .locals 4
    .param p1, "resourceType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resourceType",
            "callingPackage",
            "listener"
        }
    .end annotation

    .line 420
    if-nez p3, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener, register remoteCallback for resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleConstants;->resTypeToStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", calling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-direct {v1, p3}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;-><init>(Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener, registerAssembleListener ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 433
    :cond_1
    const-string v0, "StoreProviderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener, not connected yet, add to pending, resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/AssembleConstants;->resTypeToStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", calling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_1
    const-string v1, "StoreProviderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener, add to list, lis:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;)V

    .line 440
    .local v1, "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    iput-object p2, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->callingPackage:Ljava/lang/String;

    .line 441
    iput p1, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->resType:I

    .line 442
    new-instance v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-direct {v2, p3}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;-><init>(Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    iput-object v2, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    .line 443
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v1    # "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    monitor-exit v0

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method public startObserve()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->scheduleToBind()V

    .line 147
    return-void
.end method

.method public stopObserve()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->scheduleToRelease()V

    .line 153
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 448
    if-nez p1, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 453
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;

    .line 455
    .local v2, "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    iget-object v3, v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    iget-object v3, v3, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    if-ne v3, p1, :cond_2

    .line 456
    const-string v3, "StoreProviderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterListener, unregisterListener remoteCallback now:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 460
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    iget-object v4, v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-interface {v3, v4}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    goto :goto_1

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "StoreProviderManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterListener, registerAssembleListener ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 467
    .end local v2    # "cookie":Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;
    :cond_2
    goto :goto_0

    .line 468
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;>;"
    :cond_3
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

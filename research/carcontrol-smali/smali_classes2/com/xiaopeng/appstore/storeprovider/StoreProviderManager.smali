.class public Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
.super Ljava/lang/Object;
.source "StoreProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.field private final mConnectLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    .line 66
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    .line 67
    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$a5dFp5lu2s2wOTpBQq81MnDtzG0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$a5dFp5lu2s2wOTpBQq81MnDtzG0;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToBindAction:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$g_FdIBk6qD0tfKwcjwwbFZTfrKM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$g_FdIBk6qD0tfKwcjwwbFZTfrKM;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToReleaseAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToReleaseAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Landroid/os/IBinder;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->initInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method private assertContextValid()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initialize(Context context) should be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bindService()V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.xiaopeng.resourceservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StoreProviderManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    const/4 v1, 0x1

    .line 165
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    .line 166
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

    .line 167
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private cancelSchedule()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToReleaseAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "StoreProviderManager"

    const-string v1, "executeWaitConnected"

    .line 408
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 411
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "StoreProviderManager"

    const-string v3, "executeWaitConnected: already connected"

    .line 418
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 412
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    if-nez v1, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->bindService()V

    .line 416
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->isConnectedWait()Z

    move-result v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 421
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 423
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 425
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "StoreProviderManager"

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeWaitConnected error, callback ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p1, "StoreProviderManager"

    const-string v1, "executeWaitConnected error: bindService fail"

    .line 429
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->notifyDisconnected()V

    .line 432
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 433
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static get()Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;
    .locals 2

    .line 36
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    if-nez v0, :cond_1

    .line 37
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    invoke-direct {v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    .line 41
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sInstance:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;

    return-object v0
.end method

.method private initInternal(Landroid/os/IBinder;)V
    .locals 5

    const-string v0, "StoreProviderManager"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 225
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "StoreProviderManager"

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register remote callback in init:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    iget v3, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->resType:I

    iget-object v4, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->callingPackage:Ljava/lang/String;

    iget-object v1, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StoreProviderManager"

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, registerCallback ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->notifyConnected()V

    const-string p1, "StoreProviderManager"

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: service END:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 238
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private isConnectedWait()Z
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 197
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StoreProviderManager"

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitConnected ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 203
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 204
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$a5dFp5lu2s2wOTpBQq81MnDtzG0(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->tryToBind()V

    return-void
.end method

.method public static synthetic lambda$g_FdIBk6qD0tfKwcjwwbFZTfrKM(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->tryToRelease()V

    return-void
.end method

.method private notifyConnected()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 209
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    const/4 v1, 0x1

    .line 210
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyDisconnected()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 217
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    .line 218
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    .line 219
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseInternal()V
    .locals 5

    const-string v0, "StoreProviderManager"

    const-string v1, "release"

    .line 244
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v1, :cond_0

    .line 246
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

    .line 248
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister remote callback in release:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    iget-object v2, v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-interface {v3, v2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release, unregisterAssembleListener ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->unbindService(Landroid/content/Context;)V

    .line 257
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->notifyDisconnected()V

    const/4 v1, 0x0

    .line 258
    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    const-string v1, "release end"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scheduleToBind()V
    .locals 2

    const-string v0, "StoreProviderManager"

    const-string/jumbo v1, "scheduleToBind"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->cancelSchedule()V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToBindAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleToRelease()V
    .locals 4

    const-string v0, "StoreProviderManager"

    const-string/jumbo v1, "scheduleToRelease"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mTryToReleaseAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static setFakeCalling(Ljava/lang/String;)V
    .locals 0

    .line 105
    sput-object p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    return-void
.end method

.method private tryConnected()Z
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-nez v2, :cond_2

    .line 397
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    if-nez v1, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->bindService()V

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->isConnectedWait()Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 404
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryToBind()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnecting:Z

    if-nez v1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->bindService()V

    goto :goto_0

    :cond_0
    const-string v1, "StoreProviderManager"

    const-string/jumbo v2, "tryToBind: bind already."

    .line 145
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tryToRelease()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z

    if-eqz v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->releaseInternal()V

    goto :goto_0

    :cond_0
    const-string v1, "StoreProviderManager"

    const-string/jumbo v2, "tryToRelease: not connected."

    .line 155
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreProviderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private waitConnected()Z
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 181
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mConnectLock:Ljava/lang/Object;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StoreProviderManager"

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitConnected ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const/4 v1, 0x0

    .line 185
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    .line 188
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 189
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 1

    .line 278
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    return-object p1
.end method

.method public assemble(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assemble start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreProviderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$vqg-JYFTGCLOt6UPi3kKcuMW4M8;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$vqg-JYFTGCLOt6UPi3kKcuMW4M8;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    return-object p1
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

    .line 303
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAssembleInfoList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 317
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$sPNH1ZT9ZQNO0rSW7B7n_Xx77Zk;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 329
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAssembleInfoList:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StoreProviderManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    const-string v1, "StoreProviderManager"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already initialized! Old:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", new:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    .line 90
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method public synthetic lambda$assemble$1$StoreProviderManager(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "StoreProviderManager"

    .line 285
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v1, :cond_2

    .line 287
    :try_start_0
    instance-of v2, p1, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    if-eqz v2, :cond_0

    .line 288
    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    invoke-interface {v1, p2, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->assembleEnqueue(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    return-object p1

    .line 289
    :cond_0
    instance-of v2, p1, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    if-eqz v2, :cond_1

    .line 290
    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    invoke-interface {v1, p2, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->assembleAction(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    return-object p1

    .line 292
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assemble: not support request:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assemble ex:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$getAssembleInfoList$2$StoreProviderManager(ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAssembleInfoList start, resType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreProviderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->getAssembleInfoList(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAssembleInfoList ex:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$query$0$StoreProviderManager(Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->query(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query ex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreProviderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public query(Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreProviderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$LLnm7yBDNIla3x49c4fRoxmBKSY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$StoreProviderManager$LLnm7yBDNIla3x49c4fRoxmBKSY;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->executeWaitConnected(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/ResourceContainer;

    return-object p1
.end method

.method public registerListener(ILcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V
    .locals 1

    .line 334
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->sCallingPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->registerListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    return-void
.end method

.method public registerListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    if-eqz v0, :cond_1

    const-string v0, "StoreProviderManager"

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener, register remoteCallback for resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", calling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;

    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-direct {v1, p3}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;-><init>(Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->registerAssembleListener(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StoreProviderManager"

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener, registerAssembleListener ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "StoreProviderManager"

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener, not connected yet, add to pending, resType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", calling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lis:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    const-string v1, "StoreProviderManager"

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener, add to list, lis:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;-><init>(Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$1;)V

    .line 356
    iput-object p2, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->callingPackage:Ljava/lang/String;

    .line 357
    iput p1, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->resType:I

    .line 358
    new-instance p1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-direct {p1, p3}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;-><init>(Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V

    iput-object p1, v1, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    .line 359
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public startObserve()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->scheduleToBind()V

    return-void
.end method

.method public stopObserve()V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->assertContextValid()V

    .line 115
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->scheduleToRelease()V

    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mListenerCookies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 369
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;

    .line 371
    iget-object v3, v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    iget-object v3, v3, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;->clientListener:Lcom/xiaopeng/appstore/storeprovider/IAssembleClientListener;

    if-ne v3, p1, :cond_1

    const-string v3, "StoreProviderManager"

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener, unregisterListener remoteCallback now:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager;->mResourceService:Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 376
    :try_start_1
    iget-object v2, v2, Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackCookie;->listenerWrapper:Lcom/xiaopeng/appstore/storeprovider/StoreProviderManager$RemoteCallbackWrapper;

    invoke-interface {v3, v2}, Lcom/xiaopeng/appstore/storeprovider/IResourceServiceV2;->unregisterAssembleListener(Lcom/xiaopeng/appstore/storeprovider/IAssembleListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "StoreProviderManager"

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unregisterListener, registerAssembleListener ex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 384
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

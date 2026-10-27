.class final Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;
.super Ljava/lang/Object;
.source "XUIManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/XUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XuiDeathRecipient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$XuiDeathRecipientHolder;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x2328

.field private static final MSG_RECONNECT:I = 0x1

.field private static final MSG_XUI_BINDER_DIED:I = 0x2

.field private static final MSG_XUI_BINDER_GET:I = 0x3

.field private static final RETRY_INTERVAL:I = 0xc8


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRetryCount:I

.field private mXUIManagerBases:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/XUIManagerBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private xuiBinder:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mRetryCount:I

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->xuiBinder:Landroid/os/IBinder;

    .line 406
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$1;-><init>(Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mHandler:Landroid/os/Handler;

    .line 425
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mXUIManagerBases:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/XUIManager$1;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->onXuiBinderGet()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->selfGetService()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;
    .locals 2

    const-class v0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    monitor-enter v0

    .line 435
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient$XuiDeathRecipientHolder;->access$1200()Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$addXUIManagerBase$0(Lcom/xiaopeng/xuimanager/XUIManagerBase;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 456
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/XUIManagerBase;

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onXuiBinderDied()V
    .locals 3

    const-string v0, "##xuimanager"

    const-string v1, "onXuiBinderDied"

    .line 490
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mXUIManagerBases:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 492
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/XUIManagerBase;

    if-eqz v2, :cond_0

    .line 494
    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onServerDisconnected()V

    goto :goto_0

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mXUIManagerBases:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onXuiBinderGet()V
    .locals 8

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->xuiBinder:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/IXUIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/IXUIService;

    move-result-object v0

    const-string v1, "##xuimanager"

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onXuiBinderGet,xuiService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->xuiBinder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->access$1300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mXUIManagerBases:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 506
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/XUIManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 509
    :try_start_1
    invoke-interface {v4}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/xiaopeng/xuimanager/IXUIService;->getXUIService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const-string v5, "##xuimanager"

    .line 510
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify binder for class:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",service name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 511
    invoke-interface {v4}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",binder="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",process="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 512
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 510
    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-interface {v4, v3}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->onXUIConnected(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "XUIManager"

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onXuiBinderGet,e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_0
    iget-object v4, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mXUIManagerBases:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 521
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->access$500()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 525
    :try_start_3
    invoke-static {}, Lcom/xiaopeng/xuimanager/XUIManager;->access$500()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/IXUIService;->registerObserver(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "##xuimanager"

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onXuiBinderGet,register e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 521
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private selfGetService()V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->xuiBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    const-string v0, "XuiServiceManager"

    .line 468
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->xuiBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 470
    iput v1, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mRetryCount:I

    .line 472
    :try_start_0
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "monitorXuiServiceDeath,e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "##xuimanager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 478
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mRetryCount:I

    const/16 v1, 0x2328

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 479
    iput v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mRetryCount:I

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 481
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 482
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addXUIManagerBase(Lcom/xiaopeng/xuimanager/XUIManagerBase;)V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mXUIManagerBases:Ljava/util/Set;

    new-instance v1, Lcom/xiaopeng/xuimanager/-$$Lambda$XUIManager$XuiDeathRecipient$2W42jF4VkSjPA46JOHpM5MvQxCM;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuimanager/-$$Lambda$XUIManager$XuiDeathRecipient$2W42jF4VkSjPA46JOHpM5MvQxCM;-><init>(Lcom/xiaopeng/xuimanager/XUIManagerBase;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mXUIManagerBases:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public binderDied()V
    .locals 5

    const-string v0, "##xuimanager"

    const-string v1, "service binderDied"

    .line 440
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->xuiBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binderDied,e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 448
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->xuiBinder:Landroid/os/IBinder;

    .line 449
    iput v2, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mRetryCount:I

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 451
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->selfGetService()V

    return-void
.end method

.method public init(Landroid/os/IBinder;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager$XuiDeathRecipient;->xuiBinder:Landroid/os/IBinder;

    return-void
.end method

.class Lcom/android/car/XpSharedMemoryService$Client;
.super Ljava/lang/Object;
.source "XpSharedMemoryService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/XpSharedMemoryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private final mListener:Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

.field private final mListenerBinder:Landroid/os/IBinder;

.field private final mRateMap:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final pid:I

.field final processName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/car/XpSharedMemoryService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/car/XpSharedMemoryService;Landroid/car/xpsharedmemory/ISharedMemoryDataListener;)V
    .locals 3
    .param p2, "listener"    # Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    .line 429
    iput-object p1, p0, Lcom/android/car/XpSharedMemoryService$Client;->this$0:Lcom/android/car/XpSharedMemoryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mRateMap:Landroid/util/ArraySet;

    .line 430
    iput-object p2, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListener:Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    .line 431
    invoke-interface {p2}, Landroid/car/xpsharedmemory/ISharedMemoryDataListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    .line 432
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    .line 433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->uid:I

    .line 434
    invoke-static {p1}, Lcom/android/car/XpSharedMemoryService;->access$100(Lcom/android/car/XpSharedMemoryService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    iget v2, p0, Lcom/android/car/XpSharedMemoryService$Client;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->processName:Ljava/lang/String;

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    nop

    .line 442
    invoke-static {p1}, Lcom/android/car/XpSharedMemoryService;->access$200(Lcom/android/car/XpSharedMemoryService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void

    .line 438
    :catch_0
    move-exception p1

    .line 439
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death for recipient. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpSharedMemoryService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarNotConnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/car/XpSharedMemoryService$Client;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/XpSharedMemoryService$Client;

    .line 421
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method private rateMapToString()Ljava/lang/String;
    .locals 6

    .line 504
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->this$0:Lcom/android/car/XpSharedMemoryService;

    invoke-static {v0}, Lcom/android/car/XpSharedMemoryService;->access$300(Lcom/android/car/XpSharedMemoryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 505
    :try_start_0
    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->mRateMap:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 506
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 507
    const-string v2, "{}"

    monitor-exit v0

    return-object v2

    .line 510
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 511
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 512
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 513
    if-lez v3, :cond_1

    .line 514
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_1
    iget-object v4, p0, Lcom/android/car/XpSharedMemoryService$Client;->mRateMap:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 517
    .local v4, "key":I
    invoke-static {v4}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .end local v4    # "key":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 519
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 521
    .end local v1    # "size":I
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addProperty(I)V
    .locals 2
    .param p1, "propId"    # I

    .line 446
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mRateMap:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method public binderDied()V
    .locals 6

    .line 463
    const-string v0, "XpSharedMemoryService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0}, Lcom/android/car/XpSharedMemoryService$Client;->getDescriptionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", binder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v0, 0x0

    move v1, v0

    .line 468
    .local v1, "shouldRemove":Z
    :goto_0
    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService$Client;->mRateMap:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService$Client;->mRateMap:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 470
    .local v2, "propId":I
    iget-object v3, p0, Lcom/android/car/XpSharedMemoryService$Client;->this$0:Lcom/android/car/XpSharedMemoryService;

    invoke-static {v3}, Lcom/android/car/XpSharedMemoryService;->access$300(Lcom/android/car/XpSharedMemoryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 471
    :try_start_0
    iget-object v4, p0, Lcom/android/car/XpSharedMemoryService$Client;->this$0:Lcom/android/car/XpSharedMemoryService;

    iget-object v5, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-static {v4, v2, v5}, Lcom/android/car/XpSharedMemoryService;->access$400(Lcom/android/car/XpSharedMemoryService;ILandroid/os/IBinder;)Z

    move-result v4

    move v1, v4

    .line 472
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    if-eqz v1, :cond_0

    .line 474
    const-string v3, "XpSharedMemoryService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "native unregister Listener for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/car/XpDebugLog;->getPropertyDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, p0, Lcom/android/car/XpSharedMemoryService$Client;->this$0:Lcom/android/car/XpSharedMemoryService;

    invoke-static {v3, v2}, Lcom/android/car/XpSharedMemoryService;->access$500(Lcom/android/car/XpSharedMemoryService;I)V

    .line 477
    .end local v2    # "propId":I
    :cond_0
    goto :goto_0

    .line 472
    .restart local v2    # "propId":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 479
    .end local v2    # "propId":I
    :cond_1
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->this$0:Lcom/android/car/XpSharedMemoryService;

    invoke-static {v0}, Lcom/android/car/XpSharedMemoryService;->access$600(Lcom/android/car/XpSharedMemoryService;)Lcom/android/car/CallbackStatistics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/car/XpSharedMemoryService$Client;->processName:Ljava/lang/String;

    iget v3, p0, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    iget-object v4, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/car/CallbackStatistics;->removeProcess(Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 480
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(Pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") mListenerBinder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRateMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-direct {p0}, Lcom/android/car/XpSharedMemoryService$Client;->rateMapToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "builder":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public getDescriptionString()Ljava/lang/String;
    .locals 2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Client (uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getListener()Landroid/car/xpsharedmemory/ISharedMemoryDataListener;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListener:Landroid/car/xpsharedmemory/ISharedMemoryDataListener;

    return-object v0
.end method

.method getListenerBinder()Landroid/os/IBinder;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method release()V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 484
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->this$0:Lcom/android/car/XpSharedMemoryService;

    invoke-static {v0}, Lcom/android/car/XpSharedMemoryService;->access$200(Lcom/android/car/XpSharedMemoryService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/XpSharedMemoryService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    return-void
.end method

.method removeProperty(I)V
    .locals 2
    .param p1, "propId"    # I

    .line 488
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mRateMap:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/android/car/XpSharedMemoryService$Client;->mRateMap:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/car/XpSharedMemoryService$Client;->release()V

    .line 493
    :cond_0
    return-void
.end method

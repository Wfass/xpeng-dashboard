.class Lcom/android/car/xpeng/remind/CarRemindService$Client;
.super Ljava/lang/Object;
.source "CarRemindService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/xpeng/remind/CarRemindService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private final mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private final mListenerBinder:Landroid/os/IBinder;

.field private final mRateMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final pid:I

.field final processName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/car/xpeng/remind/CarRemindService;

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/car/xpeng/remind/CarRemindService;Landroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 3
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 412
    iput-object p1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->this$0:Lcom/android/car/xpeng/remind/CarRemindService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    .line 413
    iput-object p2, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 414
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    .line 415
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->pid:I

    .line 416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->uid:I

    .line 417
    invoke-static {p1}, Lcom/android/car/xpeng/remind/CarRemindService;->access$000(Lcom/android/car/xpeng/remind/CarRemindService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->pid:I

    iget v2, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->uid:I

    invoke-static {v0, v1, v2}, Lcom/android/car/ProcessUtils;->getProcessName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->processName:Ljava/lang/String;

    .line 420
    :try_start_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    nop

    .line 425
    invoke-static {p1}, Lcom/android/car/xpeng/remind/CarRemindService;->access$100(Lcom/android/car/xpeng/remind/CarRemindService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void

    .line 421
    :catch_0
    move-exception p1

    .line 422
    .local p1, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to link death for recipient. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarRemindService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CarNotConnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rateMapToString()Ljava/lang/String;
    .locals 6

    .line 497
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->this$0:Lcom/android/car/xpeng/remind/CarRemindService;

    invoke-static {v0}, Lcom/android/car/xpeng/remind/CarRemindService;->access$200(Lcom/android/car/xpeng/remind/CarRemindService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 499
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 500
    const-string v2, "{}"

    monitor-exit v0

    return-object v2

    .line 503
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 504
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 505
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 506
    if-lez v3, :cond_1

    .line 507
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1
    iget-object v4, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 510
    .local v4, "key":I
    invoke-static {v4}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v5, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .end local v4    # "key":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 514
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 516
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
.method addProperty(IF)V
    .locals 2
    .param p1, "propId"    # I
    .param p2, "rate"    # F

    .line 429
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    return-void
.end method

.method public binderDied()V
    .locals 4

    .line 444
    const-string v0, "CarRemindService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 449
    .local v0, "propId":I
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->this$0:Lcom/android/car/xpeng/remind/CarRemindService;

    invoke-static {v1}, Lcom/android/car/xpeng/remind/CarRemindService;->access$200(Lcom/android/car/xpeng/remind/CarRemindService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 450
    :try_start_0
    iget-object v2, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->this$0:Lcom/android/car/xpeng/remind/CarRemindService;

    iget-object v3, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-static {v2, v0, v3}, Lcom/android/car/xpeng/remind/CarRemindService;->access$300(Lcom/android/car/xpeng/remind/CarRemindService;ILandroid/os/IBinder;)V

    .line 452
    monitor-exit v1

    .line 453
    .end local v0    # "propId":I
    goto :goto_0

    .line 452
    .restart local v0    # "propId":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 455
    .end local v0    # "propId":I
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        "

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(Pid:"

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") mListenerBinder:"

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRateMap:"

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/car/xpeng/remind/CarRemindService$Client;->rateMapToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public getDescriptionString()Ljava/lang/String;
    .locals 2

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getListener()Landroid/car/hardware/property/ICarPropertyEventListener;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    return-object v0
.end method

.method getListenerBinder()Landroid/os/IBinder;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method getRate(I)F
    .locals 2
    .param p1, "propId"    # I

    .line 467
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method onEvent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-interface {v0, p1}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V

    .line 434
    const-string v0, "CarRemindService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void
.end method

.method release()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 472
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->this$0:Lcom/android/car/xpeng/remind/CarRemindService;

    invoke-static {v0}, Lcom/android/car/xpeng/remind/CarRemindService;->access$100(Lcom/android/car/xpeng/remind/CarRemindService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mListenerBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    return-void
.end method

.method removeProperty(I)V
    .locals 1
    .param p1, "propId"    # I

    .line 476
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 477
    iget-object v0, p0, Lcom/android/car/xpeng/remind/CarRemindService$Client;->mRateMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/android/car/xpeng/remind/CarRemindService$Client;->release()V

    .line 481
    :cond_0
    return-void
.end method

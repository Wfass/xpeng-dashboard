.class public final Landroid/car/hardware/power/CarPowerManager$CarWakeLock;
.super Ljava/lang/Object;
.source "CarPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/power/CarPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CarWakeLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mFlags:I

.field private mHeld:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mReleaser:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/car/hardware/power/CarPowerManager;


# direct methods
.method constructor <init>(Landroid/car/hardware/power/CarPowerManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance p1, Landroid/car/hardware/power/CarPowerManager$CarWakeLock$1;

    invoke-direct {p1, p0}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock$1;-><init>(Landroid/car/hardware/power/CarPowerManager$CarWakeLock;)V

    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mReleaser:Ljava/lang/Runnable;

    .line 350
    iput p2, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mFlags:I

    .line 351
    iput-object p3, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mTag:Ljava/lang/String;

    .line 352
    iput-object p4, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mPackageName:Ljava/lang/String;

    .line 353
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Landroid/car/hardware/power/CarPowerManager$CarWakeLock;)I
    .locals 0

    .line 335
    iget p0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mFlags:I

    return p0
.end method

.method private acquireLocked()V
    .locals 5

    :try_start_0
    const-string v0, "CarPowerManager"

    const-string v1, "carwakelock: acquireLocked"

    .line 389
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v0}, Landroid/car/hardware/power/CarPowerManager;->access$100(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/ICarPower;

    move-result-object v0

    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    iget v2, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mFlags:I

    iget-object v3, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/car/hardware/power/ICarPower;->acquireCarWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mHeld:Z

    return-void

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public acquire()V
    .locals 5

    .line 377
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    const-string v1, "CarPowerManager"

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carwakelock: acquire mPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-boolean v1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mHeld:Z

    if-nez v1, :cond_0

    .line 380
    invoke-direct {p0}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->acquireLocked()V

    .line 382
    :cond_0
    invoke-static {}, Landroid/car/hardware/power/CarPowerManager;->access$200()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    invoke-static {}, Landroid/car/hardware/power/CarPowerManager;->access$200()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mReleaser:Ljava/lang/Runnable;

    const-wide/32 v3, 0x927c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-boolean v1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "CarPowerManager"

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock finalized while still held mBinder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFlags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v1}, Landroid/car/hardware/power/CarPowerManager;->access$100(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/ICarPower;

    move-result-object v1

    iget-object v2, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    iget v3, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mFlags:I

    invoke-interface {v1, v2, v3}, Landroid/car/hardware/power/ICarPower;->releaseCarWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 364
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 367
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isHeld()Z
    .locals 2

    .line 371
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-boolean v1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mHeld:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 373
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock release mFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarPowerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget v0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mFlags:I

    invoke-virtual {p0, v0}, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->release(I)V

    return-void
.end method

.method public release(I)V
    .locals 3

    .line 403
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-boolean v1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 406
    :try_start_1
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v1}, Landroid/car/hardware/power/CarPowerManager;->access$100(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/ICarPower;

    move-result-object v1

    iget-object v2, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Landroid/car/hardware/power/ICarPower;->releaseCarWakeLock(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 410
    :try_start_2
    iput-boolean p1, p0, Landroid/car/hardware/power/CarPowerManager$CarWakeLock;->mHeld:Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 412
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

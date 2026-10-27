.class Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;
.super Ljava/lang/Object;
.source "BluetoothDeviceConnectionPolicy.java"

# interfaces
.implements Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDeviceConnectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserServiceConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;


# direct methods
.method constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 421
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreUnbind()V
    .locals 4

    .line 444
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Before Unbinding from UserService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$1000(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Landroid/car/ICarBluetoothUserService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$1000(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Landroid/car/ICarBluetoothUserService;

    move-result-object v0

    invoke-interface {v0}, Landroid/car/ICarBluetoothUserService;->closeBluetoothConnectionProxy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :cond_1
    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BTDevConnectionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception during closeBluetoothConnectionProxy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$1300(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    .line 458
    return-void
.end method

.method public onServiceConnected(Landroid/car/ICarUserService;)V
    .locals 2
    .param p1, "carUserService"    # Landroid/car/ICarUserService;

    .line 424
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$902(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/car/ICarUserService;)Landroid/car/ICarUserService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 430
    goto :goto_0

    .line 429
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 432
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Connected to PerUserCarService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$1100(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Landroid/car/ICarBluetoothUserService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$1002(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/car/ICarBluetoothUserService;)Landroid/car/ICarBluetoothUserService;

    .line 439
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$1200(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    .line 440
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .line 462
    invoke-static {}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, "BTDevConnectionPolicy"

    const-string v1, "Disconnected from PerUserCarService"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$1002(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/car/ICarBluetoothUserService;)Landroid/car/ICarBluetoothUserService;

    .line 469
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$902(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/car/ICarUserService;)Landroid/car/ICarUserService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    goto :goto_0

    .line 471
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$UserServiceConnectionCallback;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$800(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 474
    :cond_1
    :goto_0
    return-void
.end method

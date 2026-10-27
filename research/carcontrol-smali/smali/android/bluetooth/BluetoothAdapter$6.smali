.class Landroid/bluetooth/BluetoothAdapter$6;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 3424
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBluetoothServiceUp$0$BluetoothAdapter$6(Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .locals 2

    .line 3432
    :try_start_0
    iget-object p2, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object p2

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$1200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothMetadataListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    .line 3433
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 3432
    invoke-interface {p2, v0, p1, v1}, Landroid/bluetooth/IBluetooth;->registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "BluetoothAdapter"

    const-string v0, "Failed to register metadata listener"

    .line 3435
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onBluetoothServiceDown()V
    .locals 3

    .line 3453
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    monitor-enter v0

    .line 3454
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->access$202(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 3455
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$900(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3456
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$900(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3458
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$1000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3459
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$1000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeAdvertiser;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->cleanup()V

    .line 3461
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$1100(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3462
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$1100(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/le/BluetoothLeScanner;->cleanup()V

    .line 3464
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 3

    .line 3426
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    monitor-enter v0

    .line 3427
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->access$202(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 3428
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3429
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->access$100(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 3430
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$100(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$6$5T9RHjhyWiBTYcTVaFq91QuoN94;

    invoke-direct {v1, p0}, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$6$5T9RHjhyWiBTYcTVaFq91QuoN94;-><init>(Landroid/bluetooth/BluetoothAdapter$6;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3438
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3439
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->access$700(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 3440
    :try_start_2
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->access$700(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_0

    .line 3442
    :try_start_3
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object p1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$800(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothConnectionCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$6;->this$0:Landroid/bluetooth/BluetoothAdapter;

    .line 3443
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 3442
    invoke-interface {p1, v1, v2}, Landroid/bluetooth/IBluetooth;->registerBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string v1, "BluetoothAdapter"

    const-string v2, "onBluetoothServiceUp: Failed to register bluetoothconnection callback"

    .line 3445
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3449
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 3438
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 3428
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method

.method public onBrEdrDown()V
    .locals 0

    return-void
.end method

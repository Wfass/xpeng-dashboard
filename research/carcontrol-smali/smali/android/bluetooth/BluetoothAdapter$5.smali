.class Landroid/bluetooth/BluetoothAdapter$5;
.super Landroid/app/PropertyInvalidatedCache;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothAdapter;ILjava/lang/String;)V
    .locals 0

    .line 2797
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$5;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public queryToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "getProfileConnectionState(profile=\"%d\")"

    .line 2815
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic queryToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2797
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$5;->queryToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected recompute(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 2802
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$5;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2803
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$5;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2804
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$5;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$200(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2809
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$5;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "BluetoothAdapter"

    const-string v1, "getProfileConnectionState:"

    .line 2807
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2809
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothAdapter$5;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    const/4 p1, 0x0

    .line 2811
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2809
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$5;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2810
    throw p1
.end method

.method protected bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2797
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$5;->recompute(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

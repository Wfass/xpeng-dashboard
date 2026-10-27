.class Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothManagerCallback"
.end annotation


# instance fields
.field private final mAdapterIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 3350
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    .line 3351
    iput p1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 5

    const-string v0, "BluetoothAdapter"

    const-string v1, "onBluetoothServiceDown"

    .line 3379
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3383
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$500()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3385
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    .line 3386
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3389
    :try_start_1
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothAdapter"

    const-string v3, "onBluetoothServiceDown: cb is null!"

    .line 3391
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    .line 3394
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3397
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 5

    const-string v0, "BluetoothAdapter"

    .line 3356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothServiceUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3360
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$500()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3362
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    .line 3363
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3366
    :try_start_1
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothAdapter"

    const-string v3, "onBluetoothServiceUp: cb is null!"

    .line 3368
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    .line 3371
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3374
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onBrEdrDown()V
    .locals 5

    .line 3405
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$400()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3407
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->access$600()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothAdapter$BluetoothManagerCallback;->mAdapterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    .line 3408
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 3411
    :try_start_1
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManagerCallback;->onBrEdrDown()V

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothAdapter"

    const-string v3, "onBrEdrDown: cb is null!"

    .line 3413
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    .line 3416
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3419
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

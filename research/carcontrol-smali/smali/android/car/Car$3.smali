.class Landroid/car/Car$3;
.super Ljava/lang/Object;
.source "Car.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/Car;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/Car;


# direct methods
.method constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 2529
    iput-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 2532
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$200(Landroid/car/Car;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2533
    :try_start_0
    invoke-static {p2}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "CAR.L"

    const-string p2, "null binder service"

    .line 2535
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2536
    monitor-exit v0

    return-void

    .line 2538
    :cond_0
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2}, Landroid/car/Car;->access$300(Landroid/car/Car;)Landroid/car/ICar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2}, Landroid/car/Car;->access$300(Landroid/car/Car;)Landroid/car/ICar;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/ICar;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1}, Landroid/car/ICar;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2540
    monitor-exit v0

    return-void

    .line 2542
    :cond_1
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/car/Car;->access$402(Landroid/car/Car;I)I

    .line 2543
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2, v1}, Landroid/car/Car;->access$302(Landroid/car/Car;Landroid/car/ICar;)Landroid/car/ICar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2545
    :try_start_1
    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$300(Landroid/car/Car;)Landroid/car/ICar;

    move-result-object v2

    const-string/jumbo v3, "xp_vehicle"

    invoke-interface {v2, v3}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/car/Car;->access$502(Landroid/car/Car;Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2547
    :try_start_2
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-virtual {v2, v1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    const-string v2, "CAR.L"

    .line 2548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get car_service onServiceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v4}, Landroid/car/Car;->access$600(Landroid/car/Car;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "CAR.L"

    .line 2550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get car_service onServiceConnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v3}, Landroid/car/Car;->access$600(Landroid/car/Car;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v3}, Landroid/car/Car;->access$400(Landroid/car/Car;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CAR.L"

    const-string v2, "handler carservice restart log"

    .line 2552
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$700(Landroid/car/Car;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2554
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/CarManagerBase;

    if-nez v3, :cond_2

    const-string v3, "CAR.L"

    .line 2556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " manager is null of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v4}, Landroid/car/Car;->access$600(Landroid/car/Car;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v4, "CAR.L"

    .line 2558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v6}, Landroid/car/Car;->access$600(Landroid/car/Car;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", update binders of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " manager"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    invoke-virtual {v3}, Landroid/car/CarManagerBase;->onConnected()V

    goto :goto_1

    .line 2562
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2563
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$800(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2564
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$800(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object p1

    iget-object p2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    goto :goto_2

    .line 2565
    :cond_4
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$900(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2566
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$900(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 2562
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 2573
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$1000(Landroid/car/Car;)Landroid/car/CarFeatures;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/CarFeatures;->resetCache()V

    .line 2574
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$200(Landroid/car/Car;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2575
    :try_start_0
    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$400(Landroid/car/Car;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2577
    monitor-exit v0

    return-void

    .line 2579
    :cond_0
    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$1100(Landroid/car/Car;)V

    const-string v1, "CAR.L"

    .line 2580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get car_service onServiceDisconnected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v3}, Landroid/car/Car;->access$600(Landroid/car/Car;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v3}, Landroid/car/Car;->access$400(Landroid/car/Car;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2582
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$800(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2583
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$800(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object p1

    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    goto :goto_0

    .line 2584
    :cond_1
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$900(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2585
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$900(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_2
    :goto_0
    const-string p1, "CAR.L"

    .line 2592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carservice exit, need reconnnect, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$600(Landroid/car/Car;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$1300(Landroid/car/Car;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$1200(Landroid/car/Car;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2581
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.class Landroid/bluetooth/BluetoothAdapter$1;
.super Landroid/bluetooth/IBluetoothMetadataListener$Stub;
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

    .line 774
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothMetadataListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onMetadataChanged$0(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 786
    invoke-interface {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;->onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 5

    .line 777
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Attributable;->setAttributionSource(Landroid/content/Attributable;Landroid/content/AttributionSource;)Landroid/content/Attributable;

    .line 778
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$100(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 779
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$100(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$1;->this$0:Landroid/bluetooth/BluetoothAdapter;

    .line 781
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->access$100(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 782
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 783
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    .line 784
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 785
    new-instance v4, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$NFEZAxLAVp81v0uqGIWh5g1ceqs;

    invoke-direct {v4, v3, p1, p2, p3}, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$1$NFEZAxLAVp81v0uqGIWh5g1ceqs;-><init>(Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;Landroid/bluetooth/BluetoothDevice;I[B)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 790
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

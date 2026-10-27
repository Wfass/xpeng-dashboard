.class Landroid/bluetooth/BluetoothAdapter$8;
.super Landroid/bluetooth/IBluetoothConnectionCallback$Stub;
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

    .line 4317
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$8;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothConnectionCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDeviceConnected$0(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 4325
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;->onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic lambda$onDeviceDisconnected$1(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 4336
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method


# virtual methods
.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 4320
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$8;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Attributable;->setAttributionSource(Landroid/content/Attributable;Landroid/content/AttributionSource;)Landroid/content/Attributable;

    .line 4322
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$8;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$700(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4323
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    .line 4324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 4325
    new-instance v3, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$pkEwT-MoR3a-BLZCbZpJ00VaUQ4;

    invoke-direct {v3, v2, p1}, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$pkEwT-MoR3a-BLZCbZpJ00VaUQ4;-><init>(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    .line 4331
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$8;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Attributable;->setAttributionSource(Landroid/content/Attributable;Landroid/content/AttributionSource;)Landroid/content/Attributable;

    .line 4333
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$8;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->access$700(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4334
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;

    .line 4335
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 4336
    new-instance v3, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;

    invoke-direct {v3, v2, p1, p2}, Landroid/bluetooth/-$$Lambda$BluetoothAdapter$8$wanEijTFfREYfgE_25QOGVySoEo;-><init>(Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;
.super Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;
.source "XBluetoothNFManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    .line 318
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsBluetoothControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v0}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 403
    .local v0, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v1, v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->coverConnectionState(I)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-virtual {v3, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->coverConnectionState(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onConnectionStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V

    .line 406
    .end local v0    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    :cond_0
    return-void
.end method

.method public onAdapterDiscoveryFinished()V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onAdapterDiscoveryFinished(I)V

    .line 372
    :cond_0
    return-void
.end method

.method public onAdapterDiscoveryStarted()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onAdapterDiscoveryStarted(I)V

    .line 365
    :cond_0
    return-void
.end method

.method public onAdapterStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->coverBTState(I)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->coverBTState(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onAdapterStateChanged(III)V

    .line 358
    :cond_0
    return-void
.end method

.method public onBluetoothServiceReady()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onReady()V

    .line 325
    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prevState"    # I
    .param p4, "newState"    # I

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v0}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 378
    .local v0, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p2}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setName(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v1, v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-virtual {v2, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->coverBondState(I)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-virtual {v3, p4}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->coverBondState(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onDeviceBondStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V

    .line 382
    .end local v0    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    :cond_0
    return-void
.end method

.method public onDeviceFound(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "category"    # B

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 345
    new-instance v0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v0}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 346
    .local v0, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p2}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setName(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-static {v1, p3, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->access$100(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;BLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setCategory(I)V

    .line 349
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v1, v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onDeviceFound(Lcom/xiaopeng/lib_xpbt/XpBtDevice;I)V

    .line 351
    .end local v0    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    :cond_0
    return-void
.end method

.method public onDeviceUuidsUpdated(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "supportProfile"    # I

    .line 387
    return-void
.end method

.method public onHfpStateChanged(Ljava/lang/String;II)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v0}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 393
    .local v0, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v1, v1, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-virtual {v2, p2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->coverConnectionState(I)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    invoke-virtual {v3, p3}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->coverConnectionState(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onConnectionStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V

    .line 396
    .end local v0    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    :cond_0
    return-void
.end method

.method public retPairedDevices(I[Ljava/lang/String;[Ljava/lang/String;[I[B)V
    .locals 5
    .param p1, "elements"    # I
    .param p2, "address"    # [Ljava/lang/String;
    .param p3, "name"    # [Ljava/lang/String;
    .param p4, "supportProfile"    # [I
    .param p5, "category"    # [B

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xpbluetooth refreshPairedDevice :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 330
    if-lez p1, :cond_0

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 332
    new-instance v1, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v1}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 333
    .local v1, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 334
    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setName(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    aget-byte v3, p5, v0

    aget-object v4, p2, v0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->access$100(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;BLjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setCategory(I)V

    .line 336
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    iget-object v2, v2, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->pairedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v1    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothNFManagerImpl;->getPairedDevices:Z

    .line 340
    return-void
.end method

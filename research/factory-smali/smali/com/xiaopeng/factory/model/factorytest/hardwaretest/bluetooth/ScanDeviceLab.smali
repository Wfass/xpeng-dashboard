.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;
.super Ljava/lang/Object;
.source "ScanDeviceLab.java"


# static fields
.field private static itemLab:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->items:Ljava/util/List;

    .line 18
    return-void
.end method

.method public static getDeviceItemLab()Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;
    .locals 1

    .line 21
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->itemLab:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;-><init>()V

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->itemLab:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;

    .line 24
    :cond_0
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->itemLab:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;

    return-object v0
.end method


# virtual methods
.method public addItems(Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;)V
    .locals 1
    .param p1, "item"    # Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    return-void
.end method

.method public deleteDeviceItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getAvailableDeviceItem(Ljava/lang/String;)Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "availableDeviceItem":Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;

    .line 38
    .local v2, "item":Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;
    invoke-virtual {v2}, Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    move-object v0, v2

    .line 41
    .end local v2    # "item":Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;
    :cond_0
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/factory/bean/factorytest/ScanDevice;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/bluetooth/ScanDeviceLab;->items:Ljava/util/List;

    return-object v0
.end method

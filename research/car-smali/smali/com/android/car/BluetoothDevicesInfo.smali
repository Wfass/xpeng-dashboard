.class public Lcom/android/car/BluetoothDevicesInfo;
.super Ljava/lang/Object;
.source "BluetoothDevicesInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;,
        Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "CarBluetoothDevicesInfo"


# instance fields
.field private final DEVICE_NOT_FOUND:I

.field private final DEVICE_PRIORITY_UNDEFINED:I

.field private mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

.field private mDeviceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-object v0, Lcom/android/car/Utils;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "profile"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/BluetoothDevicesInfo;->DEVICE_NOT_FOUND:I

    .line 53
    iput v0, p0, Lcom/android/car/BluetoothDevicesInfo;->DEVICE_PRIORITY_UNDEFINED:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    .line 136
    new-instance v0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;-><init>(Lcom/android/car/BluetoothDevicesInfo;I)V

    iput-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 137
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "numConnectionsSupported"    # I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/BluetoothDevicesInfo;->DEVICE_NOT_FOUND:I

    .line 53
    iput v0, p0, Lcom/android/car/BluetoothDevicesInfo;->DEVICE_PRIORITY_UNDEFINED:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    .line 141
    new-instance v0, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;-><init>(Lcom/android/car/BluetoothDevicesInfo;II)V

    iput-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 142
    return-void
.end method

.method private findDeviceInfoInListLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 275
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 276
    return-object v0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 279
    .local v2, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    return-object v2

    .line 282
    .end local v2    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    :cond_1
    goto :goto_0

    .line 283
    :cond_2
    return-object v0
.end method

.method private getPositionInListLocked(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 233
    const/4 v0, -0x1

    .line 234
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 237
    .local v3, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 238
    move v0, v1

    .line 239
    goto :goto_1

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 242
    .end local v3    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private moveDeviceToPrioritySlotsLocked(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;I)V
    .locals 3
    .param p1, "deviceInfo"    # Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    .param p2, "priority"    # I

    .line 631
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_0

    .line 632
    const-string v0, "CarBluetoothDevicesInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 636
    return-void
.end method

.method private moveDeviceToQueueFrontLocked(I)V
    .locals 4
    .param p1, "position"    # I

    .line 644
    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->getNumberOfTaggedDevicesLocked()I

    move-result v0

    .line 646
    .local v0, "topOfList":I
    if-gt p1, v0, :cond_0

    .line 647
    return-void

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 650
    .local v1, "deviceInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-static {v1}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_2

    .line 651
    sget-boolean v2, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v2, :cond_1

    .line 652
    const-string v2, "CarBluetoothDevicesInfo"

    const-string v3, "Unexpected: deviceToMove is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1
    return-void

    .line 656
    :cond_2
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 661
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 662
    return-void
.end method


# virtual methods
.method public addDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothDevicesInfo;->checkDeviceInListLocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "CarBluetoothDevicesInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already in list.  Not adding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;-><init>(Lcom/android/car/BluetoothDevicesInfo;Landroid/bluetooth/BluetoothDevice;I)V

    .line 327
    .local v0, "deviceInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v0    # "deviceInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    goto :goto_0

    .line 329
    :cond_2
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_3

    .line 330
    const-string v0, "CarBluetoothDevicesInfo"

    const-string v1, "Device List is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_3
    :goto_0
    return-void
.end method

.method checkDeviceInListLocked(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "isPresent":Z
    if-nez p1, :cond_0

    .line 256
    return v0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 259
    .local v2, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    const/4 v0, 0x1

    .line 261
    goto :goto_1

    .line 263
    .end local v2    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    :cond_1
    goto :goto_0

    .line 264
    :cond_2
    :goto_1
    return v0
.end method

.method public clearDeviceListLocked()V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 449
    :cond_0
    return-void
.end method

.method public getBluetoothDeviceForPriorityLocked(I)Landroid/bluetooth/BluetoothDevice;
    .locals 4
    .param p1, "priority"    # I

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 218
    .local v2, "deviceInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$100(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 219
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    return-object v1

    .line 221
    .end local v2    # "deviceInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    :cond_0
    goto :goto_0

    .line 222
    :cond_1
    return-object v0
.end method

.method public getConnectedDevicesLocked()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 409
    .local v2, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-virtual {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getConnectionState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 410
    invoke-virtual {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v2    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    :cond_0
    goto :goto_0

    .line 413
    :cond_1
    sget-boolean v1, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v1, :cond_2

    .line 414
    const-string v1, "CarBluetoothDevicesInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active Connections: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->getNumberOfActiveConnectionsLocked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v1, "CarBluetoothDevicesInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected devices Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    return-object v0
.end method

.method public getConnectingDeviceLocked()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 394
    .local v1, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-virtual {v1}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getConnectionState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 395
    invoke-virtual {v1}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 397
    .end local v1    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    :cond_0
    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 368
    const/4 v0, -0x1

    .line 369
    .local v0, "state":I
    if-nez p1, :cond_0

    .line 370
    const-string v1, "CarBluetoothDevicesInfo"

    const-string v2, "getCurrentConnectionStateLocked() device null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 375
    .local v2, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 376
    .local v3, "dev":Landroid/bluetooth/BluetoothDevice;
    if-nez v3, :cond_1

    .line 377
    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    invoke-virtual {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getConnectionState()I

    move-result v0

    .line 381
    goto :goto_1

    .line 383
    .end local v2    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    .end local v3    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    goto :goto_0

    .line 384
    :cond_3
    :goto_1
    return v0
.end method

.method public getDeviceInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "bluetoothDeviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 294
    .local v2, "deviceInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v2    # "deviceInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    goto :goto_0

    .line 296
    :cond_0
    return-object v0
.end method

.method public getNextDeviceInQueueLocked()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->getNumberOfPairedDevicesLocked()I

    move-result v1

    .line 462
    .local v1, "numberOfPairedDevices":I
    :goto_0
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 463
    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    invoke-virtual {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getConnectionState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$408(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    goto :goto_0

    .line 468
    :cond_0
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    if-lt v2, v1, :cond_2

    .line 469
    sget-boolean v2, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v2, :cond_1

    .line 470
    const-string v2, "CarBluetoothDevicesInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No device available for profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 472
    invoke-static {v4}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$500(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 473
    invoke-static {v4}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_1
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$402(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I

    .line 489
    const/4 v2, 0x0

    return-object v2

    .line 492
    :cond_2
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 493
    sget-boolean v2, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v2, :cond_3

    .line 494
    const-string v2, "CarBluetoothDevicesInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v4}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_3
    return-object v0
.end method

.method public getNumberOfActiveConnectionsLocked()I
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$300(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v0

    return v0
.end method

.method public getNumberOfConnectionsSupported()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$200(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v0

    return v0
.end method

.method public getNumberOfPairedDevicesLocked()I
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfTaggedDevicesLocked()I
    .locals 3

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "numberOfTaggedDevices":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/car/BluetoothDevicesInfo;->getBluetoothDeviceForPriorityLocked(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    const/4 v1, 0x2

    return v1

    .line 205
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/car/BluetoothDevicesInfo;->getBluetoothDeviceForPriorityLocked(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 207
    return v1

    .line 209
    :cond_1
    return v0
.end method

.method public getProfileLocked()Ljava/lang/Integer;
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$500(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRetryCountLocked()Ljava/lang/Integer;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$600(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public incrementRetryCountLocked()V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$608(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    .line 688
    :cond_0
    return-void
.end method

.method public isProfileConnectableLocked()Z
    .locals 4

    .line 716
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_0

    .line 717
    const-string v0, "CarBluetoothDevicesInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$500(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Num of connections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 718
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$300(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Conn Supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 719
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$200(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", the flag: mDeviceAvailableToConnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 721
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$700(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$700(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 725
    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$300(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$200(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 726
    const/4 v0, 0x1

    return v0

    .line 729
    :cond_1
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$700(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    const-string v0, "CarBluetoothDevicesInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected devices for profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$500(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->getConnectedDevicesLocked()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 733
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "CarBluetoothDevicesInfo"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 737
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeBluetoothDevicePriorityLocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "deviceToUntag"    # Landroid/bluetooth/BluetoothDevice;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDevicesInfo;->findDeviceInfoInListLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    move-result-object v0

    .line 190
    .local v0, "deviceInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->setBluetoothDevicePriority(I)V

    .line 191
    return-void
.end method

.method public removeDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "dev"    # Landroid/bluetooth/BluetoothDevice;

    .line 426
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 427
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDevicesInfo;->findDeviceInfoInListLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    move-result-object v0

    .line 428
    .local v0, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    if-eqz v0, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v0}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getConnectionState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$310(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    .line 437
    .end local v0    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    :cond_0
    goto :goto_0

    .line 438
    :cond_1
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_2

    .line 439
    const-string v0, "CarBluetoothDevicesInfo"

    const-string v1, "Device List is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_2
    :goto_0
    const-string v0, "CarBluetoothDevicesInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device List size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method public resetConnectionInfoLocked()V
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$302(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I

    .line 759
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0, v1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$402(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I

    .line 760
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0, v1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$602(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I

    .line 761
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$702(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;Z)Z

    .line 762
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 763
    .local v2, "info":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-virtual {v2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/car/BluetoothDevicesInfo;->setConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;I)V

    .line 765
    .end local v2    # "info":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    goto :goto_0

    .line 766
    :cond_0
    return-void
.end method

.method public resetDeviceIndex()V
    .locals 2

    .line 750
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$402(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I

    .line 751
    return-void
.end method

.method public resetDeviceListLocked()V
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->resetConnectionInfoLocked()V

    .line 773
    return-void
.end method

.method public setBluetoothDevicePriorityLocked(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "deviceToTag"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 159
    invoke-virtual {p0, p2}, Lcom/android/car/BluetoothDevicesInfo;->getBluetoothDeviceForPriorityLocked(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 160
    .local v0, "oldDeviceWithPriority":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 161
    sget-boolean v1, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "CarBluetoothDevicesInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsetting priority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/car/BluetoothDevicesInfo;->removeBluetoothDevicePriorityLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 167
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDevicesInfo;->findDeviceInfoInListLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    move-result-object v1

    .line 168
    .local v1, "newDeviceInfoWithPriority":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    if-nez v1, :cond_3

    .line 169
    sget-boolean v2, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v2, :cond_2

    .line 170
    const-string v2, "CarBluetoothDevicesInfo"

    const-string v3, "setBluetoothDevicePriorityLocked():Unknown and unpaired device"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    return-void

    .line 174
    :cond_3
    sget-boolean v2, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v2, :cond_4

    .line 175
    const-string v2, "CarBluetoothDevicesInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {v1}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    invoke-virtual {v1, p2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->setBluetoothDevicePriority(I)V

    .line 180
    invoke-direct {p0, v1, p2}, Lcom/android/car/BluetoothDevicesInfo;->moveDeviceToPrioritySlotsLocked(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;I)V

    .line 181
    return-void
.end method

.method public setConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 342
    if-nez p1, :cond_0

    .line 343
    const-string v0, "CarBluetoothDevicesInfo"

    const-string v1, "setConnectionStateLocked() device null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 347
    .local v1, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    invoke-static {v1}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 348
    .local v2, "dev":Landroid/bluetooth/BluetoothDevice;
    if-nez v2, :cond_1

    .line 349
    goto :goto_0

    .line 351
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_2

    .line 353
    const-string v0, "CarBluetoothDevicesInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " state to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->setConnectionState(I)V

    .line 356
    goto :goto_1

    .line 358
    .end local v1    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    .end local v2    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    goto :goto_0

    .line 359
    :cond_4
    :goto_1
    return-void
.end method

.method public setDeviceAvailableToConnectLocked(Z)V
    .locals 1
    .param p1, "deviceAvailable"    # Z

    .line 705
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0, p1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$702(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;Z)Z

    .line 706
    return-void
.end method

.method public setNumberOfConnectionsSupported(I)V
    .locals 1
    .param p1, "num"    # I

    .line 304
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0, p1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$202(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I

    .line 305
    return-void
.end method

.method toDebugString()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 778
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tmDeviceAvailableToConnect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$700(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t#Paired Devices = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->getNumberOfPairedDevicesLocked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", #Active Connections = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$300(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", #Connections Supported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$200(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 783
    const/4 v1, 0x1

    .line 784
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 785
    .local v3, "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\t\tdevice# "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    .local v5, "i":I
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v1    # "i":I
    const-string v1, " = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v3}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/Utils;->getDeviceDebugInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v3}, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->getConnectionState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 799
    const-string v1, "state_UNKNOWN"

    goto :goto_1

    .line 796
    :pswitch_0
    const-string v1, "STATE_CONNECTED"

    .line 797
    .local v1, "s":Ljava/lang/String;
    goto :goto_1

    .line 790
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_1
    const-string v1, "STATE_CONNECTING"

    .line 791
    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_1

    .line 793
    .end local v1    # "s":Ljava/lang/String;
    :pswitch_2
    const-string v1, "STATE_DISCONNECTED"

    .line 794
    .restart local v1    # "s":Ljava/lang/String;
    nop

    .line 799
    :goto_1
    nop

    .line 801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .end local v1    # "s":Ljava/lang/String;
    .end local v3    # "devInfo":Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
    nop

    .line 784
    move v1, v5

    goto :goto_0

    .line 803
    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 804
    :cond_1
    const-string v1, "\n\tno devices listed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :goto_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateConnectionStatusLocked(Landroid/bluetooth/BluetoothDevice;ZZ)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "success"    # Z
    .param p3, "retry"    # Z

    .line 512
    if-nez p1, :cond_0

    .line 513
    const-string v0, "CarBluetoothDevicesInfo"

    const-string v1, "Updating Status with null BluetoothDevice"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p2, :cond_9

    .line 517
    sget-boolean v2, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v2, :cond_1

    .line 518
    const-string v2, "CarBluetoothDevicesInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v4}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$500(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " connected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDevicesInfo;->getPositionInListLocked(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 522
    .local v2, "positionInQ":I
    sget-boolean v3, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v3, :cond_2

    .line 523
    const-string v3, "CarBluetoothDevicesInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Position of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in Q: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 528
    const-string v3, "CarBluetoothDevicesInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected device not in Q: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothDevicesInfo;->addDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 530
    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mDeviceInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 531
    :cond_3
    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 541
    sget-boolean v3, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v3, :cond_4

    .line 542
    const-string v3, "CarBluetoothDevicesInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Different device connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " CurrIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 543
    invoke-static {v5}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 553
    invoke-direct {p0, v2}, Lcom/android/car/BluetoothDevicesInfo;->moveDeviceToQueueFrontLocked(I)V

    .line 558
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothDevicesInfo;->getCurrentConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-eq v3, v1, :cond_6

    .line 559
    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$308(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    .line 560
    sget-boolean v3, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v3, :cond_6

    .line 561
    const-string v3, "CarBluetoothDevicesInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incrementing Active Connections "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 563
    invoke-static {v5}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$300(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 561
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/android/car/BluetoothDevicesInfo;->setConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;I)V

    .line 568
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v1, v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$602(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I

    .line 570
    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->getConnectingDeviceLocked()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_7

    .line 571
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$408(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    .line 573
    :cond_7
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_8

    .line 574
    const-string v0, "CarBluetoothDevicesInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 575
    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$500(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Number of Active Connections: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 576
    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$300(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v2    # "positionInQ":I
    :cond_8
    goto/16 :goto_1

    .line 580
    :cond_9
    sget-boolean v2, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v2, :cond_a

    .line 581
    const-string v2, "CarBluetoothDevicesInfo"

    const-string v3, "Connection fail or Disconnected"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothDevicesInfo;->getCurrentConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v1, :cond_b

    .line 585
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$310(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    .line 586
    sget-boolean v1, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v1, :cond_b

    .line 587
    const-string v1, "CarBluetoothDevicesInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decrementing Active Connections "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 588
    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$300(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/android/car/BluetoothDevicesInfo;->setConnectionStateLocked(Landroid/bluetooth/BluetoothDevice;I)V

    .line 596
    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->getConnectingDeviceLocked()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_e

    .line 597
    if-nez p3, :cond_d

    .line 598
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v1}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$408(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    .line 599
    sget-boolean v1, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v1, :cond_c

    .line 600
    const-string v1, "CarBluetoothDevicesInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving to device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v3}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_c
    iget-object v1, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    invoke-static {v1, v0}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$602(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;I)I

    goto :goto_1

    .line 605
    :cond_d
    sget-boolean v0, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v0, :cond_10

    .line 606
    const-string v0, "CarBluetoothDevicesInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Staying with the same device - retrying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/BluetoothDevicesInfo;->mConnectionInfo:Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;

    .line 607
    invoke-static {v2}, Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;->access$400(Lcom/android/car/BluetoothDevicesInfo$ConnectionInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 606
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 611
    :cond_e
    invoke-virtual {p0}, Lcom/android/car/BluetoothDevicesInfo;->getConnectingDeviceLocked()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 612
    .local v0, "connectingDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_f

    .line 613
    sget-boolean v1, Lcom/android/car/BluetoothDevicesInfo;->DBG:Z

    if-eqz v1, :cond_10

    .line 614
    const-string v1, "CarBluetoothDevicesInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not moving to next device. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " still connecting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 618
    :cond_f
    const-string v1, "CarBluetoothDevicesInfo"

    const-string v2, "Unexpected. Status = connecting, but connecting device = null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .end local v0    # "connectingDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_10
    :goto_1
    return-void
.end method

.class public Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;
.super Ljava/lang/Object;
.source "PeripheralDeviceDataBi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;,
        Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceDataBiHolder;
    }
.end annotation


# static fields
.field private static final BUTTON_ID:Ljava/lang/String; = "B004"

.field private static final DEVICE_TYPE_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final DEVICE_TYPE_IOT:Ljava/lang/String; = "IoT"

.field private static final DEVICE_TYPE_USB:Ljava/lang/String; = "USB"

.field private static final OFF_TYPE_DISCONNECT:Ljava/lang/String; = "1"

.field private static final OFF_TYPE_IG_OFF:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "PeripheralDeviceDataBi"

.field private static final mDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private broadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$NQzs9O0QXxogxml7MWY6rP0WuEg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$NQzs9O0QXxogxml7MWY6rP0WuEg;-><init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->broadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    .line 81
    new-instance v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$1;-><init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 141
    const-string v0, "PeripheralDeviceDataBi"

    const-string v1, "create instance"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$1;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private addCarListeners()V
    .locals 2

    .line 374
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 375
    return-void
.end method

.method private generateBluetoothDeviceData(Landroid/bluetooth/BluetoothDevice;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .locals 9
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 331
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 333
    .local v2, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    .line 334
    .local v3, "cod":I
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    .line 335
    .local v4, "majorClass":I
    not-int v5, v4

    and-int/2addr v5, v3

    .line 336
    .local v5, "minorClass":I
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 337
    .local v6, "address":Ljava/lang/String;
    new-instance v7, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    invoke-direct {v7}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;-><init>()V

    move-object v0, v7

    .line 338
    const-string v7, "Bluetooth"

    iput-object v7, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->type:Ljava/lang/String;

    .line 339
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->subType:Ljava/lang/String;

    .line 340
    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->brand:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->name:Ljava/lang/String;

    .line 342
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->id:Ljava/lang/String;

    .line 343
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    .line 346
    const-string v7, "0"

    iput-object v7, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->errCount:Ljava/lang/String;

    .line 347
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v2    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v3    # "cod":I
    .end local v4    # "majorClass":I
    .end local v5    # "minorClass":I
    .end local v6    # "address":Ljava/lang/String;
    nop

    .line 357
    return-object v0

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PeripheralDeviceDataBi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateBluetoothDeviceData e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    return-object v1

    .line 353
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "PeripheralDeviceDataBi"

    const-string v3, "generateBluetoothDeviceData,device is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-object v1
.end method

.method private generateIotDeviceData(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .locals 6
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 205
    :try_start_0
    new-instance v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;-><init>()V

    move-object v0, v2

    .line 206
    const-string v2, "IoT"

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->type:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->subType:Ljava/lang/String;

    .line 208
    const-string v2, "0"

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->brand:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->name:Ljava/lang/String;

    .line 210
    if-eqz p2, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->id:Ljava/lang/String;

    .line 211
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    .line 214
    const-string v2, "0"

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->errCount:Ljava/lang/String;

    .line 215
    iput-object p3, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    nop

    .line 225
    return-object v0

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PeripheralDeviceDataBi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateIotDeviceData e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object v1

    .line 221
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "PeripheralDeviceDataBi"

    const-string v3, "generateIotDeviceData,device is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-object v1
.end method

.method private generateUsbDeviceData(Landroid/hardware/usb/UsbDevice;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .locals 7
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 271
    :try_start_0
    new-instance v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;-><init>()V

    move-object v0, v2

    .line 272
    const-string v2, "USB"

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->type:Ljava/lang/String;

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 275
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->subType:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->brand:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->name:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "serial":Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    iput-object v3, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->id:Ljava/lang/String;

    .line 280
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    .line 283
    const-string v3, "0"

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->errCount:Ljava/lang/String;

    .line 284
    const-string/jumbo v3, "x"

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v2    # "serial":Ljava/lang/String;
    nop

    .line 294
    return-object v0

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PeripheralDeviceDataBi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateUsbDeviceData e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-object v1

    .line 290
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "PeripheralDeviceDataBi"

    const-string v3, "generateUsbDeviceData,device is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-object v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;
    .locals 1

    .line 145
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceDataBiHolder;->access$200()Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;

    move-result-object v0

    return-object v0
.end method

.method private handleBluetoothDeviceStatus(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connected"    # Z

    .line 298
    const/4 v0, 0x0

    .line 300
    .local v0, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    if-eqz p2, :cond_1

    .line 301
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->generateBluetoothDeviceData(Landroid/bluetooth/BluetoothDevice;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-result-object v1

    .line 302
    .end local v0    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .local v1, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    if-nez v1, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 308
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    monitor-exit v3

    .line 310
    .end local v2    # "key":Ljava/lang/String;
    nop

    .line 325
    move-object v0, v1

    goto :goto_0

    .line 309
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 311
    .end local v1    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v0    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 313
    :try_start_1
    sget-object v3, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-object v0, v3

    .line 314
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 315
    if-nez v0, :cond_2

    .line 316
    const-string v2, "PeripheralDeviceDataBi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBluetoothDeviceStatus,no stored data for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->generateBluetoothDeviceData(Landroid/bluetooth/BluetoothDevice;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-result-object v0

    .line 319
    :cond_2
    if-eqz v0, :cond_3

    .line 320
    const-string v2, "1"

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->offType:Ljava/lang/String;

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->endTime:J

    .line 322
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->uploadData(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;)V

    .line 325
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 314
    .restart local v1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private handleIgOnOff(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 404
    const-string v0, "PeripheralDeviceDataBi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIgOnOff,record number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    return-void

    .line 409
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$6gFas8S4LCFjmDKEIhd-xKr6MkQ;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$6gFas8S4LCFjmDKEIhd-xKr6MkQ;-><init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 429
    return-void
.end method

.method private handleIgStatus(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 388
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 389
    .local v0, "status":I
    const-string v1, "PeripheralDeviceDataBi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIgStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleIgOnOff(Z)V

    goto :goto_0

    .line 392
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleIgOnOff(Z)V

    .line 394
    nop

    .line 401
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 378
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleIgStatus(Landroid/car/hardware/CarPropertyValue;)V

    .line 381
    nop

    .line 385
    :goto_0
    return-void
.end method

.method private handleUsbDeviceStatus(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 8
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "connected"    # Z

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    if-eqz p2, :cond_1

    .line 232
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->generateUsbDeviceData(Landroid/hardware/usb/UsbDevice;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-result-object v1

    .line 233
    .end local v0    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .local v1, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    if-nez v1, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->subType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 239
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v3

    .line 241
    .end local v2    # "key":Ljava/lang/String;
    nop

    .line 265
    move-object v0, v1

    goto/16 :goto_0

    .line 240
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 242
    .end local v1    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v0    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    :cond_1
    const-string v1, "USB"

    .line 243
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 244
    .local v2, "subType":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%04x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 246
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .end local v2    # "subType":Ljava/lang/String;
    .local v3, "subType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, "key":Ljava/lang/String;
    sget-object v5, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 253
    :try_start_1
    sget-object v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-object v0, v2

    .line 254
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    if-nez v0, :cond_2

    .line 256
    const-string v2, "PeripheralDeviceDataBi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUsbDeviceStatus,no stored data for:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->generateUsbDeviceData(Landroid/hardware/usb/UsbDevice;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-result-object v0

    .line 259
    :cond_2
    if-eqz v0, :cond_3

    .line 260
    const-string v2, "1"

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->offType:Ljava/lang/String;

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->endTime:J

    .line 262
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->uploadData(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;)V

    .line 265
    .end local v1    # "type":Ljava/lang/String;
    .end local v3    # "subType":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 254
    .restart local v1    # "type":Ljava/lang/String;
    .restart local v3    # "subType":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 248
    .end local v3    # "subType":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .restart local v2    # "subType":Ljava/lang/String;
    :cond_4
    const-string v3, "PeripheralDeviceDataBi"

    const-string v4, "handleUsbDeviceStatus, device null"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static synthetic lambda$handleIgOnOff$2(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;Z)V
    .locals 5
    .param p1, "on"    # Z

    .line 410
    if-eqz p1, :cond_1

    .line 412
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 413
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    .line 414
    .local v2, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    .line 415
    .end local v2    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    goto :goto_0

    .line 416
    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 420
    :cond_1
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 421
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    .line 422
    .restart local v2    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->endTime:J

    .line 423
    const-string v3, "2"

    iput-object v3, v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->offType:Ljava/lang/String;

    .line 424
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->uploadData(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;)V

    .line 425
    .end local v2    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    goto :goto_1

    .line 426
    :cond_2
    monitor-exit v0

    .line 428
    :goto_2
    return-void

    .line 426
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    const-string v0, "PeripheralDeviceDataBi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 72
    :pswitch_0
    const-string v0, "PeripheralDeviceDataBi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth acl disconnect,intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 74
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleBluetoothDeviceStatus(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 75
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_2

    .line 67
    :pswitch_1
    const-string v0, "PeripheralDeviceDataBi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetooth acl connect,intent="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 69
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleBluetoothDeviceStatus(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 70
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    goto/16 :goto_2

    .line 64
    :pswitch_2
    const-string v0, "PeripheralDeviceDataBi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth BLE acl disconnect,intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    goto :goto_2

    .line 60
    :pswitch_3
    const-string v0, "PeripheralDeviceDataBi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth BLE acl connect,intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 62
    goto :goto_2

    .line 53
    :pswitch_4
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 54
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_1

    .line 55
    const-string v1, "PeripheralDeviceDataBi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usb In,device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleUsbDeviceStatus(Landroid/hardware/usb/UsbDevice;Z)V

    .line 58
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    goto :goto_2

    .line 46
    :pswitch_5
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 47
    .restart local v0    # "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_2

    .line 48
    const-string v1, "PeripheralDeviceDataBi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usb Out,device="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->handleUsbDeviceStatus(Landroid/hardware/usb/UsbDevice;Z)V

    .line 51
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    nop

    .line 79
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_5
        -0x5fdc9a67 -> :sswitch_4
        -0x11f77b4b -> :sswitch_3
        0x5c2e3976 -> :sswitch_2
        0x6278b88e -> :sswitch_1
        0x6c9330ef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$registerBroadCast$1(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;)V
    .locals 3

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v0, "actionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v1, "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->broadcastListener:Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 370
    return-void
.end method

.method static synthetic lambda$uploadData$3(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;)V
    .locals 0
    .param p0, "data"    # Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    .line 433
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->sendBiLog()V

    .line 434
    return-void
.end method

.method private registerBroadCast()V
    .locals 2

    .line 361
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$u7qV0Ca6JPK3drDJV10ixuf1oMY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$u7qV0Ca6JPK3drDJV10ixuf1oMY;-><init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->addLockedBootCompleteTask(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method private uploadData(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;)V
    .locals 2
    .param p1, "data"    # Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    .line 432
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$kDHXfnDzc13TxHZH6aDZOgZ8qT8;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/innerutils/datalog/-$$Lambda$PeripheralDeviceDataBi$kDHXfnDzc13TxHZH6aDZOgZ8qT8;-><init>(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 435
    return-void
.end method


# virtual methods
.method public handleIotDeviceStatus(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;
    .param p4, "connected"    # Z

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    const-string v1, "PeripheralDeviceDataBi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIotDeviceStatus, device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",connect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz p4, :cond_1

    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->generateIotDeviceData(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-result-object v1

    .line 175
    .end local v0    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .local v1, "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    if-nez v1, :cond_0

    .line 176
    return-void

    .line 178
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->startTime:J

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 181
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    monitor-exit v3

    .line 183
    .end local v2    # "key":Ljava/lang/String;
    nop

    .line 199
    move-object v0, v1

    goto :goto_0

    .line 182
    .restart local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 184
    .end local v1    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    .end local v2    # "key":Ljava/lang/String;
    .restart local v0    # "data":Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 186
    :try_start_1
    sget-object v3, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->mDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-object v0, v3

    .line 187
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    if-nez v0, :cond_2

    .line 189
    const-string v2, "PeripheralDeviceDataBi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIotDeviceStatus,no stored data for:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->generateIotDeviceData(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;

    move-result-object v0

    .line 192
    :cond_2
    if-eqz v0, :cond_3

    .line 193
    const-string v2, "1"

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->offType:Ljava/lang/String;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->endTime:J

    .line 195
    iput-object p3, v0, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;->params:Ljava/lang/String;

    .line 196
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->uploadData(Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi$PeripheralDeviceData;)V

    .line 199
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 187
    .restart local v1    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public initForIoT()V
    .locals 2

    .line 157
    const-string v0, "PeripheralDeviceDataBi"

    const-string v1, "initForIoT"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->addCarListeners()V

    .line 159
    return-void
.end method

.method public initForMain()V
    .locals 2

    .line 150
    const-string v0, "PeripheralDeviceDataBi"

    const-string v1, "initForMain"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->registerBroadCast()V

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/innerutils/datalog/PeripheralDeviceDataBi;->addCarListeners()V

    .line 153
    return-void
.end method

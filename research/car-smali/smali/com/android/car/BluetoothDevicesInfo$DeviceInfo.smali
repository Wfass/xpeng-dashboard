.class public Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;
.super Ljava/lang/Object;
.source "BluetoothDevicesInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDevicesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInfo"
.end annotation


# instance fields
.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mConnectionState:I

.field private mDevicePriority:I

.field final synthetic this$0:Lcom/android/car/BluetoothDevicesInfo;


# direct methods
.method public constructor <init>(Lcom/android/car/BluetoothDevicesInfo;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/BluetoothDevicesInfo;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "state"    # I

    .line 107
    iput-object p1, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->this$0:Lcom/android/car/BluetoothDevicesInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 109
    iput p3, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mConnectionState:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mDevicePriority:I

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 101
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;

    .line 101
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mDevicePriority:I

    return v0
.end method


# virtual methods
.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getBluetoothDevicePriority()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mDevicePriority:I

    return v0
.end method

.method public getConnectionState()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mConnectionState:I

    return v0
.end method

.method public setBluetoothDevicePriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 126
    iput p1, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mDevicePriority:I

    .line 127
    return-void
.end method

.method public setConnectionState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 114
    iput p1, p0, Lcom/android/car/BluetoothDevicesInfo$DeviceInfo;->mConnectionState:I

    .line 115
    return-void
.end method

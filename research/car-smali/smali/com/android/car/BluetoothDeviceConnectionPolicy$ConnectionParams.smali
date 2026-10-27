.class public Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;
.super Ljava/lang/Object;
.source "BluetoothDeviceConnectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDeviceConnectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionParams"
.end annotation


# instance fields
.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfile:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "profile"    # Ljava/lang/Integer;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->mBluetoothProfile:Ljava/lang/Integer;

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "profile"    # Ljava/lang/Integer;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->mBluetoothProfile:Ljava/lang/Integer;

    .line 233
    iput-object p2, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 234
    return-void
.end method


# virtual methods
.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getBluetoothProfile()Ljava/lang/Integer;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->mBluetoothProfile:Ljava/lang/Integer;

    return-object v0
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 238
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 239
    return-void
.end method

.method public setBluetoothProfile(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "profile"    # Ljava/lang/Integer;

    .line 242
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$ConnectionParams;->mBluetoothProfile:Ljava/lang/Integer;

    .line 243
    return-void
.end method

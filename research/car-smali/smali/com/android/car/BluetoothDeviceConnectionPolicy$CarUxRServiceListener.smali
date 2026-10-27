.class Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;
.super Landroid/car/drivingstate/ICarUxRestrictionsChangeListener$Stub;
.source "BluetoothDeviceConnectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDeviceConnectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarUxRServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;


# direct methods
.method private constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-direct {p0}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .param p2, "x1"    # Lcom/android/car/BluetoothDeviceConnectionPolicy$1;

    .line 660
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    return-void
.end method


# virtual methods
.method public onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 1
    .param p1, "restrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 663
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$CarUxRServiceListener;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$1400(Lcom/android/car/BluetoothDeviceConnectionPolicy;Landroid/car/drivingstate/CarUxRestrictions;)V

    .line 664
    return-void
.end method

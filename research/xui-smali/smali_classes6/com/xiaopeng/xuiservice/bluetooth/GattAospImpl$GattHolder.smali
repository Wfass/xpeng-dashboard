.class Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;
.super Ljava/lang/Object;
.source "GattAospImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GattHolder"
.end annotation


# instance fields
.field public allowRepeatCommand:Z

.field public autoConnect:Z

.field public mCallback:Lcom/xiaopeng/xuiservice/bluetooth/XuiGattCallback;

.field public mConnectState:I

.field public mDeviceBusy:Z

.field public mGatt:Landroid/bluetooth/BluetoothGatt;

.field public mLastOpCode:I

.field public mMTU:I

.field public mManageState:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mDeviceBusy:Z

    .line 1132
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mConnectState:I

    .line 1133
    iput v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mLastOpCode:I

    .line 1134
    const/16 v1, 0x12c

    iput v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mManageState:I

    .line 1135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->autoConnect:Z

    .line 1136
    const/16 v1, 0x14

    iput v1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mMTU:I

    .line 1137
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->allowRepeatCommand:Z

    .line 1139
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/bluetooth/GattAospImpl$GattHolder;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 1140
    return-void
.end method

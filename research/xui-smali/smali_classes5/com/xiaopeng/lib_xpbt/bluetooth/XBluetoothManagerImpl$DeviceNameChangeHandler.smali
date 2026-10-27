.class Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;
.super Ljava/lang/Object;
.source "XBluetoothManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/CallBackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceNameChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;

    .line 468
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$DeviceNameChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onDeviceNameChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;I)V

    .line 475
    :cond_0
    return-void
.end method

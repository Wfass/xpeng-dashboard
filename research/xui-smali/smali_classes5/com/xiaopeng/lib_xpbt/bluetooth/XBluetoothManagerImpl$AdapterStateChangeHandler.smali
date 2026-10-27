.class Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$AdapterStateChangeHandler;
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
    name = "AdapterStateChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$1;

    .line 406
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$AdapterStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;

    iget-object v0, v0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v0, :cond_0

    .line 411
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, "state":I
    const-string v2, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 415
    .local v1, "prevState":I
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;

    iget-object v2, v2, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onAdapterStateChanged(III)V

    .line 417
    .end local v0    # "state":I
    .end local v1    # "prevState":I
    :cond_0
    return-void
.end method

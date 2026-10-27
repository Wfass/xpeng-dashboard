.class Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondStateChangeHandler;
.super Ljava/lang/Object;
.source "XExternalBluetoothManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/CallBackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;

    .line 263
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 267
    const-string v0, "deviceId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 268
    .local v0, "deviceId":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pass"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 270
    return-void

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    iget-object v2, v2, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v2, :cond_1

    .line 273
    const-string v2, "address"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "address":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    invoke-direct {v4}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;-><init>()V

    .line 276
    .local v4, "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    invoke-virtual {v4, v2}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setAddress(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v4, v3}, Lcom/xiaopeng/lib_xpbt/XpBtDevice;->setName(Ljava/lang/String;)V

    .line 278
    const-string v5, "prestate"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 279
    .local v5, "prestate":I
    const-string v6, "state"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "state":I
    iget-object v6, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$BondStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    iget-object v6, v6, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v5, v1, v7}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onDeviceBondStateChanged(Lcom/xiaopeng/lib_xpbt/XpBtDevice;III)V

    .line 282
    .end local v1    # "state":I
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "xpBtDevice":Lcom/xiaopeng/lib_xpbt/XpBtDevice;
    .end local v5    # "prestate":I
    :cond_1
    return-void
.end method

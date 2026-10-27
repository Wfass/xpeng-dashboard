.class Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$AdapterStateChangeHandler;
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
    name = "AdapterStateChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$1;

    .line 216
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$AdapterStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 220
    const-string v0, "deviceId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 221
    .local v0, "deviceId":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 222
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

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    iget-object v3, v3, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    if-eqz v3, :cond_1

    .line 226
    const-string v3, "state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 227
    .local v3, "state":I
    const-string v4, "prestate"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 228
    .local v1, "prestate":I
    iget-object v4, p0, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;

    iget-object v4, v4, Lcom/xiaopeng/lib_xpbt/bluetooth/XExternalBluetoothManagerImpl;->xBluetoothListener:Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;

    invoke-interface {v4, v1, v3, v2}, Lcom/xiaopeng/lib_xpbt/bluetooth/XBluetoothListener;->onAdapterStateChanged(III)V

    .line 230
    .end local v1    # "prestate":I
    .end local v3    # "state":I
    :cond_1
    return-void
.end method

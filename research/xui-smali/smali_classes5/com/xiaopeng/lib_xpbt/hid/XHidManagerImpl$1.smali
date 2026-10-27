.class Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;
.super Ljava/lang/Object;
.source "XHidManagerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/hid/XHidListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;

.field final synthetic val$xHidListener:Lcom/xiaopeng/lib_xpbt/hid/XHidListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;Lcom/xiaopeng/lib_xpbt/hid/XHidListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;

    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;->val$xHidListener:Lcom/xiaopeng/lib_xpbt/hid/XHidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 33
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHidHost;

    iput-object v1, v0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl;->bluetoothHidHost:Landroid/bluetooth/BluetoothHidHost;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hid/XHidManagerImpl$1;->val$xHidListener:Lcom/xiaopeng/lib_xpbt/hid/XHidListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/hid/XHidListener;->onReady()V

    .line 36
    const-string v0, "BluetoothHidHost onServiceConnected"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    const-string v0, "onServiceConnected isn\'t BluetoothA2dpSink"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .param p1, "profile"    # I

    .line 44
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 45
    const-string v0, "BluetoothHidHost onServiceDisconnected"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

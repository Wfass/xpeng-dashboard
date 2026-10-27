.class Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;
.super Ljava/lang/Object;
.source "XA2dpSinkManagerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;

.field final synthetic val$xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;

    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;->val$xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 37
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dpSink;

    iput-object v1, v0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl;->bluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkManagerImpl$1;->val$xa2dpSinkListener:Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/a2dp/XA2dpSinkListener;->onReady()V

    .line 40
    const-string v0, "BluetoothA2dpSink onServiceConnected"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_0
    const-string v0, "onServiceConnected isn\'t BluetoothA2dpSink"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .param p1, "profile"    # I

    .line 48
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 49
    const-string v0, "BluetoothA2dpSink onServiceDisconnected"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

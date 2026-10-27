.class Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;
.super Ljava/lang/Object;
.source "XHfpManagerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

.field final synthetic val$xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;->val$xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 55
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;->access$002(Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/hfp/XHfpManagerImpl$1;->val$xHfpListener:Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;

    invoke-interface {v0}, Lcom/xiaopeng/lib_xpbt/hfp/XHfpListener;->onReady()V

    .line 58
    const-string v0, "BluetoothHeadsetClient onServiceConnected"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    const-string v0, "onServiceConnected isn\'t BluetoothHeadsetClient"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1
    .param p1, "profile"    # I

    .line 66
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 67
    const-string v0, "BluetoothHeadsetClient onServiceDisconnected"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

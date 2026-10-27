.class Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;
.super Ljava/lang/Object;
.source "XPbapManagerImpl.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

.field final synthetic val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iput-object p2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 37
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothPbapClient proxy :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPbapClient;

    invoke-static {v0, v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$002(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$100(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 41
    .local v0, "isBtEnable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPbapClient client :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBtEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v3, v3, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBtPbapClientCallback:Landroid/bluetooth/BluetoothPbapClientCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPbapClient;->registerPbapClientCallback(Landroid/bluetooth/BluetoothPbapClientCallback;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$202(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Z)Z

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBtPbapClientCallback isRegister :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->val$xPbapListener:Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;

    invoke-interface {v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapListener;->onReady()V

    .line 47
    .end local v0    # "isBtEnable":Z
    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .line 54
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 55
    const-string v0, "BluetoothHeadsetClient disconnect"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 57
    :cond_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "BluetoothPbapClient Disconnected"

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$202(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Z)Z

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v1, v1, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBtPbapClientCallback:Landroid/bluetooth/BluetoothPbapClientCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->unregisterPbapClientCallback(Landroid/bluetooth/BluetoothPbapClientCallback;)Z

    move-result v0

    .line 61
    .local v0, "isUnregisterCallback":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothPbapClient isUnregisterCallback :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 63
    .end local v0    # "isUnregisterCallback":Z
    :cond_1
    return-void
.end method

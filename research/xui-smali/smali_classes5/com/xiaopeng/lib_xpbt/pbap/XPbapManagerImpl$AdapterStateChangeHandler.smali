.class Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;
.super Ljava/lang/Object;
.source "XPbapManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib_xpbt/CallBackHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;
    .param p2, "x1"    # Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$1;

    .line 153
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;-><init>(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaopeng/lib_xpbt/XpBtDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Lcom/xiaopeng/lib_xpbt/XpBtDevice;

    .line 157
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 159
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$000(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    iget-object v3, v3, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->mBtPbapClientCallback:Landroid/bluetooth/BluetoothPbapClientCallback;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPbapClient;->registerPbapClientCallback(Landroid/bluetooth/BluetoothPbapClientCallback;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$202(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;Z)Z

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBtPbapClientCallback isRegister :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl$AdapterStateChangeHandler;->this$0:Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;

    invoke-static {v2}, Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;->access$200(Lcom/xiaopeng/lib_xpbt/pbap/XPbapManagerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib_xpbt/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

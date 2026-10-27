.class Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;
.super Ljava/lang/Object;
.source "BluetoothBoxes.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/BluetoothBoxes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "pName"    # Landroid/content/ComponentName;
    .param p2, "pBinder"    # Landroid/os/IBinder;

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-static {p2}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$202(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 117
    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$200(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$200(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-static {v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$400(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;->registerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    const-string v0, "tang"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected_sID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-static {v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$200(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$500(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "pName"    # Landroid/content/ComponentName;

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$000(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    invoke-static {v0}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$200(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;->unRegisterName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/BluetoothBoxes$1;->this$0:Lcom/xiaopeng/libbluetooth/BluetoothBoxes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/libbluetooth/BluetoothBoxes;->access$202(Lcom/xiaopeng/libbluetooth/BluetoothBoxes;Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 112
    return-void
.end method

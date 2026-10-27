.class Lcom/xiaopeng/libbluetooth/AbsControlBox$1;
.super Lcom/xiaopeng/libbluetooth/AbstractConnection;
.source "AbsControlBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libbluetooth/AbsControlBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libbluetooth/AbsControlBox;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libbluetooth/AbsControlBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libbluetooth/AbsControlBox;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/AbsControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/AbsControlBox;

    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/AbstractConnection;-><init>()V

    return-void
.end method


# virtual methods
.method connectService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
    .locals 1
    .param p1, "btService"    # Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/AbsControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/AbsControlBox;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/libbluetooth/AbsControlBox;->initService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V

    .line 32
    return-void
.end method

.method onDisconnected()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/AbsControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/AbsControlBox;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/AbsControlBox;->clearService()V

    .line 27
    return-void
.end method

.method onUnregister()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/AbsControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/AbsControlBox;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/AbsControlBox;->release()V

    .line 43
    return-void
.end method

.method work()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/xiaopeng/libbluetooth/AbstractConnection;->work()V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/AbsControlBox$1;->this$0:Lcom/xiaopeng/libbluetooth/AbsControlBox;

    invoke-virtual {v0}, Lcom/xiaopeng/libbluetooth/AbsControlBox;->onWorkDone()V

    .line 38
    return-void
.end method

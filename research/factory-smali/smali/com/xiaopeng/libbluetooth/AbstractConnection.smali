.class public abstract Lcom/xiaopeng/libbluetooth/AbstractConnection;
.super Ljava/lang/Object;
.source "AbstractConnection.java"


# instance fields
.field private mToDoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/AbstractConnection;->mToDoList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method abstract connectService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
.end method

.method onConnected(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V
    .locals 0
    .param p1, "bluetoothService"    # Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/libbluetooth/AbstractConnection;->connectService(Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;)V

    .line 24
    invoke-virtual {p0}, Lcom/xiaopeng/libbluetooth/AbstractConnection;->work()V

    .line 25
    return-void
.end method

.method abstract onDisconnected()V
.end method

.method abstract onUnregister()V
.end method

.method post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Runnable;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/AbstractConnection;->mToDoList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method remove(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Runnable;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/AbstractConnection;->mToDoList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method work()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/AbstractConnection;->mToDoList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 35
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

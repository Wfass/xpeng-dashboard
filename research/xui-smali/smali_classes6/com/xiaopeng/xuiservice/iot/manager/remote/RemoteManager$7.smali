.class Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$7;
.super Landroid/os/Handler;
.source "RemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 553
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$7;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 556
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$7;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/xuimanager/iot/devices/ScanDevice;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V

    .line 559
    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/xuimanager/device/DeviceManager$1;
.super Landroid/os/Handler;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/device/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/device/DeviceManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/device/DeviceManager;Landroid/os/Looper;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$1;->this$0:Lcom/xiaopeng/xuimanager/device/DeviceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$1;->this$0:Lcom/xiaopeng/xuimanager/device/DeviceManager;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->getScreenId()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->getState()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->isForceOpen()Z

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager;->access$100(Lcom/xiaopeng/xuimanager/device/DeviceManager;IIZLjava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$1;->this$0:Lcom/xiaopeng/xuimanager/device/DeviceManager;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->getScreenId()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->getAngle()I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->isForceOpen()Z

    move-result v3

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->getSource()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaopeng/xuimanager/device/DeviceManager;->access$000(Lcom/xiaopeng/xuimanager/device/DeviceManager;IIZLjava/lang/String;)V

    :goto_0
    return-void
.end method

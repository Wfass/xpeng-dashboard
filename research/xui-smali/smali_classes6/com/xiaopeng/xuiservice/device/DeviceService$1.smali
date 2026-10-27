.class Lcom/xiaopeng/xuiservice/device/DeviceService$1;
.super Landroid/os/Handler;
.source "DeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/device/DeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/device/DeviceService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/device/DeviceService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$1;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 119
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;

    .line 126
    .local v0, "stateEvent":Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$1;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->getScreenId()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->getState()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->isForceOpen()Z

    move-result v4

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/device/DeviceService;->notifyStateEvent(IIZLjava/lang/String;)V

    .line 127
    goto :goto_0

    .line 121
    .end local v0    # "stateEvent":Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;

    .line 122
    .local v0, "angleEvent":Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$1;->this$0:Lcom/xiaopeng/xuiservice/device/DeviceService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->getScreenId()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->getAngle()I

    move-result v3

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->isForceOpen()Z

    move-result v4

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/device/DeviceService;->notifyAngleEvent(IIZLjava/lang/String;)V

    .line 123
    nop

    .line 131
    .end local v0    # "angleEvent":Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

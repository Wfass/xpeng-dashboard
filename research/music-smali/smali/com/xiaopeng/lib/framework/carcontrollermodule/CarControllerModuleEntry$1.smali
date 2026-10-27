.class Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry$1;
.super Ljava/lang/Object;
.source "CarControllerModuleEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->connectCarWhenInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 105
    new-instance p1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;

    invoke-direct {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;-><init>()V

    const/4 p2, 0x1

    .line 106
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;->setData(Ljava/lang/Object;)V

    .line 107
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry$1;->this$0:Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;->access$000(Lcom/xiaopeng/lib/framework/carcontrollermodule/CarControllerModuleEntry;)V

    .line 108
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 113
    new-instance p1, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;

    invoke-direct {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;-><init>()V

    const/4 v0, 0x0

    .line 114
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/carcontroller/ICarControllerService$ConnectCarEventMsg;->setData(Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;
    .param p2, "x1"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;

    .line 162
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$502(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;)Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$602(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Z)Z

    .line 167
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;-><init>()V

    sget-object v2, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->BOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;->type(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$700(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    .line 169
    const-string v0, "LocationModule.Consumer.ServiceProxy"

    const-string v1, "Location service was connected!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$502(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;)Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$602(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Z)Z

    .line 176
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;-><init>()V

    sget-object v2, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->UNBOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;->type(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$800(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;I)V

    .line 179
    const-string v0, "LocationModule.Consumer.ServiceProxy"

    const-string v1, "Location service was disconnected!"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    return-void
.end method

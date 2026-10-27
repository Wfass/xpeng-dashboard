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

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;-><init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$502(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;)Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$602(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Z)Z

    .line 194
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;

    invoke-direct {p2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;-><init>()V

    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->BOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;->type(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$700(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Location service was connected! Last location update time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {p2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$200(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->getLastUpdateTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocationModule.Consumer.ServiceProxy"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$502(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;)Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface;

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$602(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Z)Z

    .line 203
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;->UNBOUND:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;->type(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/IStateEvent$TYPE;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceStateEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$InternalServiceConnection;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$800(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;I)V

    const-string p1, "LocationModule.Consumer.ServiceProxy"

    const-string v0, "Location service was disconnected!"

    .line 206
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;
.super Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback$Stub;
.source "ServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public locationChanged(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    .locals 2

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;->location(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$100(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$200(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->updateLastTime()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$1;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$200(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/Persistence;->write(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V

    return-void
.end method

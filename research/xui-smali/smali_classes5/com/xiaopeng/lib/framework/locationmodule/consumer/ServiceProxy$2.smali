.class Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$2;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V
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
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$2;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$2;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$300(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$2;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$300(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;->location(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method

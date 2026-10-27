.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender$2;
.super Ljava/lang/Object;
.source "EventSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;->postAtFront(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

.field final synthetic val$event:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender$2;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender$2;->val$event:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 143
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/events/EventSender$2;->val$event:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

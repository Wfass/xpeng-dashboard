.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->moveTo(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

.field final synthetic val$state:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$1;->val$state:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$1;->val$state:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;)V

    .line 95
    return-void
.end method

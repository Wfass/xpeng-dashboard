.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$3;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->increaseFailTwice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$3;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;->access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;)V

    return-void
.end method

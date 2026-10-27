.class Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;
.super Ljava/lang/Object;
.source "PipeBusClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$700(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "died~"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$402(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$902(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;I)I

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$700(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto bind listeners"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$1000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 330
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 331
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$1000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$2;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$1100(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;I)V

    return-void
.end method

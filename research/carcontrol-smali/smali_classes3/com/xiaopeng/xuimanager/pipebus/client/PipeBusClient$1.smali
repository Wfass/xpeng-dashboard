.class Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$1;
.super Landroid/os/Handler;
.source "PipeBusClient.java"


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
.method constructor <init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Landroid/os/Looper;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$1;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 310
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$1;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$800(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)V

    :goto_0
    return-void
.end method

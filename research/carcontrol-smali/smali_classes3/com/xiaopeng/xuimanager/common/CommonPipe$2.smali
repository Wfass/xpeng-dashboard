.class Lcom/xiaopeng/xuimanager/common/CommonPipe$2;
.super Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;
.source "CommonPipe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/common/CommonPipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/common/CommonPipe;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/common/CommonPipe;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe$2;->this$0:Lcom/xiaopeng/xuimanager/common/CommonPipe;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFirstRegistered()V
    .locals 3

    .line 226
    invoke-super {p0}, Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;->onFirstRegistered()V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe$2;->this$0:Lcom/xiaopeng/xuimanager/common/CommonPipe;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->access$100(Lcom/xiaopeng/xuimanager/common/CommonPipe;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe$2;->this$0:Lcom/xiaopeng/xuimanager/common/CommonPipe;

    const-string v2, "XUICommonPipe"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->registerModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V

    return-void
.end method

.method protected onLastUnRegistered()V
    .locals 3

    .line 232
    invoke-super {p0}, Lcom/xiaopeng/xuimanager/common/PipListenerRegisterAndNotify;->onLastUnRegistered()V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe$2;->this$0:Lcom/xiaopeng/xuimanager/common/CommonPipe;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/common/CommonPipe;->access$100(Lcom/xiaopeng/xuimanager/common/CommonPipe;)Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/common/CommonPipe$2;->this$0:Lcom/xiaopeng/xuimanager/common/CommonPipe;

    const-string v2, "XUICommonPipe"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->unRegisterModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V

    return-void
.end method

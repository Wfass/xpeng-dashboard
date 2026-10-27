.class Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;
.super Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Stub;
.source "PipeBusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BusListener"
.end annotation


# instance fields
.field private final TAGBUS:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)V
    .locals 1

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Stub;-><init>()V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$700(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-Bus"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;->TAGBUS:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$1;)V
    .locals 0

    .line 264
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;-><init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)V

    return-void
.end method


# virtual methods
.method public onPipeBusEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;->TAGBUS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPipeBusEvent,module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",types="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;->onPipeBusEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;->TAGBUS:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no listener for module:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPipeBusParcelEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;->TAGBUS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPipeBusParcelEvent,module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",types="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p2, p3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;->onPipeBusParcelEvent(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;->TAGBUS:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no listener for module:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

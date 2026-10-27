.class public Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;
.super Ljava/lang/Object;
.source "PipeBusClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BusAgent"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private final client:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

.field final synthetic this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-class p1, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->client:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->client:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->getStatus()I

    move-result v0

    return v0
.end method

.method public ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$300(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Z

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControl err="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    const-string v1, "ioControl, bus is null!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, -0x1

    .line 186
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControl,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",cmd="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",params="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$300(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Z

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    .line 241
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$600()Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    move-result-object v0

    :goto_0
    if-eqz p4, :cond_1

    move-object v2, p4

    goto :goto_1

    .line 246
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$600()Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    move-result-object v2

    .line 249
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v3}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v3

    invoke-interface {v3, p1, p2, v0, v2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 251
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioControlWithPocket e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    const-string v2, "ioControlWithPocket,bus is null!"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithPocket,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",cmd="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",dataIn="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",dataOut="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$300(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Z

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 205
    invoke-static {}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$500()[Ljava/lang/String;

    move-result-object p4

    .line 208
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 210
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ioControlWithPocket e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    const-string v2, "ioControlWithPocket,bus is null!"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ioControlWithPocket,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",cmd="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",ret="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",params="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    .line 217
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, p2

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ",result="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p4, :cond_3

    .line 218
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public registerModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->client:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener, module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$100(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    new-instance v2, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusListener;-><init>(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$1;)V

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$102(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerModuleListener,repeated module:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ",l="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    monitor-exit v0

    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$300(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Z

    .line 122
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object p2

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$100(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->registerListenerEx(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    :try_start_2
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerModuleListener e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    const-string p2, "registerModuleListener, bus is null"

    invoke-static {p1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setTagSuffix(Ljava/lang/String;)V
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public unRegisterModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$IPipebusClientListener;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->client:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v1}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$300(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Z

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterModuleListener,module="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",listener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",mapSize="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    .line 153
    invoke-static {v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$000(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ",bus="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {v2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-static {v1, p2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 157
    :try_start_1
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->this$0:Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;->access$400(Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;->unRegisterListenerEx(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    :try_start_2
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterModuleListener e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 147
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/pipebus/client/PipeBusClient$BusAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterModuleListener,no listener registered for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 162
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

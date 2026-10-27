.class public Lcom/xiaopeng/aicabin/AgentService$b;
.super Ljava/lang/Object;
.source "AgentService.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/AgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaopeng/aicabin/AgentService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/AgentService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/AgentService$b;->a:Lcom/xiaopeng/aicabin/AgentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/xiaopeng/aicabin/AConstant;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaopeng/aicabin/AgentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/event/EventValue;->getEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/AgentService$b;->a:Lcom/xiaopeng/aicabin/AgentService;

    invoke-static {v2}, Lcom/xiaopeng/aicabin/AgentService;->access$000(Lcom/xiaopeng/aicabin/AgentService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/event/EventValue;->getVal()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/AgentService$b;->a:Lcom/xiaopeng/aicabin/AgentService;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/AgentService;->access$000(Lcom/xiaopeng/aicabin/AgentService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/aicabin/AgentService$c;

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v2, v1, Lcom/xiaopeng/aicabin/AgentService$c;->c:Ljava/util/Set;

    .line 6
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/event/EventValue;->getEvent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    :try_start_0
    iget-object v1, v1, Lcom/xiaopeng/aicabin/AgentService$c;->b:Lcom/xiaopeng/aicabin/event/IEventListener;

    .line 8
    invoke-interface {v1, p1}, Lcom/xiaopeng/aicabin/event/IEventListener;->onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    sget-object v2, Lcom/xiaopeng/aicabin/AgentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.class public Lcom/xiaopeng/aicabin/event/a$a;
.super Ljava/lang/Object;
.source "EventManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/event/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaopeng/aicabin/event/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/event/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/event/a$a;->a:Lcom/xiaopeng/aicabin/event/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/event/EventValue;->getEvent()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/xiaopeng/aicabin/event/a$a;->a:Lcom/xiaopeng/aicabin/event/a;

    .line 4
    iget-object v1, v1, Lcom/xiaopeng/aicabin/event/a;->f:Ljava/util/Map;

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 7
    sget-boolean v2, Lcom/xiaopeng/aicabin/AConstant;->DEBUG_LOG:Z

    if-eqz v2, :cond_0

    .line 8
    sget-object v2, Lcom/xiaopeng/aicabin/event/a;->a:Ljava/lang/String;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent: event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " records:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " data:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/aicabin/event/EventListener;

    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v1, p1}, Lcom/xiaopeng/aicabin/event/EventListener;->onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V

    goto :goto_0

    :cond_2
    return-void
.end method

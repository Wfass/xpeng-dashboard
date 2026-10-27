.class public Lcom/xiaopeng/aicabin/ARemoteManager$a;
.super Lcom/xiaopeng/aicabin/event/IEventListener$Stub;
.source "ARemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/ARemoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaopeng/aicabin/ARemoteManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/ARemoteManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/ARemoteManager$a;->a:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-direct {p0}, Lcom/xiaopeng/aicabin/event/IEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/ARemoteManager$a;->a:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-static {v0}, Lcom/xiaopeng/aicabin/ARemoteManager;->access$300(Lcom/xiaopeng/aicabin/ARemoteManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/event/EventValue;->getEvent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aicabin/event/EventListener;

    .line 2
    sget-boolean v1, Lcom/xiaopeng/aicabin/AConstant;->DEBUG_LOG:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/xiaopeng/aicabin/ARemoteManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent: event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/event/EventValue;->getEvent()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lcom/xiaopeng/aicabin/event/EventListener;->onEvent(Lcom/xiaopeng/aicabin/event/EventValue;)V

    :cond_1
    return-void
.end method

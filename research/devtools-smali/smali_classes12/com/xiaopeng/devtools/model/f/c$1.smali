.class Lcom/xiaopeng/devtools/model/f/c$1;
.super Landroid/os/Handler;
.source "NetworkModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uq:Lcom/xiaopeng/devtools/model/f/c;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/f/c;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/c$1;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/c$1;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/c;->a(Lcom/xiaopeng/devtools/model/f/c;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$1;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/c;->b(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    nop

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 48
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v2

    .line 51
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v3

    .line 54
    const/16 v4, -0x83

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/c$1;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/c;->b(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cell_id_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", \u533a\u57df\u7801_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", \u4fe1\u53f7\u5f3a\u5ea6_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    goto :goto_1

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/c$1;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/c;->b(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/NeighboringEvent;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/c$1;->uq:Lcom/xiaopeng/devtools/model/f/c;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/c;->b(Lcom/xiaopeng/devtools/model/f/c;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/signal/NeighboringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 63
    nop

    .line 68
    :goto_2
    return-void
.end method

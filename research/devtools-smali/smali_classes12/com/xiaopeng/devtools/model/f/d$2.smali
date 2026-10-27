.class Lcom/xiaopeng/devtools/model/f/d$2;
.super Lcom/xiaopeng/libbluetooth/b;
.source "WifiBtModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uD:Lcom/xiaopeng/devtools/model/f/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/f/d;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;ZIII)V
    .locals 0

    .line 105
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/libbluetooth/b;->a(Ljava/lang/String;ZIII)V

    .line 106
    if-eqz p2, :cond_1

    const/4 p1, 0x2

    if-eq p4, p1, :cond_0

    if-nez p4, :cond_1

    .line 108
    :cond_0
    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/String;

    .line 109
    new-array p1, p1, [Ljava/lang/String;

    .line 110
    iget-object p3, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p3}, Lcom/xiaopeng/devtools/model/f/d;->i(Lcom/xiaopeng/devtools/model/f/d;)Lcom/xiaopeng/libbluetooth/f;

    move-result-object p3

    invoke-virtual {p3, p4, p2, p1}, Lcom/xiaopeng/libbluetooth/f;->a(I[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->j(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aget-object p4, p2, p3

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    aget-object p2, p2, p3

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/f/d;->hC()V

    .line 114
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/devtools/bean/event/signal/BtNameEvent;

    iget-object p3, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p3}, Lcom/xiaopeng/devtools/model/f/d;->j(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/xiaopeng/devtools/bean/event/signal/BtNameEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 117
    :cond_1
    return-void
.end method

.method protected onBtPower(Z)V
    .locals 2

    .line 92
    invoke-super {p0, p1}, Lcom/xiaopeng/libbluetooth/b;->onBtPower(Z)V

    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;I)I

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;I)I

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/f/d;->e(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    :goto_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/BtPowerEvent;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/d;->h(Lcom/xiaopeng/devtools/model/f/d;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/bean/event/signal/BtPowerEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method protected r(Ljava/lang/String;I)V
    .locals 2

    .line 81
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/libbluetooth/b;->r(Ljava/lang/String;I)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/f/d;->e(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/devtools/bean/event/signal/BtRssiEvent;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d$2;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/d;->g(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/xiaopeng/devtools/bean/event/signal/BtRssiEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

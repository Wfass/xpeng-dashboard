.class Lcom/xiaopeng/devtools/model/f/d$1;
.super Landroid/os/Handler;
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

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 66
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/f/d;->hC()V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 53
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/model/f/d;->a(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/model/f/d;->c(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p1

    invoke-static {p1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/model/f/d;->d(Lcom/xiaopeng/devtools/model/f/d;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/f/d;->b(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v2}, Lcom/xiaopeng/devtools/model/f/d;->c(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v3}, Lcom/xiaopeng/devtools/model/f/d;->d(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {v4}, Lcom/xiaopeng/devtools/model/f/d;->e(Lcom/xiaopeng/devtools/model/f/d;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/d$1;->uD:Lcom/xiaopeng/devtools/model/f/d;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/d;->f(Lcom/xiaopeng/devtools/model/f/d;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    nop

    .line 76
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

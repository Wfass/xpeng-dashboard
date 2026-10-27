.class Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;
.super Landroid/os/Handler;
.source "VerticalBannerTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setTextStillTime(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;J)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    iput-wide p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->a:J

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 87
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$200(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$108(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)I

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$300(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setAnimTime(J)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Landroid/os/Handler;

    move-result-object p1

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$100(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 95
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->b:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->access$000(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;)Landroid/os/Handler;

    move-result-object p1

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$1;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_0
    return-void
.end method

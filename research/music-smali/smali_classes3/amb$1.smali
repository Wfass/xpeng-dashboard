.class Lamb$1;
.super Landroid/os/Handler;
.source "OverScrollDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamb;


# direct methods
.method constructor <init>(Lamb;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lamb$1;->a:Lamb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lamb$1;->a:Lamb;

    iget-object v0, v0, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v0

    .line 102
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/16 v2, 0x3c

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 131
    :cond_0
    iget-object p1, p0, Lamb$1;->a:Lamb;

    invoke-static {p1, v2}, Lamb;->a(Lamb;I)I

    goto/16 :goto_1

    .line 104
    :cond_1
    iget-object p1, p0, Lamb$1;->a:Lamb;

    const/4 v3, -0x1

    invoke-static {p1, v3}, Lamb;->a(Lamb;I)I

    .line 106
    :cond_2
    iget-object p1, p0, Lamb$1;->a:Lamb;

    invoke-static {p1}, Lamb;->a(Lamb;)I

    .line 108
    iget-object p1, p0, Lamb$1;->a:Lamb;

    iget-object p1, p1, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object p1

    .line 110
    iget-object v3, p0, Lamb$1;->a:Lamb;

    iget-object v3, v3, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->E()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 111
    iget-object v3, p0, Lamb$1;->a:Lamb;

    invoke-static {v3}, Lamb;->b(Lamb;)F

    move-result v3

    const v4, 0x453b8000    # 3000.0f

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-ltz v3, :cond_3

    .line 112
    invoke-static {p1, v0}, Lamf;->a(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 113
    iget-object p1, p0, Lamb$1;->a:Lamb;

    iget-object p1, p1, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b()Laly;

    move-result-object p1

    iget-object v0, p0, Lamb$1;->a:Lamb;

    invoke-static {v0}, Lamb;->b(Lamb;)F

    move-result v0

    iget-object v3, p0, Lamb$1;->a:Lamb;

    invoke-static {v3}, Lamb;->c(Lamb;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Laly;->a(FI)V

    .line 114
    iget-object p1, p0, Lamb$1;->a:Lamb;

    invoke-static {p1, v4}, Lamb;->a(Lamb;F)F

    .line 115
    iget-object p1, p0, Lamb$1;->a:Lamb;

    invoke-static {p1, v2}, Lamb;->a(Lamb;I)I

    goto :goto_0

    .line 117
    :cond_3
    iget-object v3, p0, Lamb$1;->a:Lamb;

    invoke-static {v3}, Lamb;->b(Lamb;)F

    move-result v3

    const v5, -0x3ac48000    # -3000.0f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    .line 118
    invoke-static {p1, v0}, Lamf;->b(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 119
    iget-object p1, p0, Lamb$1;->a:Lamb;

    iget-object p1, p1, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b()Laly;

    move-result-object p1

    iget-object v0, p0, Lamb$1;->a:Lamb;

    invoke-static {v0}, Lamb;->b(Lamb;)F

    move-result v0

    iget-object v3, p0, Lamb$1;->a:Lamb;

    invoke-static {v3}, Lamb;->c(Lamb;)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Laly;->b(FI)V

    .line 120
    iget-object p1, p0, Lamb$1;->a:Lamb;

    invoke-static {p1, v4}, Lamb;->a(Lamb;F)F

    .line 121
    iget-object p1, p0, Lamb$1;->a:Lamb;

    invoke-static {p1, v2}, Lamb;->a(Lamb;I)I

    .line 127
    :cond_4
    :goto_0
    iget-object p1, p0, Lamb$1;->a:Lamb;

    invoke-static {p1}, Lamb;->c(Lamb;)I

    move-result p1

    if-ge p1, v2, :cond_5

    .line 128
    iget-object p1, p0, Lamb$1;->a:Lamb;

    invoke-static {p1}, Lamb;->d(Lamb;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_1
    return-void
.end method

.class public Lamb;
.super Lalz;
.source "OverScrollDecorator.java"


# instance fields
.field private c:F

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;Lama;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lalz;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;Lama;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lamb;->d:I

    .line 51
    iput-boolean p1, p0, Lamb;->e:Z

    .line 52
    iput-boolean p1, p0, Lamb;->f:Z

    .line 53
    iput-boolean p1, p0, Lamb;->g:Z

    .line 97
    new-instance p1, Lamb$1;

    invoke-direct {p1, p0}, Lamb$1;-><init>(Lamb;)V

    iput-object p1, p0, Lamb;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lamb;F)F
    .locals 0

    .line 15
    iput p1, p0, Lamb;->c:F

    return p1
.end method

.method static synthetic a(Lamb;)I
    .locals 2

    .line 15
    iget v0, p0, Lamb;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lamb;->d:I

    return v0
.end method

.method static synthetic a(Lamb;I)I
    .locals 0

    .line 15
    iput p1, p0, Lamb;->d:I

    return p1
.end method

.method static synthetic b(Lamb;)F
    .locals 0

    .line 15
    iget p0, p0, Lamb;->c:F

    return p0
.end method

.method static synthetic c(Lamb;)I
    .locals 0

    .line 15
    iget p0, p0, Lamb;->d:I

    return p0
.end method

.method static synthetic d(Lamb;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lamb;->h:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 79
    iget-object v0, p0, Lamb;->a:Lama;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamb;->a:Lama;

    invoke-interface {v0, p1, p2, p3, p4}, Lama;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 81
    :cond_0
    iget-object p3, p0, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->z()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 84
    iget-object p2, p0, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result p2

    neg-int p2, p2

    if-ge p1, p2, :cond_2

    iget-boolean p2, p0, Lamb;->f:Z

    if-eqz p2, :cond_2

    return-void

    .line 85
    :cond_2
    iget-object p2, p0, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result p2

    if-le p1, p2, :cond_3

    iget-boolean p1, p0, Lamb;->e:Z

    if-eqz p1, :cond_3

    return-void

    .line 87
    :cond_3
    iput p4, p0, Lamb;->c:F

    .line 88
    iget p1, p0, Lamb;->c:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x453b8000    # 3000.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 89
    iget-object p1, p0, Lamb;->h:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lamb;->g:Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lamb;->c:F

    const/16 p1, 0x3c

    .line 93
    iput p1, p0, Lamb;->d:I

    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 8

    .line 73
    iget-object v0, p0, Lamb;->a:Lama;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lamb;->a:Lama;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lama;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;Z)V
    .locals 3

    .line 65
    iget-object v0, p0, Lamb;->a:Lama;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lamb;->a:Lama;

    iget-boolean v2, p0, Lamb;->g:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-interface {v0, p1, p2}, Lama;->a(Landroid/view/MotionEvent;Z)V

    .line 68
    :cond_1
    iput-boolean v1, p0, Lamb;->g:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lamb;->a:Lama;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamb;->a:Lama;

    invoke-interface {v0, p1}, Lama;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lamb;->a:Lama;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamb;->a:Lama;

    invoke-interface {v0, p1}, Lama;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lamb;->a:Lama;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamb;->a:Lama;

    invoke-interface {v0, p1}, Lama;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Landroid/view/MotionEvent;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lamb;->a:Lama;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamb;->a:Lama;

    invoke-interface {v0, p1}, Lama;->d(Landroid/view/MotionEvent;)V

    .line 58
    :cond_0
    iget-object p1, p0, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v0

    invoke-static {p1, v0}, Lamf;->a(Landroid/view/View;I)Z

    move-result p1

    iput-boolean p1, p0, Lamb;->e:Z

    .line 59
    iget-object p1, p0, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lamb;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v0

    invoke-static {p1, v0}, Lamf;->b(Landroid/view/View;I)Z

    move-result p1

    iput-boolean p1, p0, Lamb;->f:Z

    return-void
.end method

.class public Lamc;
.super Ljava/lang/Object;
.source "RefreshProcessor.java"

# interfaces
.implements Lama;


# instance fields
.field protected a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

.field private b:F

.field private c:F

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lamc;->d:Z

    .line 24
    iput-boolean v0, p0, Lamc;->e:Z

    .line 25
    iput-boolean v0, p0, Lamc;->f:Z

    .line 26
    iput-boolean v0, p0, Lamc;->g:Z

    if-eqz p1, :cond_0

    .line 19
    iput-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The coprocessor can not be null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 9

    .line 116
    iget-object v0, p0, Lamc;->h:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method private b()V
    .locals 9

    .line 125
    iget-object v0, p0, Lamc;->h:Landroid/view/MotionEvent;

    .line 126
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    const/4 v5, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Landroid/view/MotionEvent;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 0

    .line 159
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result p1

    .line 160
    iget-object p2, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->F()Z

    move-result p2

    if-eqz p2, :cond_0

    int-to-float p2, p1

    cmpl-float p2, p4, p2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->J()Z

    move-result p2

    if-nez p2, :cond_0

    .line 161
    iget-object p2, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b()Laly;

    move-result-object p2

    float-to-int p3, p6

    invoke-virtual {p2, p3}, Laly;->a(I)V

    .line 163
    :cond_0
    iget-object p2, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->G()Z

    move-result p2

    if-eqz p2, :cond_1

    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gtz p1, :cond_1

    .line 164
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b()Laly;

    move-result-object p1

    float-to-int p2, p6

    invoke-virtual {p1, p2}, Laly;->b(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 146
    iget-boolean p1, p0, Lamc;->e:Z

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b()Laly;

    move-result-object p1

    invoke-virtual {p1}, Laly;->a()V

    :cond_0
    if-nez p2, :cond_1

    .line 149
    iget-boolean p1, p0, Lamc;->f:Z

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b()Laly;

    move-result-object p1

    invoke-virtual {p1}, Laly;->b()V

    :cond_1
    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lamc;->e:Z

    .line 153
    iput-boolean p1, p0, Lamc;->f:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    goto/16 :goto_3

    .line 49
    :cond_0
    iput-object p1, p0, Lamc;->h:Landroid/view/MotionEvent;

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lamc;->b:F

    sub-float/2addr v0, v1

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lamc;->c:F

    sub-float/2addr v1, v4

    .line 52
    iget-boolean v4, p0, Lamc;->d:Z

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    cmpl-float v0, v1, v5

    if-lez v0, :cond_1

    .line 53
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v4

    invoke-static {v0, v4}, Lamf;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->U()V

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lamc;->b:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lamc;->c:F

    .line 57
    invoke-direct {p0}, Lamc;->a()V

    .line 58
    iput-boolean v2, p0, Lamc;->d:Z

    return v2

    :cond_1
    cmpg-float v0, v1, v5

    if-gez v0, :cond_2

    .line 60
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v4

    invoke-static {v0, v4}, Lamf;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->V()V

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lamc;->b:F

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lamc;->c:F

    .line 64
    iput-boolean v2, p0, Lamc;->d:Z

    .line 65
    invoke-direct {p0}, Lamc;->a()V

    return v2

    .line 69
    :cond_2
    iget-boolean v0, p0, Lamc;->d:Z

    if-eqz v0, :cond_f

    .line 70
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->F()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 73
    :cond_3
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->Y()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->W()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v3

    invoke-static {v0, v3}, Lamf;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 75
    :cond_4
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Landroid/view/MotionEvent;)Z

    .line 77
    :cond_5
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->f()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 78
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 79
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b()Laly;

    move-result-object p1

    invoke-virtual {p1, v1}, Laly;->a(F)V

    goto :goto_0

    .line 80
    :cond_6
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->Z()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->X()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v4}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v4

    invoke-static {v0, v4}, Lamf;->b(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 83
    :cond_7
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Landroid/view/MotionEvent;)Z

    .line 85
    :cond_8
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->h()I

    move-result p1

    neg-int p1, p1

    mul-int/2addr p1, v3

    int-to-float p1, p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 86
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 87
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b()Laly;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1, v0}, Laly;->b(F)V

    :cond_9
    :goto_0
    cmpl-float p1, v1, v5

    if-nez p1, :cond_a

    .line 89
    iget-boolean p1, p0, Lamc;->g:Z

    if-nez p1, :cond_a

    .line 90
    iput-boolean v2, p0, Lamc;->g:Z

    .line 91
    invoke-direct {p0}, Lamc;->b()V

    :cond_a
    return v2

    .line 71
    :cond_b
    :goto_1
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 98
    :cond_c
    iget-boolean v0, p0, Lamc;->d:Z

    if-eqz v0, :cond_f

    .line 99
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->W()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 100
    iput-boolean v2, p0, Lamc;->e:Z

    goto :goto_2

    .line 101
    :cond_d
    iget-object p1, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->X()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 102
    iput-boolean v2, p0, Lamc;->f:Z

    .line 104
    :cond_e
    :goto_2
    iput-boolean v1, p0, Lamc;->d:Z

    return v2

    .line 109
    :cond_f
    :goto_3
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 32
    :cond_10
    iput-boolean v1, p0, Lamc;->g:Z

    .line 33
    iput-boolean v1, p0, Lamc;->d:Z

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lamc;->b:F

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lamc;->c:F

    .line 37
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 38
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->H()Z

    move-result v0

    if-nez v0, :cond_11

    .line 39
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->e(Z)V

    .line 41
    :cond_11
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->I()Z

    move-result v0

    if-nez v0, :cond_12

    .line 42
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->f(Z)V

    .line 46
    :cond_12
    iget-object v0, p0, Lamc;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Landroid/view/MotionEvent;)Z

    return v2
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

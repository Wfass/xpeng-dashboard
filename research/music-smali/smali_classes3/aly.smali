.class public Laly;
.super Ljava/lang/Object;
.source "AnimProcessor.java"


# instance fields
.field private a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

.field private b:Landroid/view/animation/DecelerateInterpolator;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Laly;->c:Z

    .line 38
    iput-boolean v0, p0, Laly;->d:Z

    .line 128
    iput-boolean v0, p0, Laly;->e:Z

    .line 161
    iput-boolean v0, p0, Laly;->f:Z

    .line 189
    iput-boolean v0, p0, Laly;->g:Z

    .line 221
    iput-boolean v0, p0, Laly;->h:Z

    .line 270
    iput-boolean v0, p0, Laly;->i:Z

    .line 297
    iput-boolean v0, p0, Laly;->j:Z

    .line 324
    iput-boolean v0, p0, Laly;->k:Z

    .line 325
    iput-boolean v0, p0, Laly;->l:Z

    .line 363
    iput-boolean v0, p0, Laly;->m:Z

    .line 364
    iput-boolean v0, p0, Laly;->n:Z

    .line 405
    new-instance v0, Laly$2;

    invoke-direct {v0, p0}, Laly$2;-><init>(Laly;)V

    iput-object v0, p0, Laly;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 424
    new-instance v0, Laly$3;

    invoke-direct {v0, p0}, Laly$3;-><init>(Laly;)V

    iput-object v0, p0, Laly;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 440
    new-instance v0, Laly$4;

    invoke-direct {v0, p0}, Laly$4;-><init>(Laly;)V

    iput-object v0, p0, Laly;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 467
    new-instance v0, Laly$5;

    invoke-direct {v0, p0}, Laly$5;-><init>(Laly;)V

    iput-object v0, p0, Laly;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 33
    iput-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    .line 34
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Laly;->b:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method static synthetic a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;
    .locals 0

    .line 25
    iget-object p0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    return-object p0
.end method

.method static synthetic a(Laly;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Laly;->c(F)V

    return-void
.end method

.method static synthetic a(Laly;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Laly;->c(I)V

    return-void
.end method

.method static synthetic a(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->e:Z

    return p1
.end method

.method static synthetic b(Laly;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Laly;->d(F)V

    return-void
.end method

.method static synthetic b(Laly;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Laly;->c:Z

    return p0
.end method

.method static synthetic b(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->c:Z

    return p1
.end method

.method private c(F)V
    .locals 2

    .line 121
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 494
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->q()Landroid/view/View;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method static synthetic c(Laly;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Laly;->d:Z

    return p0
.end method

.method static synthetic c(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->f:Z

    return p1
.end method

.method static synthetic d(Laly;)I
    .locals 0

    .line 25
    invoke-direct {p0}, Laly;->f()I

    move-result p0

    return p0
.end method

.method private d(F)V
    .locals 2

    .line 125
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method static synthetic d(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->g:Z

    return p1
.end method

.method private e()I
    .locals 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "header translationY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",Visible head height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic e(Laly;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 25
    iget-object p0, p0, Laly;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic e(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->d:Z

    return p1
.end method

.method private f()I
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "footer translationY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic f(Laly;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 25
    iget-object p0, p0, Laly;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic f(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->h:Z

    return p1
.end method

.method static synthetic g(Laly;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 25
    iget-object p0, p0, Laly;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic g(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->i:Z

    return p1
.end method

.method static synthetic h(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->j:Z

    return p1
.end method

.method static synthetic i(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->k:Z

    return p1
.end method

.method static synthetic j(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->l:Z

    return p1
.end method

.method static synthetic k(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->m:Z

    return p1
.end method

.method static synthetic l(Laly;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Laly;->n:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 95
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->L()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Laly;->e()I

    move-result v0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->g()I

    move-result v1

    iget-object v2, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Laly;->c()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Laly;->a(Z)V

    :goto_0
    return-void
.end method

.method public a(F)V
    .locals 3

    .line 41
    iget-object v0, p0, Laly;->b:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->f()F

    move-result v1

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    .line 44
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->L()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->C()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->M()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    .line 46
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_2
    :goto_1
    iget-boolean p1, p0, Laly;->c:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 55
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 57
    :cond_3
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 58
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->l()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 60
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(F)V

    .line 63
    :goto_2
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->J()Z

    move-result p1

    if-nez p1, :cond_4

    .line 64
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    float-to-int p1, v0

    .line 65
    invoke-direct {p0, p1}, Laly;->c(I)V

    :cond_4
    return-void
.end method

.method public a(FI)V
    .locals 7

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animOverScrollTop\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",computeTimes->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    .line 336
    iget-boolean v0, p0, Laly;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 337
    iput-boolean v0, p0, Laly;->l:Z

    .line 338
    iput-boolean v0, p0, Laly;->k:Z

    .line 339
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->U()V

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 340
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 341
    iget-object p2, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->j()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->j()I

    move-result p1

    :cond_1
    move v2, p1

    const/16 p1, 0x32

    if-gt v2, p1, :cond_2

    const/16 p1, 0x73

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fd3333333333333L    # 0.3

    int-to-double v0, v2

    mul-double/2addr v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    add-double/2addr v0, p1

    double-to-int p1, v0

    .line 343
    :goto_0
    invoke-direct {p0}, Laly;->e()I

    move-result v1

    int-to-long v3, p1

    iget-object v5, p0, Laly;->q:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Laly$12;

    invoke-direct {v6, p0, v2, p1}, Laly$12;-><init>(Laly;II)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Laly;->a(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(I)V
    .locals 7

    .line 278
    iget-boolean v0, p0, Laly;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Laly;->i:Z

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animHeadHideByVy\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    .line 281
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1f40

    .line 283
    :cond_1
    invoke-direct {p0}, Laly;->e()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Laly;->e()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    int-to-long v3, p1

    iget-object v5, p0, Laly;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Laly$10;

    invoke-direct {v6, p0}, Laly$10;-><init>(Laly;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Laly;->a(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v0, 0x2

    .line 498
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 499
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 500
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 501
    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v0, 0x2

    .line 517
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 518
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 519
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 520
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sub-int/2addr p1, p2

    .line 521
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 522
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animHeadBack\uff1afinishRefresh?->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Laly;->f:Z

    if-eqz p1, :cond_0

    .line 169
    iget-boolean v1, p0, Laly;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->e(Z)V

    .line 172
    :cond_0
    invoke-direct {p0}, Laly;->e()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Laly;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Laly$6;

    invoke-direct {v3, p0, p1}, Laly$6;-><init>(Laly;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Laly;->a(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 103
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->L()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Laly;->f()I

    move-result v0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->i()I

    move-result v1

    iget-object v2, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Laly;->d()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Laly;->b(Z)V

    :goto_0
    return-void
.end method

.method public b(F)V
    .locals 3

    .line 70
    iget-object v0, p0, Laly;->b:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->h()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    .line 72
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->L()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->D()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->N()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    .line 74
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_2
    :goto_1
    iget-boolean p1, p0, Laly;->d:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 83
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 85
    :cond_3
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 86
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 88
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    neg-float v1, v0

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b(F)V

    .line 91
    :goto_2
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object p1

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public b(FI)V
    .locals 7

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animOverScrollBottom\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",computeTimes->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    .line 374
    iget-boolean v0, p0, Laly;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->V()V

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 376
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 377
    iget-object p2, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->j()I

    move-result p2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->j()I

    move-result p1

    :cond_1
    move v2, p1

    const/16 p1, 0x32

    if-gt v2, p1, :cond_2

    const/16 p1, 0x73

    goto :goto_0

    :cond_2
    const-wide p1, 0x3fd3333333333333L    # 0.3

    int-to-double v0, v2

    mul-double/2addr v0, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    add-double/2addr v0, p1

    double-to-int p1, v0

    .line 379
    :goto_0
    iget-boolean p2, p0, Laly;->d:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->K()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 380
    iget-object p1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->v()V

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    .line 382
    iput-boolean p2, p0, Laly;->n:Z

    .line 383
    iput-boolean p2, p0, Laly;->m:Z

    const/4 v1, 0x0

    int-to-long v3, p1

    .line 384
    iget-object v5, p0, Laly;->r:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Laly$13;

    invoke-direct {v6, p0, v2, p1}, Laly$13;-><init>(Laly;II)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Laly;->a(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 7

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animBottomHideByVy\uff1avy->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    .line 306
    iget-boolean v0, p0, Laly;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Laly;->j:Z

    .line 308
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x1388

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1f40

    .line 310
    :cond_1
    invoke-direct {p0}, Laly;->f()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Laly;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p1

    int-to-long v3, v0

    iget-object v5, p0, Laly;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v6, Laly$11;

    invoke-direct {v6, p0}, Laly$11;-><init>(Laly;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Laly;->a(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animBottomBack\uff1afinishLoading?->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Laly;->h:Z

    if-eqz p1, :cond_0

    .line 229
    iget-boolean v1, p0, Laly;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->f(Z)V

    .line 232
    :cond_0
    invoke-direct {p0}, Laly;->f()I

    move-result v0

    const/4 v1, 0x0

    new-instance v2, Laly$8;

    invoke-direct {v2, p0}, Laly$8;-><init>(Laly;)V

    new-instance v3, Laly$9;

    invoke-direct {v3, p0, p1}, Laly$9;-><init>(Laly;Z)V

    invoke-virtual {p0, v0, v1, v2, v3}, Laly;->a(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public c()V
    .locals 4

    const-string v0, "animHeadToRefresh:"

    .line 134
    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Laly;->e:Z

    .line 136
    invoke-direct {p0}, Laly;->e()I

    move-result v0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->g()I

    move-result v1

    iget-object v2, p0, Laly;->o:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Laly$1;

    invoke-direct {v3, p0}, Laly$1;-><init>(Laly;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Laly;->a(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public d()V
    .locals 4

    const-string v0, "animBottomToLoad"

    .line 195
    invoke-static {v0}, Lame;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Laly;->g:Z

    .line 197
    invoke-direct {p0}, Laly;->f()I

    move-result v0

    iget-object v1, p0, Laly;->a:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->i()I

    move-result v1

    iget-object v2, p0, Laly;->p:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v3, Laly$7;

    invoke-direct {v3, p0}, Laly$7;-><init>(Laly;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Laly;->a(IILandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

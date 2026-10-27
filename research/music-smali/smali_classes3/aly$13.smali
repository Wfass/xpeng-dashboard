.class Laly$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laly;->b(FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Laly;


# direct methods
.method constructor <init>(Laly;II)V
    .locals 0

    .line 384
    iput-object p1, p0, Laly$13;->c:Laly;

    iput p2, p0, Laly$13;->a:I

    iput p3, p0, Laly$13;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    .line 387
    iget-object p1, p0, Laly$13;->c:Laly;

    invoke-static {p1}, Laly;->c(Laly;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Laly$13;->c:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Laly$13;->c:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 388
    iget-object p1, p0, Laly$13;->c:Laly;

    invoke-virtual {p1}, Laly;->d()V

    .line 389
    iget-object p1, p0, Laly$13;->c:Laly;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laly;->k(Laly;Z)Z

    .line 390
    iget-object p1, p0, Laly$13;->c:Laly;

    invoke-static {p1, v0}, Laly;->l(Laly;Z)Z

    return-void

    .line 393
    :cond_0
    iget-object v1, p0, Laly$13;->c:Laly;

    iget v2, p0, Laly$13;->a:I

    const/4 v3, 0x0

    iget p1, p0, Laly$13;->b:I

    mul-int/lit8 p1, p1, 0x2

    int-to-long v4, p1

    invoke-static {v1}, Laly;->g(Laly;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v6

    new-instance v7, Laly$13$1;

    invoke-direct {v7, p0}, Laly$13$1;-><init>(Laly$13;)V

    invoke-virtual/range {v1 .. v7}, Laly;->a(IIJLandroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

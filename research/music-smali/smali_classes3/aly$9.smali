.class Laly$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laly;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Laly;


# direct methods
.method constructor <init>(Laly;Z)V
    .locals 0

    .line 250
    iput-object p1, p0, Laly$9;->b:Laly;

    iput-boolean p2, p0, Laly$9;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 253
    iget-object p1, p0, Laly$9;->b:Laly;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laly;->f(Laly;Z)Z

    .line 255
    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b(Z)V

    .line 256
    iget-boolean p1, p0, Laly$9;->a:Z

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1}, Laly;->c(Laly;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 260
    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 261
    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1, v0}, Laly;->e(Laly;Z)Z

    .line 262
    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->p()V

    .line 263
    iget-object p1, p0, Laly$9;->b:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->d(Z)V

    :cond_0
    return-void
.end method

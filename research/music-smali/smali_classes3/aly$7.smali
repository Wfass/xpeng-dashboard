.class Laly$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laly;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laly;


# direct methods
.method constructor <init>(Laly;)V
    .locals 0

    .line 197
    iput-object p1, p0, Laly$7;->a:Laly;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 200
    iget-object p1, p0, Laly$7;->a:Laly;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laly;->d(Laly;Z)Z

    .line 202
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->m()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_0
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->b(Z)V

    .line 207
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->c(Laly;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 209
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->d(Z)V

    .line 210
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->P()V

    .line 211
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1, v0}, Laly;->e(Laly;Z)Z

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->d(Z)V

    .line 215
    iget-object p1, p0, Laly$7;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->P()V

    :cond_2
    :goto_0
    return-void
.end method

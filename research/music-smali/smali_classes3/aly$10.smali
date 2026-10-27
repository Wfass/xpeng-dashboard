.class Laly$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laly;->a(I)V
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

    .line 283
    iput-object p1, p0, Laly$10;->a:Laly;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 286
    iget-object p1, p0, Laly$10;->a:Laly;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Laly;->g(Laly;Z)Z

    .line 287
    iget-object p1, p0, Laly$10;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->a(Z)V

    .line 288
    iget-object p1, p0, Laly$10;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 289
    iget-object p1, p0, Laly$10;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->c(Z)V

    .line 290
    iget-object p1, p0, Laly$10;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->S()V

    .line 291
    iget-object p1, p0, Laly$10;->a:Laly;

    invoke-static {p1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->o()V

    :cond_0
    return-void
.end method

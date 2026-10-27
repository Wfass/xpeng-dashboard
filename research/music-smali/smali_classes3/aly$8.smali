.class Laly$8;
.super Ljava/lang/Object;
.source "AnimProcessor.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laly;->b(Z)V
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

    .line 232
    iput-object p1, p0, Laly$8;->a:Laly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 235
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 237
    iget-object v1, p0, Laly$8;->a:Laly;

    invoke-static {v1}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Laly$8;->a:Laly;

    invoke-static {v2}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->n()I

    move-result v2

    invoke-static {v1, v2}, Lamf;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    iget-object v1, p0, Laly$8;->a:Laly;

    invoke-static {v1}, Laly;->d(Laly;)I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 241
    iget-object v0, p0, Laly$8;->a:Laly;

    invoke-static {v0}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Laly$8;->a:Laly;

    invoke-static {v0}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lamf;->c(Landroid/view/View;I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Laly$8;->a:Laly;

    invoke-static {v0}, Laly;->a(Laly;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$a;->k()Landroid/view/View;

    move-result-object v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lamf;->c(Landroid/view/View;I)V

    .line 248
    :cond_1
    :goto_0
    iget-object v0, p0, Laly$8;->a:Laly;

    invoke-static {v0}, Laly;->e(Laly;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

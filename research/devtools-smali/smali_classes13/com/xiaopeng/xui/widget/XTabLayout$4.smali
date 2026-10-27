.class Lcom/xiaopeng/xui/widget/XTabLayout$4;
.super Ljava/lang/Object;
.source "XTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout;->a(ZLcom/xiaopeng/xui/widget/XTabLayout$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahm:Lcom/xiaopeng/xui/widget/XTabLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9

    .line 628
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->e(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->e(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v1

    div-float/2addr v0, v1

    .line 630
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->e(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->f(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->e(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v3

    div-float v3, p1, v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->f(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->g(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(Lcom/xiaopeng/xui/widget/XTabLayout;F)F

    goto :goto_0

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->f(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->e(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v3

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->e(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    div-float/2addr v3, v4

    sub-float/2addr v3, v5

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->f(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->g(Lcom/xiaopeng/xui/widget/XTabLayout;)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->a(Lcom/xiaopeng/xui/widget/XTabLayout;F)F

    .line 635
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->h(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->i(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    const-wide v3, 0x3ff0c49ba5e353f8L    # 1.048

    if-le v1, v2, :cond_1

    .line 636
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->i(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    int-to-double v5, v2

    float-to-double v7, p1

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->h(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v4

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/XTabLayout;->i(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v7

    sub-int/2addr v4, v7

    int-to-double v7, v4

    mul-double/2addr v2, v7

    add-double/2addr v5, v2

    double-to-int v2, v5

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->b(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 637
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->j(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->k(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->j(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->c(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    goto :goto_1

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->i(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->h(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/XTabLayout;->i(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->b(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 640
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->j(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    int-to-double v5, v2

    float-to-double v7, p1

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->k(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v4

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/XTabLayout;->j(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v7

    sub-int/2addr v4, v7

    int-to-double v7, v4

    mul-double/2addr v2, v7

    add-double/2addr v5, v2

    double-to-int v2, v5

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->c(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 643
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->l(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->m(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    const-wide v3, 0x4012978d4fdf3b64L    # 4.648

    if-le v1, v2, :cond_2

    .line 644
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->m(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    int-to-double v5, v2

    float-to-double v7, p1

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->l(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result p1

    iget-object v4, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/XTabLayout;->m(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v4

    sub-int/2addr p1, v4

    int-to-double v7, p1

    mul-double/2addr v2, v7

    add-double/2addr v5, v2

    double-to-int p1, v5

    invoke-static {v1, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->d(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 645
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->n(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->o(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/XTabLayout;->n(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->e(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    goto :goto_2

    .line 647
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/XTabLayout;->m(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->l(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/XTabLayout;->m(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v0, v5

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/widget/XTabLayout;->d(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/XTabLayout;->n(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v1

    int-to-double v1, v1

    float-to-double v5, p1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->o(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result p1

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/XTabLayout;->n(Lcom/xiaopeng/xui/widget/XTabLayout;)I

    move-result v5

    sub-int/2addr p1, v5

    int-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int p1, v1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->e(Lcom/xiaopeng/xui/widget/XTabLayout;I)I

    .line 650
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout$4;->ahm:Lcom/xiaopeng/xui/widget/XTabLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTabLayout;->invalidate()V

    .line 651
    return-void
.end method

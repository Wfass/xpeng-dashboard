.class public Lbkc;
.super Ljava/lang/Object;
.source "NrLocalRadioTransformer.java"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    iput v0, p0, Lbkc;->a:F

    const v0, 0x3dcccccd    # 0.1f

    .line 18
    iput v0, p0, Lbkc;->b:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_0

    .line 26
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v1, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 27
    iget v0, p0, Lbkc;->b:F

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_0
    cmpg-float v0, p2, v0

    const/high16 v1, 0x41500000    # 13.0f

    if-gez v0, :cond_1

    .line 30
    iget v0, p0, Lbkc;->b:F

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 32
    :cond_1
    iget v0, p0, Lbkc;->b:F

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    mul-float/2addr v0, p2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    mul-float/2addr p2, p2

    .line 34
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method

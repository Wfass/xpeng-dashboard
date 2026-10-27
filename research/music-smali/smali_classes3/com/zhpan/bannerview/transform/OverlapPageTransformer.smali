.class public final Lcom/zhpan/bannerview/transform/OverlapPageTransformer;
.super Ljava/lang/Object;
.source "OverlapPageTransformer.kt"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final itemGap:F

.field private final minScale:F

.field private final orientation:I

.field private scalingValue:F

.field private final unSelectedItemAlpha:F

.field private final unSelectedItemRotation:F


# direct methods
.method public constructor <init>(IFFFF)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->orientation:I

    .line 33
    iput p2, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->minScale:F

    .line 34
    iput p3, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->unSelectedItemRotation:F

    .line 35
    iput p4, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->unSelectedItemAlpha:F

    .line 36
    iput p5, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->itemGap:F

    .line 40
    iget p1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->minScale:F

    const/4 p2, 0x0

    cmpg-float p3, p2, p1

    const/4 p4, 0x1

    const/high16 p5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    cmpg-float p1, p1, p5

    if-gtz p1, :cond_0

    move p1, p4

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 42
    iget p1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->unSelectedItemAlpha:F

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_1

    cmpg-float p1, p1, p5

    if-gtz p1, :cond_1

    move v0, p4

    :cond_1
    if-eqz v0, :cond_2

    const p1, 0x3e4ccccd    # 0.2f

    .line 46
    iput p1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->scalingValue:F

    return-void

    .line 41
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unSelectedItemAlpha value should be between 1.0 to 0.0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minScale value should be between 1.0 to 0.0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IFFFFILccc;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move v2, p1

    .line 31
    invoke-direct/range {v1 .. v6}, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;-><init>(IFFFF)V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 8

    const-string v0, "page"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->minScale:F

    float-to-double v1, v0

    const-wide v3, 0x3fe999999999999aL    # 0.8

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    float-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    iput v0, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->scalingValue:F

    .line 60
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, p2, v0

    .line 61
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 63
    iget v3, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->unSelectedItemRotation:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-nez v3, :cond_4

    int-to-float v3, v6

    sub-float/2addr v3, v1

    cmpl-float v1, p2, v4

    if-lez v1, :cond_3

    .line 65
    iget v1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->unSelectedItemRotation:F

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->unSelectedItemRotation:F

    neg-float v1, v1

    :goto_2
    mul-float/2addr v3, v1

    .line 67
    invoke-virtual {p1, v3}, Landroid/view/View;->setRotationY(F)V

    .line 70
    :cond_4
    iget v1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->scalingValue:F

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v2, v1

    .line 71
    iget v3, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->minScale:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 74
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 76
    iget v3, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->itemGap:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Lbyv;->a(F)I

    move-result v3

    .line 77
    iget v7, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->orientation:I

    if-eqz v7, :cond_7

    if-ne v7, v6, :cond_6

    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v4, p2, v4

    if-lez v4, :cond_5

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    goto :goto_3

    .line 92
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_3
    int-to-float v4, v4

    sub-float v1, v2, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 88
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_5

    .line 95
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Gives correct orientation value, ViewPager2.ORIENTATION_HORIZONTAL or ViewPager2.ORIENTATION_VERTICAL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    int-to-float v3, v3

    mul-float/2addr v3, p2

    cmpl-float v4, p2, v4

    if-lez v4, :cond_8

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    goto :goto_4

    .line 84
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    :goto_4
    int-to-float v4, v4

    sub-float v1, v2, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 79
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 100
    :goto_5
    iget v1, p0, Lcom/zhpan/bannerview/transform/OverlapPageTransformer;->unSelectedItemAlpha:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_9

    move v5, v6

    :cond_9
    if-nez v5, :cond_b

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_a

    cmpg-float v1, p2, v2

    if-gtz v1, :cond_a

    int-to-float v1, v6

    .line 104
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v1, p2

    mul-float/2addr v1, v0

    add-float/2addr v1, v0

    goto :goto_6

    :cond_a
    mul-float/2addr p2, p2

    .line 107
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    div-float v1, v0, p2

    .line 101
    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    return-void
.end method

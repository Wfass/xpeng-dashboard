.class public Lcom/android/car/apps/common/e;
.super Landroid/widget/ImageView;
.source "CropAlignedImageView.java"


# instance fields
.field private a:I

.field private b:F

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/android/car/apps/common/e;->b:F

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/apps/common/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a()V
    .locals 8

    .line 83
    invoke-virtual {p0}, Lcom/android/car/apps/common/e;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 84
    invoke-virtual {p0}, Lcom/android/car/apps/common/e;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 85
    invoke-virtual {p0}, Lcom/android/car/apps/common/e;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 86
    iget v2, p0, Lcom/android/car/apps/common/e;->c:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 87
    iget v3, p0, Lcom/android/car/apps/common/e;->d:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    mul-float v5, v0, v2

    .line 97
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    neg-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    neg-float v1, v1

    div-float/2addr v1, v7

    .line 98
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 99
    iget v0, p0, Lcom/android/car/apps/common/e;->b:F

    mul-float v1, v2, v0

    mul-float/2addr v2, v0

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v0, 0x0

    .line 102
    iget v1, p0, Lcom/android/car/apps/common/e;->a:I

    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_3

    :cond_2
    div-float/2addr v5, v7

    move v0, v5

    goto :goto_2

    .line 110
    :cond_3
    iget v0, p0, Lcom/android/car/apps/common/e;->c:I

    :goto_1
    int-to-float v0, v0

    div-float/2addr v5, v7

    sub-float/2addr v0, v5

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_2

    .line 107
    iget v0, p0, Lcom/android/car/apps/common/e;->c:I

    goto :goto_1

    .line 104
    :cond_5
    iget v0, p0, Lcom/android/car/apps/common/e;->c:I

    int-to-float v0, v0

    div-float/2addr v0, v7

    .line 113
    :goto_2
    iget v1, p0, Lcom/android/car/apps/common/e;->d:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 114
    invoke-virtual {p0, v6}, Lcom/android/car/apps/common/e;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_6
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 64
    sget-object v0, Lcom/android/car/apps/common/h$j;->CrossfadeImageView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    sget p2, Lcom/android/car/apps/common/h$j;->CrossfadeImageView_align_horizontal:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/car/apps/common/e;->a:I

    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/android/car/apps/common/e;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected setFrame(IIII)Z
    .locals 1

    sub-int v0, p3, p1

    .line 74
    iput v0, p0, Lcom/android/car/apps/common/e;->c:I

    sub-int v0, p4, p2

    .line 75
    iput v0, p0, Lcom/android/car/apps/common/e;->d:I

    .line 77
    invoke-direct {p0}, Lcom/android/car/apps/common/e;->a()V

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public setImageAdditionalScale(F)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/android/car/apps/common/e;->b:F

    .line 128
    invoke-direct {p0}, Lcom/android/car/apps/common/e;->a()V

    return-void
.end method

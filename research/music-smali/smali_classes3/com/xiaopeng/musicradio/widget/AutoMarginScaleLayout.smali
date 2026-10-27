.class public Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;
.super Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;
.source "AutoMarginScaleLayout.java"


# instance fields
.field private mBackFullScale:F

.field private mFrontFullScale:F

.field private mThreeOneScale:F

.field private mThreeTwoScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 40
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 42
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_scale_margin:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeTwoScale:F

    .line 43
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeOneScale:F

    .line 44
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mFrontFullScale:F

    .line 45
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mBackFullScale:F

    return-void
.end method

.method protected setMargin(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 5

    .line 50
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginLayout;->setMargin(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    .line 51
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 52
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 53
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    .line 58
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeTwoScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 60
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeTwoScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 61
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeTwoScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 62
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeTwoScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeTwoScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 66
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeOneScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 68
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeOneScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 69
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeOneScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 70
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeOneScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 71
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mThreeOneScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 74
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mFrontFullScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 76
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mFrontFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 77
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mFrontFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 78
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mFrontFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 79
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mFrontFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 83
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mBackFullScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 85
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mBackFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 86
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mBackFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 87
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mBackFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 88
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleLayout;->mBackFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

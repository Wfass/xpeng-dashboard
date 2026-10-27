.class public Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;
.super Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;
.source "AutoMarginScaleCarViewLayout.java"


# instance fields
.field private mBackFullScale:F

.field private mFrontFullScale:F

.field private mThreeOneScale:F

.field private mThreeTwoScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_scale_margin:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeTwoScale:F

    .line 44
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeOneScale:F

    .line 45
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mFrontFullScale:F

    .line 46
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mBackFullScale:F

    return-void
.end method

.method protected setMargin(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 5

    .line 51
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginCarViewLayout;->setMargin(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    .line 52
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 53
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 54
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    .line 59
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeTwoScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 61
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeTwoScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 62
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeTwoScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 63
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeTwoScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 64
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeTwoScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 67
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeOneScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 69
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeOneScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 70
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeOneScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 71
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeOneScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 72
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mThreeOneScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 75
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mFrontFullScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 77
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mFrontFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 78
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mFrontFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 79
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mFrontFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 80
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mFrontFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 84
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mBackFullScale:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 86
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mBackFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mBackFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 88
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mBackFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 89
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleCarViewLayout;->mBackFullScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

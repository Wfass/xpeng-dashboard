.class public Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;
.super Lcom/xiaopeng/musicradio/widget/AutoExtendLayout;
.source "AutoExtendScaleLayout.java"


# instance fields
.field private mBackFullScale:F

.field private mFrontFullScale:F

.field private mThreeOneScale:F

.field private mThreeTwoScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoExtendLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/AutoExtendLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoExtendLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_three_two_scale_extend:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeTwoScale:F

    .line 41
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_three_one_scale_extend:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeOneScale:F

    .line 42
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_front_full_scale_extend:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mFrontFullScale:F

    .line 43
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoExtendLayout_back_full_scale_extend:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mBackFullScale:F

    .line 44
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeTwoScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    .line 45
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeTwoWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeTwoScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeTwoWidth:I

    .line 46
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeTwoHeight:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeTwoScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeTwoHeight:I

    .line 48
    :cond_0
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeOneScale:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 49
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeOneWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeOneScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeOneWidth:I

    .line 50
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeOneHeight:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeOneScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mThreeOneHeight:I

    .line 52
    :cond_1
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mFrontFullScale:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    .line 53
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mFrontFullWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mFrontFullScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mFrontFullWidth:I

    .line 54
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mFrontFullHeight:I

    int-to-float p1, p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mFrontFullScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mFrontFullHeight:I

    .line 56
    :cond_2
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mBackFullScale:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_3

    .line 57
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mBackFullWidth:I

    int-to-float p1, p1

    iget p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mBackFullScale:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mBackFullWidth:I

    .line 58
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mBackFullHeight:I

    int-to-float p1, p1

    iget p2, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mBackFullScale:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoExtendScaleLayout;->mBackFullHeight:I

    :cond_3
    return-void
.end method

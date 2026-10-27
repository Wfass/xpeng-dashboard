.class public Lcom/xiaopeng/xui/widget/XRatioLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XRatioLayout.java"


# instance fields
.field private widthToHeightRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XRatioLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XRatioLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    .line 23
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XRatioLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRatioLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XRatioLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 28
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XRatioLayout_ratio_width_to_height:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    .line 29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getWidthToHeightRatio()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 38
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 39
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    int-to-float p2, p1

    .line 45
    iget v0, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_0

    :cond_0
    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    int-to-float p1, p2

    .line 48
    iget v0, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 51
    :cond_1
    :goto_0
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 52
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 54
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setWidthToHeightRatio(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRatioLayout;->requestLayout()V

    return-void
.end method

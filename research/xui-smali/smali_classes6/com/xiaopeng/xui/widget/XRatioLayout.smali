.class public Lcom/xiaopeng/xui/widget/XRatioLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XRatioLayout.java"


# instance fields
.field private widthToHeightRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XRatioLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XRatioLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    .line 23
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XRatioLayout;->init(Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRatioLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XRatioLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XRatioLayout_ratio_width_to_height:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
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
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 37
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 38
    .local v1, "originalWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 39
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 41
    .local v3, "originalHeight":I
    move v4, v1

    .line 42
    .local v4, "calculatedWidth":I
    move v5, v3

    .line 44
    .local v5, "calculatedHeight":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_0

    if-eq v2, v6, :cond_0

    .line 45
    int-to-float v7, v1

    iget v8, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    div-float/2addr v7, v8

    float-to-int v5, v7

    goto :goto_0

    .line 47
    :cond_0
    if-eq v0, v6, :cond_1

    if-ne v2, v6, :cond_1

    .line 48
    int-to-float v7, v3

    iget v8, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 51
    :cond_1
    :goto_0
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 52
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 54
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onMeasure(II)V

    .line 55
    return-void
.end method

.method public setWidthToHeightRatio(F)V
    .locals 0
    .param p1, "widthToHeightRatio"    # F

    .line 58
    iput p1, p0, Lcom/xiaopeng/xui/widget/XRatioLayout;->widthToHeightRatio:F

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XRatioLayout;->requestLayout()V

    .line 60
    return-void
.end method

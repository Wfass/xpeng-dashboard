.class public Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;
.super Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;
.source "AutoMarginScaleTextView.java"


# instance fields
.field private f:F

.field private g:F

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 37
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 39
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_two_scale_margin:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->f:F

    .line 40
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_three_one_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->g:F

    .line 41
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_front_full_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->h:F

    .line 42
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AutoMarginLayout_back_full_scale_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->i:F

    return-void
.end method

.method protected a(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6

    .line 47
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginTextView;->a(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    .line 48
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v0

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    .line 50
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_0

    .line 55
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->f:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 57
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 58
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 59
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 60
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->getTextSize()F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->f:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, v5, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->setTextSize(IF)V

    goto/16 :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 64
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->g:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 66
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 67
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 68
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 69
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->g:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->getTextSize()F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->g:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, v5, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->setTextSize(IF)V

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->h:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 75
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 76
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 77
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 78
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->getTextSize()F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->h:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, v5, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->setTextSize(IF)V

    goto :goto_0

    .line 83
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->i:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 85
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 86
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 87
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 88
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->i:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->getTextSize()F

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->i:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, v5, p1}, Lcom/xiaopeng/musicradio/widget/AutoMarginScaleTextView;->setTextSize(IF)V

    goto :goto_0

    :cond_3
    move v3, v5

    :goto_0
    return v3
.end method

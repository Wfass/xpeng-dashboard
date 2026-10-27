.class public Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "AutoCenterLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12

    .line 37
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 41
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 45
    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 46
    invoke-virtual {p0, v8, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 47
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v9

    add-int/2addr v6, v10

    if-gt v6, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    move v6, v0

    .line 55
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    move p1, v3

    .line 58
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;->getChildCount()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 59
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v8, 0x42000000    # 32.0f

    invoke-static {v5, v8}, Lapf;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;->getChildCount()I

    move-result v8

    div-int/2addr v5, v8

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    .line 60
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 62
    invoke-virtual {v4, v5, p2}, Landroid/view/View;->measure(II)V

    .line 63
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 66
    :cond_2
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoCenterLinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

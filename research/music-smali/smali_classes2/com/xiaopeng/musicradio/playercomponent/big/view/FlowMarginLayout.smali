.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;
.super Landroid/view/ViewGroup;
.source "FlowMarginLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getPaddingLeft()I

    move-result p1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getPaddingRight()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    move v1, v0

    move v2, v1

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getChildCount()I

    move-result v3

    const/16 v4, 0x8

    if-ge v0, v3, :cond_1

    .line 55
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p4, p1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v1

    add-int/lit8 v2, v2, -0x1

    .line 64
    div-int/2addr p4, v2

    .line 65
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getChildCount()I

    move-result p2

    if-ge p3, p2, :cond_3

    .line 66
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 67
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_3

    .line 70
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p5, v1

    .line 72
    div-int/lit8 v2, v2, 0x2

    add-int v3, p1, v0

    add-int/2addr v1, v2

    .line 73
    invoke-virtual {p2, p1, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, p4

    add-int/2addr p1, v0

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 25
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 26
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 29
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p0, v4, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->measureChild(Landroid/view/View;II)V

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 41
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->getDefaultSize(II)I

    move-result p1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/playercomponent/big/view/FlowMarginLayout;->setMeasuredDimension(II)V

    return-void
.end method

.class public Lcom/xiaopeng/xui/widget/XSmartLinearLayout;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XSmartLinearLayout.java"


# instance fields
.field maxChildMeasuredHeight:I

.field maxChildMeasuredWidth:I

.field smartOrientation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 16
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->smartOrientation:Z

    const/4 p4, 0x0

    .line 37
    iput p4, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    .line 38
    iput p4, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    .line 32
    sget-object p4, Lbyg$n;->XSmartLinearLayout:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 33
    sget p2, Lbyg$n;->XSmartLinearLayout_smart_orientation:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->smartOrientation:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureHeight(II)V
    .locals 7

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    move v1, v0

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_2

    .line 136
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    .line 140
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 141
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    .line 143
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 144
    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  child index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cjf"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v3, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    if-le v2, v3, :cond_1

    .line 148
    iput v2, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 152
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v3, :cond_3

    goto :goto_3

    .line 156
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr p2, v1

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p2, v1

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private measureWidth(II)V
    .locals 9

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    move v2, v1

    move v3, v2

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v4

    const/16 v5, 0x8

    if-ge v2, v4, :cond_2

    .line 70
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 75
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 76
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    .line 78
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 79
    invoke-virtual {p0, v4, v5, v6}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure w: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  child index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  parent width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cjf"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v5, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    if-le v4, v5, :cond_1

    .line 83
    iput v4, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_2
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    div-int p2, v0, v3

    if-le p1, p2, :cond_7

    iget-boolean v2, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->smartOrientation:Z

    if-eqz v2, :cond_7

    if-le p1, p2, :cond_3

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->setOrientation(I)V

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->setOrientation(I)V

    .line 92
    :goto_2
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    if-ge p1, v0, :cond_5

    .line 93
    :goto_3
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_b

    .line 94
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v5, :cond_4

    goto :goto_4

    .line 98
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p2, v0

    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 102
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_b

    .line 103
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v5, :cond_6

    goto :goto_6

    .line 107
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    iget p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int p2, v0, p2

    iget v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p2, v2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 112
    :cond_7
    iget-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->smartOrientation:Z

    if-eqz p1, :cond_8

    .line 113
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->setOrientation(I)V

    .line 115
    :cond_8
    :goto_7
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_b

    .line 116
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_9

    goto :goto_8

    .line 120
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getOrientation()I

    move-result v2

    if-nez v2, :cond_a

    .line 122
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_8

    .line 124
    :cond_a
    iget v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v2, v0, v2

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->measureWidth(II)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->measureHeight(II)V

    .line 47
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    return-void
.end method

.method public refresh()V
    .locals 4

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 58
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

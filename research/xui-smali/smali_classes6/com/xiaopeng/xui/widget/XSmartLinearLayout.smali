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
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->smartOrientation:Z

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    .line 38
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    .line 32
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XSmartLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 33
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XSmartLinearLayout_smart_orientation:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->smartOrientation:Z

    .line 34
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
.end method

.method private measureHeight(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 133
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    .line 135
    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_2

    .line 136
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 137
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 138
    goto :goto_1

    .line 140
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 141
    .local v3, "wSpec":I
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 142
    .local v4, "hSpec":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, -0x2

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 144
    invoke-virtual {p0, v2, v3, v4}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    .line 146
    .local v6, "childMeasuredHeight":I
    const-string v7, "cjf"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMeasure h: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  child index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget v7, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    if-le v6, v7, :cond_1

    .line 148
    iput v6, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    .line 135
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "wSpec":I
    .end local v4    # "hSpec":I
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "childMeasuredHeight":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_2
    nop

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 152
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 154
    goto :goto_3

    .line 156
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredHeight:I

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 151
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private measureWidth(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "visibleChildCount":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 68
    .local v1, "layoutWidth":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    .line 69
    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "visibleChildCount":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v4

    const/16 v5, 0x8

    if-ge v0, v4, :cond_2

    .line 70
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 72
    goto :goto_1

    .line 74
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 75
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 76
    .local v5, "wSpec":I
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 77
    .local v6, "hSpec":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, -0x2

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 79
    invoke-virtual {p0, v4, v5, v6}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->measureChild(Landroid/view/View;II)V

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    .line 81
    .local v8, "childMeasuredWidth":I
    const-string v9, "cjf"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onMeasure w: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "  child index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "  parent width: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v9, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    if-le v8, v9, :cond_1

    .line 83
    iput v8, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    .line 69
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "wSpec":I
    .end local v6    # "hSpec":I
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "childMeasuredWidth":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    div-int v4, v1, v3

    if-le v0, v4, :cond_7

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->smartOrientation:Z

    if-eqz v0, :cond_7

    .line 87
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    div-int v4, v1, v3

    if-le v0, v4, :cond_3

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->setOrientation(I)V

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->setOrientation(I)V

    .line 92
    :goto_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    if-ge v0, v1, :cond_5

    .line 93
    nop

    .local v2, "i":I
    :goto_3
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 94
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 96
    goto :goto_4

    .line 98
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 93
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_4
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    goto :goto_3

    .line 102
    .end local v2    # "i":I
    :cond_5
    nop

    .restart local v2    # "i":I
    :goto_5
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 103
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_6

    .line 105
    goto :goto_6

    .line 107
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v6, v1, v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 102
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_6
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    goto :goto_5

    .line 112
    .end local v2    # "i":I
    :cond_7
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->smartOrientation:Z

    if-eqz v0, :cond_8

    .line 113
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->setOrientation(I)V

    .line 115
    :cond_8
    nop

    .restart local v2    # "i":I
    :goto_7
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 116
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_9

    .line 118
    goto :goto_8

    .line 120
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .restart local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getOrientation()I

    move-result v6

    if-nez v6, :cond_a

    .line 122
    iget v6, p0, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->maxChildMeasuredWidth:I

    div-int v7, v1, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_8

    .line 124
    :cond_a
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v6, v1, v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 115
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_8
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    goto :goto_7

    .line 130
    .end local v1    # "layoutWidth":I
    .end local v2    # "i":I
    .end local v3    # "visibleChildCount":I
    :cond_b
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->measureWidth(II)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->measureHeight(II)V

    .line 47
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onMeasure(II)V

    .line 48
    return-void
.end method

.method public refresh()V
    .locals 4

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSmartLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 55
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 58
    .local v2, "visibility":I
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "visibility":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

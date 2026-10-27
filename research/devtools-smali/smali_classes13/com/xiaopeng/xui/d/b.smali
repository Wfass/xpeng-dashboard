.class public Lcom/xiaopeng/xui/d/b;
.super Ljava/lang/Object;
.source "XBackgroundPaddingUtils.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;
    .locals 6
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 23
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_enable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 25
    if-eqz v0, :cond_5

    .line 26
    nop

    .line 27
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 28
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    :goto_0
    move v2, v0

    move v3, v2

    move v4, v3

    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_left:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 32
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_left:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 34
    :cond_1
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_right:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 35
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_right:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 37
    :cond_2
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_top:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 38
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_top:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 40
    :cond_3
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_bottom:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_bottom:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 43
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    invoke-static {p0, v0, v2, v3, v4}, Lcom/xiaopeng/xui/d/b;->b(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 46
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/view/View;IIII)Landroid/graphics/Rect;
    .locals 26
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 53
    const-string v1, "insetLeft %s, insetTop %s, insetRight %s, insetBottom %s, "

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    .line 54
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    .line 53
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xui/d/b;->log(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 61
    const-string v11, "paddingLeft %s, paddingRight %s, paddingTop %s, paddingBottom %s, "

    new-array v12, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v8

    .line 61
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaopeng/xui/d/b;->log(Ljava/lang/String;)V

    .line 64
    nop

    .line 65
    if-eqz v1, :cond_5

    .line 67
    instance-of v11, v1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v11, :cond_4

    .line 68
    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 69
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 70
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 71
    invoke-virtual {v1, v12}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 72
    const/4 v1, -0x1

    move/from16 v13, p1

    if-ne v13, v1, :cond_0

    .line 73
    iget v13, v12, Landroid/graphics/Rect;->left:I

    .line 75
    :cond_0
    move/from16 v14, p2

    if-ne v14, v1, :cond_1

    .line 76
    iget v14, v12, Landroid/graphics/Rect;->top:I

    .line 78
    :cond_1
    move/from16 v15, p3

    if-ne v15, v1, :cond_2

    .line 79
    iget v15, v12, Landroid/graphics/Rect;->right:I

    .line 81
    :cond_2
    move/from16 v8, p4

    if-ne v8, v1, :cond_3

    .line 82
    iget v1, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 84
    :cond_3
    move v1, v8

    :goto_0
    iget v8, v12, Landroid/graphics/Rect;->left:I

    sub-int v8, v13, v8

    .line 85
    iget v7, v12, Landroid/graphics/Rect;->top:I

    sub-int v7, v14, v7

    .line 86
    iget v6, v12, Landroid/graphics/Rect;->right:I

    sub-int v6, v15, v6

    .line 87
    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v1, v12

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v8, p4

    .line 92
    move-object v11, v1

    move v6, v5

    move v7, v6

    move v12, v7

    move v1, v8

    move v8, v12

    :goto_1
    const-string v5, "paddingLeftOffset %s, paddingTopOffset %s, paddingRightOffset %s, paddingBottomOffset %s, "

    move/from16 v25, v10

    new-array v10, v2, [Ljava/lang/Object;

    .line 93
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v10, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v18, 0x1

    aput-object v19, v10, v18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v17, 0x2

    aput-object v19, v10, v17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v16, 0x3

    aput-object v19, v10, v16

    .line 92
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/xui/d/b;->log(Ljava/lang/String;)V

    .line 94
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v19, v5

    move-object/from16 v20, v11

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v1

    invoke-direct/range {v19 .. v24}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 95
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v5, v11}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    add-int/2addr v3, v8

    add-int/2addr v9, v7

    add-int/2addr v4, v6

    add-int v10, v25, v12

    invoke-virtual {v0, v3, v9, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    const-string v3, "paddingLeft %s, paddingRight %s, paddingTop %s, paddingBottom %s, "

    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, v2, v4

    .line 102
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/d/b;->log(Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v13, v14, v15, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    .line 107
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 112
    const-string v0, "xpui-bgPadding"

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    return-void
.end method

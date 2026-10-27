.class public Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;
.super Ljava/lang/Object;
.source "XBackgroundPaddingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;
    .locals 27
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

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

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->log(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 58
    .local v3, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 59
    .local v4, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 60
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 61
    .local v10, "paddingBottom":I
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

    invoke-static {v11}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->log(Ljava/lang/String;)V

    .line 64
    const/4 v11, 0x0

    .local v11, "paddingLeftOffset":I
    const/4 v12, 0x0

    .local v12, "paddingRightOffset":I
    const/4 v13, 0x0

    .local v13, "paddingTopOffset":I
    const/4 v14, 0x0

    .line 65
    .local v14, "paddingBottomOffset":I
    if-eqz v1, :cond_5

    .line 67
    instance-of v15, v1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v15, :cond_4

    .line 68
    move-object v15, v1

    check-cast v15, Landroid/graphics/drawable/InsetDrawable;

    .line 69
    .local v15, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 70
    .local v16, "child":Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .local v8, "rect":Landroid/graphics/Rect;
    invoke-virtual {v15, v8}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 72
    const/4 v7, -0x1

    move/from16 v6, p1

    if-ne v6, v7, :cond_0

    .line 73
    iget v6, v8, Landroid/graphics/Rect;->left:I

    .line 75
    .end local p1    # "insetLeft":I
    .local v6, "insetLeft":I
    :cond_0
    move/from16 v5, p2

    if-ne v5, v7, :cond_1

    .line 76
    iget v5, v8, Landroid/graphics/Rect;->top:I

    .line 78
    .end local p2    # "insetTop":I
    .local v5, "insetTop":I
    :cond_1
    move/from16 v2, p3

    if-ne v2, v7, :cond_2

    .line 79
    iget v2, v8, Landroid/graphics/Rect;->right:I

    .line 81
    .end local p3    # "insetRight":I
    .local v2, "insetRight":I
    :cond_2
    move-object/from16 v17, v1

    move/from16 v1, p4

    if-ne v1, v7, :cond_3

    .line 82
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v17, "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 84
    .end local p4    # "insetBottom":I
    .local v1, "insetBottom":I
    :cond_3
    iget v7, v8, Landroid/graphics/Rect;->left:I

    sub-int v11, v6, v7

    .line 85
    iget v7, v8, Landroid/graphics/Rect;->top:I

    sub-int v13, v5, v7

    .line 86
    iget v7, v8, Landroid/graphics/Rect;->right:I

    sub-int v12, v2, v7

    .line 87
    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v7

    .line 88
    .end local v8    # "rect":Landroid/graphics/Rect;
    .end local v15    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    goto :goto_0

    .line 89
    .end local v2    # "insetRight":I
    .end local v5    # "insetTop":I
    .end local v6    # "insetLeft":I
    .end local v16    # "child":Landroid/graphics/drawable/Drawable;
    .end local v17    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "insetLeft":I
    .restart local p2    # "insetTop":I
    .restart local p3    # "insetRight":I
    .restart local p4    # "insetBottom":I
    :cond_4
    move/from16 v6, p1

    move/from16 v5, p2

    move/from16 v2, p3

    move-object/from16 v17, v1

    move/from16 v1, p4

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v16, v17

    .end local p1    # "insetLeft":I
    .end local p2    # "insetTop":I
    .end local p3    # "insetRight":I
    .end local p4    # "insetBottom":I
    .local v1, "insetBottom":I
    .restart local v2    # "insetRight":I
    .restart local v5    # "insetTop":I
    .restart local v6    # "insetLeft":I
    .restart local v16    # "child":Landroid/graphics/drawable/Drawable;
    :goto_0
    move-object/from16 v7, v16

    .line 92
    .end local v16    # "child":Landroid/graphics/drawable/Drawable;
    .local v7, "child":Landroid/graphics/drawable/Drawable;
    const-string v8, "paddingLeftOffset %s, paddingTopOffset %s, paddingRightOffset %s, paddingBottomOffset %s, "

    move/from16 v24, v10

    const/4 v15, 0x4

    new-array v10, v15, [Ljava/lang/Object;

    .line 93
    .end local v10    # "paddingBottom":I
    .local v24, "paddingBottom":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v10, v16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v10, v16

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v10, v16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v10, v16

    .line 92
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->log(Ljava/lang/String;)V

    .line 94
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v18, v8

    move-object/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v5

    move/from16 v22, v2

    move/from16 v23, v1

    invoke-direct/range {v18 .. v23}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 95
    .local v8, "newDrawable":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    add-int v10, v3, v11

    add-int v15, v9, v13

    move/from16 v25, v3

    add-int v3, v4, v12

    .end local v3    # "paddingLeft":I
    .local v25, "paddingLeft":I
    move/from16 v26, v4

    add-int v4, v24, v14

    .end local v4    # "paddingRight":I
    .local v26, "paddingRight":I
    invoke-virtual {v0, v10, v15, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    const-string v3, "paddingLeft %s, paddingRight %s, paddingTop %s, paddingBottom %s, "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x0

    aput-object v10, v4, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v4, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x2

    aput-object v10, v4, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v15, 0x3

    aput-object v10, v4, v15

    .line 102
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->log(Ljava/lang/String;)V

    .line 105
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    .line 107
    .end local v2    # "insetRight":I
    .end local v5    # "insetTop":I
    .end local v6    # "insetLeft":I
    .end local v7    # "child":Landroid/graphics/drawable/Drawable;
    .end local v8    # "newDrawable":Landroid/graphics/drawable/InsetDrawable;
    .end local v17    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v24    # "paddingBottom":I
    .end local v25    # "paddingLeft":I
    .end local v26    # "paddingRight":I
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "paddingLeft":I
    .restart local v4    # "paddingRight":I
    .restart local v10    # "paddingBottom":I
    .restart local p1    # "insetLeft":I
    .restart local p2    # "insetTop":I
    .restart local p3    # "insetRight":I
    .restart local p4    # "insetBottom":I
    :cond_5
    move/from16 v6, p1

    move/from16 v5, p2

    move/from16 v2, p3

    move-object/from16 v17, v1

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v24, v10

    move/from16 v1, p4

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "paddingLeft":I
    .end local v4    # "paddingRight":I
    .end local v10    # "paddingBottom":I
    .restart local v17    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v24    # "paddingBottom":I
    .restart local v25    # "paddingLeft":I
    .restart local v26    # "paddingRight":I
    const/4 v3, 0x0

    return-object v3
.end method

.method public static backgroundPadding(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_enable:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 25
    .local v1, "enable":Z
    if-eqz v1, :cond_5

    .line 26
    const/4 v2, -0x1

    .local v2, "insetLeft":I
    const/4 v3, -0x1

    .local v3, "insetRight":I
    const/4 v4, -0x1

    .local v4, "insetTop":I
    const/4 v5, -0x1

    .line 27
    .local v5, "insetBottom":I
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_0

    .line 28
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 29
    .local v6, "inset":I
    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    .line 31
    .end local v6    # "inset":I
    :cond_0
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_left:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_left:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 34
    :cond_1
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_right:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 35
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_right:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 37
    :cond_2
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_top:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 38
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_top:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 40
    :cond_3
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_bottom:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 41
    sget v6, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_bottom:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 43
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    invoke-static {p0, v2, v4, v3, v5}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    .line 46
    .end local v2    # "insetLeft":I
    .end local v3    # "insetRight":I
    .end local v4    # "insetTop":I
    .end local v5    # "insetBottom":I
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    const/4 v2, 0x0

    return-object v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 112
    const-string v0, "xpui-bgPadding"

    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    return-void
.end method

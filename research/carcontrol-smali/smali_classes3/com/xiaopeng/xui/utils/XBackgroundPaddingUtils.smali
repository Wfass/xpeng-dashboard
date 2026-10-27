.class public Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;
.super Ljava/lang/Object;
.source "XBackgroundPaddingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    .line 56
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "insetLeft %s, insetTop %s, insetRight %s, insetBottom %s, "

    .line 55
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->log(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    new-array v11, v1, [Ljava/lang/Object;

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v7

    const-string v12, "paddingLeft %s, paddingRight %s, paddingTop %s, paddingBottom %s, "

    .line 63
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 69
    instance-of v11, v2, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v11, :cond_4

    .line 70
    check-cast v2, Landroid/graphics/drawable/InsetDrawable;

    .line 71
    invoke-virtual {v2}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 72
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 73
    invoke-virtual {v2, v13}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    const/4 v2, -0x1

    move/from16 v14, p1

    if-ne v14, v2, :cond_0

    .line 75
    iget v14, v13, Landroid/graphics/Rect;->left:I

    :cond_0
    move/from16 v15, p2

    if-ne v15, v2, :cond_1

    .line 78
    iget v15, v13, Landroid/graphics/Rect;->top:I

    :cond_1
    move/from16 v7, p3

    if-ne v7, v2, :cond_2

    .line 81
    iget v7, v13, Landroid/graphics/Rect;->right:I

    :cond_2
    move/from16 v6, p4

    if-ne v6, v2, :cond_3

    .line 84
    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    move v2, v6

    .line 86
    :goto_0
    iget v6, v13, Landroid/graphics/Rect;->left:I

    sub-int v6, v14, v6

    .line 87
    iget v5, v13, Landroid/graphics/Rect;->top:I

    sub-int v5, v15, v5

    .line 88
    iget v4, v13, Landroid/graphics/Rect;->right:I

    sub-int v4, v7, v4

    .line 89
    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v2, v13

    move-object/from16 v26, v12

    goto :goto_1

    :cond_4
    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v7, p3

    move/from16 v6, p4

    move-object v11, v2

    move v2, v6

    move-object/from16 v26, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_1
    new-array v12, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v19, 0x0

    aput-object v20, v12, v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v18, 0x1

    aput-object v20, v12, v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v17, 0x2

    aput-object v20, v12, v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x3

    aput-object v20, v12, v16

    const-string v1, "paddingLeftOffset %s, paddingTopOffset %s, paddingRightOffset %s, paddingBottomOffset %s, "

    .line 94
    invoke-static {v1, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->log(Ljava/lang/String;)V

    .line 96
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v20, v1

    move-object/from16 v21, v11

    move/from16 v22, v14

    move/from16 v23, v15

    move/from16 v24, v7

    move/from16 v25, v2

    invoke-direct/range {v20 .. v25}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/2addr v3, v6

    add-int/2addr v9, v5

    add-int/2addr v8, v4

    add-int/2addr v10, v13

    .line 99
    invoke-virtual {v0, v3, v9, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    move-object/from16 v0, v26

    .line 104
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->log(Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v14, v15, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static backgroundPadding(Landroid/view/View;Landroid/util/AttributeSet;)Landroid/graphics/Rect;
    .locals 6

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 25
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_enable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 30
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v2, v0

    move v3, v2

    move v4, v3

    .line 33
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_left:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    sget v0, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_left:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 36
    :cond_1
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_right:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_right:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 39
    :cond_2
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_top:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 40
    sget v3, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_top:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 42
    :cond_3
    sget v5, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_bottom:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    sget v4, Lcom/xiaopeng/xpui/R$styleable;->XBackgroundPadding_x_bg_padding_bottom:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 45
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-static {p0, v0, v3, v2, v4}, Lcom/xiaopeng/xui/utils/XBackgroundPaddingUtils;->backgroundPadding(Landroid/view/View;IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 48
    :cond_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "xpui-bgPadding"

    .line 114
    invoke-static {v0, p0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

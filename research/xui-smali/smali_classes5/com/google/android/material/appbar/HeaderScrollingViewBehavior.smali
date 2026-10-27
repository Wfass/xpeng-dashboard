.class abstract Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;
.super Lcom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private overlayTop:I

.field final tempRect1:Landroid/graphics/Rect;

.field final tempRect2:Landroid/graphics/Rect;

.field private verticalLayoutGap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 51
    return-void
.end method

.method private static resolveGravity(I)I
    .locals 1
    .param p0, "gravity"    # I

    .line 178
    if-nez p0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method final getOverlapPixelsForOffset(Landroid/view/View;)I
    .locals 3
    .param p1, "header"    # Landroid/view/View;

    .line 172
    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapRatioForOffset(Landroid/view/View;)F

    move-result v0

    iget v2, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    invoke-static {v0, v1, v2}, Lcom/google/android/material/math/MathUtils;->constrain(III)I

    move-result v1

    .line 172
    :goto_0
    return v1
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final getOverlayTop()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method final getVerticalLayoutGap()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    return v0
.end method

.method protected layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 15
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    move-object v1, p0

    .line 109
    invoke-virtual/range {p1 .. p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "header":Landroid/view/View;
    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 113
    nop

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 115
    .local v4, "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v11, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect1:Landroid/graphics/Rect;

    .line 116
    .local v11, "available":Landroid/graphics/Rect;
    nop

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v5

    iget v6, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    .line 118
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    .line 116
    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    const/4 v5, 0x0

    .line 125
    .local v5, "parentInsetsReflection":Landroidx/core/view/WindowInsetsCompat;
    :try_start_0
    const-class v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v7, "getLastWindowInsets"

    new-array v8, v0, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 126
    .local v6, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    new-array v0, v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v12, p1

    :try_start_1
    invoke-virtual {v6, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/WindowInsetsCompat;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v0

    .line 134
    .end local v6    # "method":Ljava/lang/reflect/Method;
    goto :goto_5

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    goto :goto_1

    .line 128
    :catch_2
    move-exception v0

    goto :goto_2

    .line 132
    :catch_3
    move-exception v0

    move-object/from16 v12, p1

    .line 133
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_4

    .line 130
    :catch_4
    move-exception v0

    move-object/from16 v12, p1

    .line 131
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_3

    .line 128
    :catch_5
    move-exception v0

    move-object/from16 v12, p1

    .line 129
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_3
    nop

    .line 136
    :goto_4
    move-object v0, v5

    .end local v5    # "parentInsetsReflection":Landroidx/core/view/WindowInsetsCompat;
    .local v0, "parentInsetsReflection":Landroidx/core/view/WindowInsetsCompat;
    :goto_5
    move-object v13, v0

    .line 137
    .local v13, "parentInsets":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v13, :cond_0

    .line 138
    invoke-static/range {p1 .. p1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 139
    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 143
    iget v5, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Rect;->left:I

    .line 144
    iget v5, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v13}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v11, Landroid/graphics/Rect;->right:I

    .line 147
    :cond_0
    iget-object v14, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->tempRect2:Landroid/graphics/Rect;

    .line 148
    .local v14, "out":Landroid/graphics/Rect;
    iget v5, v4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 149
    invoke-static {v5}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->resolveGravity(I)I

    move-result v5

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 148
    move-object v8, v11

    move-object v9, v14

    move/from16 v10, p3

    invoke-static/range {v5 .. v10}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 156
    invoke-virtual {v1, v3}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result v5

    .line 158
    .local v5, "overlap":I
    iget v6, v14, Landroid/graphics/Rect;->left:I

    iget v7, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    iget v8, v14, Landroid/graphics/Rect;->right:I

    iget v9, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v5

    move-object/from16 v10, p2

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 159
    iget v6, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 160
    .end local v0    # "parentInsetsReflection":Landroidx/core/view/WindowInsetsCompat;
    .end local v4    # "lp":Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "overlap":I
    .end local v11    # "available":Landroid/graphics/Rect;
    .end local v13    # "parentInsets":Landroidx/core/view/WindowInsetsCompat;
    .end local v14    # "out":Landroid/graphics/Rect;
    goto :goto_6

    .line 162
    :cond_1
    move-object/from16 v12, p1

    move-object/from16 v10, p2

    invoke-super/range {p0 .. p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 163
    iput v0, v1, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->verticalLayoutGap:I

    .line 165
    :goto_6
    return-void
.end method

.method public onMeasureChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 15
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I

    move-object v0, p0

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    .local v1, "childLpHeight":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    move-object/from16 v5, p2

    goto :goto_2

    .line 67
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 68
    .local v3, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/view/View;

    move-result-object v4

    .line 69
    .local v4, "header":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 70
    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 73
    move-object/from16 v5, p2

    invoke-static {v5, v6}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 75
    invoke-static/range {p2 .. p2}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->requestLayout()V

    .line 78
    return v6

    .line 82
    :cond_2
    move-object/from16 v5, p2

    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 83
    .local v7, "availableHeight":I
    if-nez v7, :cond_4

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v7

    .line 88
    .end local v7    # "availableHeight":I
    .local v13, "availableHeight":I
    :cond_4
    move v13, v7

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v13, v7

    invoke-virtual {v0, v4}, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result v8

    add-int v14, v7, v8

    .line 89
    .local v14, "height":I
    if-ne v1, v2, :cond_5

    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_1

    :cond_5
    const/high16 v2, -0x80000000

    .line 90
    :goto_1
    invoke-static {v14, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 97
    .local v2, "heightMeasureSpec":I
    move-object/from16 v7, p1

    move-object v8, v5

    move/from16 v9, p3

    move/from16 v10, p4

    move v11, v2

    move/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 100
    return v6

    .line 103
    .end local v2    # "heightMeasureSpec":I
    .end local v3    # "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v4    # "header":Landroid/view/View;
    .end local v13    # "availableHeight":I
    .end local v14    # "height":I
    :goto_2
    const/4 v2, 0x0

    return v2
.end method

.method public final setOverlayTop(I)V
    .locals 0
    .param p1, "overlayTop"    # I

    .line 201
    iput p1, p0, Lcom/google/android/material/appbar/HeaderScrollingViewBehavior;->overlayTop:I

    .line 202
    return-void
.end method

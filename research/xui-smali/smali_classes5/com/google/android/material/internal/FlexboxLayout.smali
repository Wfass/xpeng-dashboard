.class public Lcom/google/android/material/internal/FlexboxLayout;
.super Landroid/view/ViewGroup;
.source "FlexboxLayout.java"

# interfaces
.implements Lcom/google/android/material/internal/FlexContainer;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;,
        Lcom/google/android/material/internal/FlexboxLayout$DividerMode;
    }
.end annotation


# static fields
.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I


# instance fields
.field private dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dividerDrawableVertical:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dividerHorizontalHeight:I

.field private dividerVerticalWidth:I

.field private flexLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

.field private flexWrap:I

.field private flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

.field private orderCache:Landroid/util/SparseIntArray;

.field private reorderedIndices:[I

.field private showDividerHorizontal:I

.field private showDividerVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 159
    new-instance v0, Lcom/google/android/material/internal/FlexboxHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/FlexboxHelper;-><init>(Lcom/google/android/material/internal/FlexContainer;)V

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    .line 179
    return-void
.end method

.method private allFlexLinesAreDummyBefore(I)Z
    .locals 3
    .param p1, "flexLineIndex"    # I

    .line 898
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 899
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    invoke-virtual {v2}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_0

    .line 900
    return v0

    .line 898
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private allViewsAreGoneBefore(II)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "indexInFlexLine"    # I

    .line 863
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 864
    sub-int v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 865
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 866
    const/4 v0, 0x0

    return v0

    .line 863
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private drawDividersHorizontal(Landroid/graphics/Canvas;Z)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "isRtl"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingLeft()I

    move-result v2

    .line 502
    .local v2, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingRight()I

    move-result v3

    .line 503
    .local v3, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 504
    .local v4, "horizontalDividerLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v6, v7, :cond_8

    .line 505
    iget-object v8, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/internal/FlexLine;

    .line 506
    .local v8, "flexLine":Lcom/google/android/material/internal/FlexLine;
    move v9, v5

    .local v9, "j":I
    :goto_1
    iget v10, v8, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    if-ge v9, v10, :cond_5

    .line 507
    iget v10, v8, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v10, v9

    .line 508
    .local v10, "viewIndex":I
    invoke-virtual {v0, v10}, Lcom/google/android/material/internal/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 509
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    .line 510
    goto :goto_4

    .line 512
    :cond_0
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    .line 515
    .local v12, "lp":Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
    invoke-direct {v0, v10, v9}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 517
    if-eqz p2, :cond_1

    .line 518
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v13

    iget v14, v12, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    .local v13, "dividerLeft":I
    goto :goto_2

    .line 520
    .end local v13    # "dividerLeft":I
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v13

    iget v14, v12, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v13, v14

    iget v14, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    sub-int/2addr v13, v14

    .line 523
    .restart local v13    # "dividerLeft":I
    :goto_2
    iget v14, v8, Lcom/google/android/material/internal/FlexLine;->top:I

    iget v5, v8, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-direct {v0, v1, v13, v14, v5}, Lcom/google/android/material/internal/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 527
    .end local v13    # "dividerLeft":I
    :cond_2
    iget v5, v8, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v9, v5, :cond_4

    .line 528
    iget v5, v0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_4

    .line 530
    if-eqz p2, :cond_3

    .line 531
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v13, v12, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v13

    iget v13, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    sub-int/2addr v5, v13

    .local v5, "dividerLeft":I
    goto :goto_3

    .line 533
    .end local v5    # "dividerLeft":I
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v5

    iget v13, v12, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v13

    .line 536
    .restart local v5    # "dividerLeft":I
    :goto_3
    iget v13, v8, Lcom/google/android/material/internal/FlexLine;->top:I

    iget v14, v8, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-direct {v0, v1, v5, v13, v14}, Lcom/google/android/material/internal/FlexboxLayout;->drawVerticalDivider(Landroid/graphics/Canvas;III)V

    .line 506
    .end local v5    # "dividerLeft":I
    .end local v10    # "viewIndex":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "lp":Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto :goto_1

    .line 542
    .end local v9    # "j":I
    :cond_5
    invoke-direct {v0, v6}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 543
    iget v5, v8, Lcom/google/android/material/internal/FlexLine;->top:I

    iget v9, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    sub-int/2addr v5, v9

    .line 544
    .local v5, "horizontalDividerTop":I
    invoke-direct {v0, v1, v2, v5, v4}, Lcom/google/android/material/internal/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 547
    .end local v5    # "horizontalDividerTop":I
    :cond_6
    invoke-direct {v0, v6}, Lcom/google/android/material/internal/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 548
    iget v5, v0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_7

    .line 549
    iget v5, v8, Lcom/google/android/material/internal/FlexLine;->bottom:I

    .line 550
    .restart local v5    # "horizontalDividerTop":I
    invoke-direct {v0, v1, v2, v5, v4}, Lcom/google/android/material/internal/FlexboxLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;III)V

    .line 504
    .end local v5    # "horizontalDividerTop":I
    .end local v8    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 554
    .end local v6    # "i":I
    .end local v7    # "size":I
    :cond_8
    return-void
.end method

.method private drawHorizontalDivider(Landroid/graphics/Canvas;III)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "length"    # I

    .line 565
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 566
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    add-int v1, p2, p4

    iget v2, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 569
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 570
    return-void
.end method

.method private drawVerticalDivider(Landroid/graphics/Canvas;III)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "length"    # I

    .line 557
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 558
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v1, p2

    add-int v2, p3, p4

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 561
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 562
    return-void
.end method

.method private hasDividerBeforeChildAtAlongMainAxis(II)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "indexInFlexLine"    # I

    .line 847
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlexboxLayout;->allViewsAreGoneBefore(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 848
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 851
    :cond_1
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1

    .line 854
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 855
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1

    .line 857
    :cond_5
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    move v1, v2

    nop

    :cond_6
    return v1
.end method

.method private hasDividerBeforeFlexLine(I)Z
    .locals 3
    .param p1, "flexLineIndex"    # I

    .line 879
    const/4 v0, 0x0

    if-ltz p1, :cond_8

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->allFlexLinesAreDummyBefore(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 883
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 884
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 886
    :cond_2
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0

    .line 889
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 890
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    move v0, v2

    nop

    :cond_5
    return v0

    .line 892
    :cond_6
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    move v0, v2

    nop

    :cond_7
    return v0

    .line 880
    :cond_8
    :goto_0
    return v0
.end method

.method private hasEndDividerAfterFlexLine(I)Z
    .locals 3
    .param p1, "flexLineIndex"    # I

    .line 913
    const/4 v0, 0x0

    if-ltz p1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 917
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 918
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    invoke-virtual {v2}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v2

    if-lez v2, :cond_1

    .line 919
    return v0

    .line 917
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 923
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0

    .line 925
    :cond_4
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    move v0, v2

    nop

    :cond_5
    return v0

    .line 914
    :cond_6
    :goto_1
    return v0
.end method

.method private layoutHorizontal(ZII)V
    .locals 25
    .param p1, "isRtl"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    move-object/from16 v0, p0

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingLeft()I

    move-result v1

    .line 402
    .local v1, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingRight()I

    move-result v2

    .line 405
    .local v2, "paddingRight":I
    sub-int v4, p3, p2

    .line 407
    .local v4, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingTop()I

    move-result v5

    .line 411
    .local v5, "childTop":I
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v6, v7, :cond_8

    .line 412
    iget-object v8, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/internal/FlexLine;

    .line 413
    .local v8, "flexLine":Lcom/google/android/material/internal/FlexLine;
    invoke-direct {v0, v6}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 414
    iget v9, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v5, v9

    .line 416
    :cond_0
    const/4 v9, 0x0

    .line 417
    .local v9, "spaceBetweenItem":F
    int-to-float v10, v1

    .line 418
    .local v10, "childLeft":F
    sub-int v11, v4, v2

    int-to-float v11, v11

    .line 419
    .local v11, "childRight":F
    const/4 v12, 0x0

    invoke-static {v9, v12}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 421
    .end local v9    # "spaceBetweenItem":F
    .local v15, "spaceBetweenItem":F
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    move v13, v9

    .end local v9    # "j":I
    .local v13, "j":I
    iget v9, v8, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    if-ge v13, v9, :cond_7

    .line 422
    iget v9, v8, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int v12, v9, v13

    .line 423
    .local v12, "index":I
    invoke-virtual {v0, v12}, Lcom/google/android/material/internal/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 424
    .local v9, "child":Landroid/view/View;
    if-eqz v9, :cond_6

    move/from16 v16, v1

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    .end local v1    # "paddingLeft":I
    .local v16, "paddingLeft":I
    move/from16 v17, v2

    const/16 v2, 0x8

    .end local v2    # "paddingRight":I
    .local v17, "paddingRight":I
    if-ne v1, v2, :cond_1

    .line 425
    nop

    .line 421
    move/from16 v23, v13

    goto/16 :goto_5

    .line 427
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    .line 428
    .local v1, "lp":Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
    iget v2, v1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v2, v2

    add-float/2addr v10, v2

    .line 429
    iget v2, v1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v2, v2

    sub-float/2addr v11, v2

    .line 430
    const/4 v2, 0x0

    .line 431
    .local v2, "beforeDividerLength":I
    const/4 v14, 0x0

    .line 432
    .local v14, "endDividerLength":I
    invoke-direct {v0, v12, v13}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 433
    iget v2, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    .line 434
    int-to-float v3, v2

    add-float/2addr v10, v3

    .line 435
    int-to-float v3, v2

    sub-float/2addr v11, v3

    .line 437
    .end local v10    # "childLeft":F
    .end local v11    # "childRight":F
    .local v2, "childRight":F
    .local v3, "childLeft":F
    .local v18, "beforeDividerLength":I
    :cond_2
    move/from16 v18, v2

    move v3, v10

    move v2, v11

    iget v10, v8, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    add-int/lit8 v10, v10, -0x1

    if-ne v13, v10, :cond_3

    iget v10, v0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v10, v10, 0x4

    if-lez v10, :cond_3

    .line 438
    iget v10, v0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    .line 441
    .end local v14    # "endDividerLength":I
    .local v10, "endDividerLength":I
    move/from16 v19, v10

    goto :goto_2

    .end local v10    # "endDividerLength":I
    .restart local v14    # "endDividerLength":I
    :cond_3
    move/from16 v19, v14

    .end local v14    # "endDividerLength":I
    .local v19, "endDividerLength":I
    :goto_2
    if-eqz p1, :cond_4

    .line 442
    iget-object v10, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    .line 444
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v11, v14

    .line 446
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 447
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v20, v5, v20

    .line 442
    move-object/from16 v21, v9

    move-object v9, v10

    .end local v9    # "child":Landroid/view/View;
    .local v21, "child":Landroid/view/View;
    move-object/from16 v10, v21

    move/from16 v22, v12

    move v12, v5

    .end local v12    # "index":I
    .local v22, "index":I
    move/from16 v23, v13

    move v13, v14

    .end local v13    # "j":I
    .local v23, "j":I
    move/from16 v14, v20

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/internal/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;IIII)V

    .line 456
    move-object/from16 v0, v21

    goto :goto_3

    .line 449
    .end local v21    # "child":Landroid/view/View;
    .end local v22    # "index":I
    .end local v23    # "j":I
    .restart local v9    # "child":Landroid/view/View;
    .restart local v12    # "index":I
    .restart local v13    # "j":I
    :cond_4
    move-object/from16 v21, v9

    move/from16 v22, v12

    move/from16 v23, v13

    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "index":I
    .end local v13    # "j":I
    .restart local v21    # "child":Landroid/view/View;
    .restart local v22    # "index":I
    .restart local v23    # "j":I
    iget-object v9, v0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    .line 451
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 453
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object/from16 v13, v21

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .end local v21    # "child":Landroid/view/View;
    .local v13, "child":Landroid/view/View;
    add-int v14, v10, v12

    .line 454
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int v20, v5, v10

    .line 449
    move-object v10, v13

    move v12, v5

    move-object v0, v13

    move v13, v14

    .end local v13    # "child":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    move/from16 v14, v20

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/internal/FlexboxHelper;->layoutSingleChildHorizontal(Landroid/view/View;IIII)V

    .line 456
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v15

    iget v10, v1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->rightMargin:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v3, v9

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v15

    iget v10, v1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;->leftMargin:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    sub-float/2addr v2, v9

    .line 459
    if-eqz p1, :cond_5

    .line 460
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v9, v8

    move-object v10, v0

    move/from16 v11, v19

    move/from16 v13, v18

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/internal/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    goto :goto_4

    .line 467
    :cond_5
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v9, v8

    move-object v10, v0

    move/from16 v11, v18

    move/from16 v13, v19

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/material/internal/FlexLine;->updatePositionFromView(Landroid/view/View;IIII)V

    .line 421
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "lp":Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
    .end local v18    # "beforeDividerLength":I
    .end local v19    # "endDividerLength":I
    .end local v22    # "index":I
    :goto_4
    move v11, v2

    move v10, v3

    goto :goto_5

    .end local v3    # "childLeft":F
    .end local v16    # "paddingLeft":I
    .end local v17    # "paddingRight":I
    .end local v23    # "j":I
    .local v1, "paddingLeft":I
    .local v2, "paddingRight":I
    .local v10, "childLeft":F
    .restart local v11    # "childRight":F
    .local v13, "j":I
    :cond_6
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v23, v13

    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v13    # "j":I
    .restart local v16    # "paddingLeft":I
    .restart local v17    # "paddingRight":I
    .restart local v23    # "j":I
    :goto_5
    add-int/lit8 v9, v23, 0x1

    .end local v23    # "j":I
    .local v9, "j":I
    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 475
    .end local v9    # "j":I
    .end local v16    # "paddingLeft":I
    .end local v17    # "paddingRight":I
    .restart local v1    # "paddingLeft":I
    .restart local v2    # "paddingRight":I
    :cond_7
    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .restart local v16    # "paddingLeft":I
    .restart local v17    # "paddingRight":I
    iget v0, v8, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int/2addr v5, v0

    .line 411
    .end local v8    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .end local v15    # "spaceBetweenItem":F
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 477
    .end local v6    # "i":I
    .end local v7    # "size":I
    .end local v10    # "childLeft":F
    .end local v11    # "childRight":F
    .end local v16    # "paddingLeft":I
    .end local v17    # "paddingRight":I
    .restart local v1    # "paddingLeft":I
    .restart local v2    # "paddingRight":I
    :cond_8
    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .restart local v16    # "paddingLeft":I
    .restart local v17    # "paddingRight":I
    return-void
.end method

.method private measureHorizontal(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 247
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0}, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->reset()V

    .line 250
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/material/internal/FlexboxHelper;->calculateHorizontalFlexLines(Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;II)V

    .line 252
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    iget-object v0, v0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->flexLines:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    .line 254
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/internal/FlexboxHelper;->determineMainSize(II)V

    .line 256
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/google/android/material/internal/FlexboxHelper;->determineCrossSize(II)V

    .line 259
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/FlexboxHelper;->stretchViews()V

    .line 260
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLinesResult:Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;

    iget v0, v0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->childState:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlexboxLayout;->setMeasuredDimensionForFlex(III)V

    .line 261
    return-void
.end method

.method private setMeasuredDimensionForFlex(III)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "childState"    # I

    .line 273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 274
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 275
    .local v1, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 276
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 277
    .local v3, "heightSize":I
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getSumOfCrossSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 278
    .local v4, "calculatedMaxHeight":I
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getLargestMainSize()I

    move-result v5

    .line 281
    .local v5, "calculatedMaxWidth":I
    const/high16 v6, 0x1000000

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eq v0, v8, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v7, :cond_1

    .line 283
    if-ge v1, v5, :cond_0

    .line 284
    invoke-static {p3, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    .line 286
    :cond_0
    invoke-static {v1, p1, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    .line 287
    .local v6, "widthSizeAndState":I
    goto :goto_1

    .line 305
    .end local v6    # "widthSizeAndState":I
    :cond_1
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown width mode is set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 300
    :cond_2
    nop

    .line 301
    invoke-static {v5, p1, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    .line 302
    .restart local v6    # "widthSizeAndState":I
    goto :goto_1

    .line 290
    .end local v6    # "widthSizeAndState":I
    :cond_3
    if-ge v1, v5, :cond_4

    .line 291
    invoke-static {p3, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    goto :goto_0

    .line 293
    :cond_4
    move v1, v5

    .line 295
    :goto_0
    invoke-static {v1, p1, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    .line 296
    .restart local v6    # "widthSizeAndState":I
    nop

    .line 305
    :goto_1
    nop

    .line 308
    const/16 v9, 0x100

    if-eq v2, v8, :cond_8

    if-eqz v2, :cond_7

    if-ne v2, v7, :cond_6

    .line 310
    if-ge v3, v4, :cond_5

    .line 311
    nop

    .line 312
    invoke-static {p3, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    .line 315
    :cond_5
    invoke-static {v3, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 316
    .local v7, "heightSizeAndState":I
    goto :goto_3

    .line 336
    .end local v7    # "heightSizeAndState":I
    :cond_6
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown height mode is set: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 331
    :cond_7
    nop

    .line 332
    invoke-static {v4, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 333
    .restart local v7    # "heightSizeAndState":I
    goto :goto_3

    .line 319
    .end local v7    # "heightSizeAndState":I
    :cond_8
    if-ge v3, v4, :cond_9

    .line 320
    nop

    .line 321
    invoke-static {p3, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result p3

    goto :goto_2

    .line 324
    :cond_9
    move v3, v4

    .line 326
    :goto_2
    invoke-static {v3, p2, p3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 327
    .restart local v7    # "heightSizeAndState":I
    nop

    .line 336
    :goto_3
    nop

    .line 338
    invoke-virtual {p0, v6, v7}, Lcom/google/android/material/internal/FlexboxLayout;->setMeasuredDimension(II)V

    .line 339
    return-void
.end method

.method private setWillNotDrawFlag()V
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/FlexboxLayout;->setWillNotDraw(Z)V

    goto :goto_0

    .line 835
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/FlexboxLayout;->setWillNotDraw(Z)V

    .line 837
    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 226
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/material/internal/FlexboxHelper;->createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->reorderedIndices:[I

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 574
    instance-of v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 584
    instance-of v0, p1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 585
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;)V

    return-object v0

    .line 586
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 587
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 589
    :cond_1
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 579
    new-instance v0, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/internal/FlexboxLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getChildHeightMeasureSpec(III)I
    .locals 1
    .param p1, "heightSpec"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I

    .line 676
    invoke-static {p1, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v0

    return v0
.end method

.method public getChildWidthMeasureSpec(III)I
    .locals 1
    .param p1, "widthSpec"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I

    .line 671
    invoke-static {p1, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->getChildMeasureSpec(III)I

    move-result v0

    return v0
.end method

.method public getDecorationLengthCrossAxis(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public getDecorationLengthMainAxis(Landroid/view/View;II)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "indexInFlexLine"    # I

    .line 626
    const/4 v0, 0x0

    .line 627
    .local v0, "decorationLength":I
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v1

    .line 631
    :cond_0
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_3

    .line 632
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 635
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v1

    .line 638
    :cond_2
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_3

    .line 639
    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v1

    .line 642
    :cond_3
    :goto_0
    return v0
.end method

.method public getDividerDrawableHorizontal()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerDrawableVertical()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFlexItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 196
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getFlexLines()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;"
        }
    .end annotation

    .line 614
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 615
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    .line 616
    .local v2, "flexLine":Lcom/google/android/material/internal/FlexLine;
    invoke-virtual {v2}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v3

    if-nez v3, :cond_0

    .line 617
    goto :goto_0

    .line 619
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v2    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    goto :goto_0

    .line 621
    :cond_1
    return-object v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 595
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexWrap:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 4

    .line 343
    const/high16 v0, -0x80000000

    .line 344
    .local v0, "largestSize":I
    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/FlexLine;

    .line 345
    .local v2, "flexLine":Lcom/google/android/material/internal/FlexLine;
    iget v3, v2, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 346
    .end local v2    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    goto :goto_0

    .line 347
    :cond_0
    return v0
.end method

.method public getReorderedChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 213
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->reorderedIndices:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->reorderedIndices:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/FlexboxLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 214
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReorderedFlexItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 221
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->getReorderedChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSumOfCrossSize()I
    .locals 5

    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "sum":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 354
    iget-object v3, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/FlexLine;

    .line 357
    .local v3, "flexLine":Lcom/google/android/material/internal/FlexLine;
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    iget v4, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v4

    goto :goto_1

    .line 361
    :cond_0
    iget v4, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v4

    .line 366
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/FlexboxLayout;->hasEndDividerAfterFlexLine(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 367
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    iget v4, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v4

    goto :goto_2

    .line 370
    :cond_2
    iget v4, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v4

    .line 373
    :cond_3
    :goto_2
    iget v4, v3, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int/2addr v0, v4

    .line 353
    .end local v3    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_4
    return v0
.end method

.method public isMainAxisDirectionHorizontal()Z
    .locals 1

    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 481
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 482
    return-void

    .line 484
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    if-nez v0, :cond_1

    .line 485
    return-void

    .line 488
    :cond_1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 489
    .local v0, "layoutDirection":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 490
    .local v1, "isRtl":Z
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/internal/FlexboxLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;Z)V

    .line 491
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 385
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 386
    .local v0, "layoutDirection":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 387
    .local v1, "isRtl":Z
    :goto_0
    invoke-direct {p0, v1, p2, p4}, Lcom/google/android/material/internal/FlexboxLayout;->layoutHorizontal(ZII)V

    .line 388
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 183
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/FlexboxHelper;->isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexboxHelper:Lcom/google/android/material/internal/FlexboxHelper;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->orderCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/FlexboxHelper;->createReorderedIndices(Landroid/util/SparseIntArray;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->reorderedIndices:[I

    .line 191
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/internal/FlexboxLayout;->measureHorizontal(II)V

    .line 192
    return-void
.end method

.method public onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/material/internal/FlexLine;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "indexInFlexLine"    # I
    .param p4, "flexLine"    # Lcom/google/android/material/internal/FlexLine;

    .line 682
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/FlexboxLayout;->hasDividerBeforeChildAtAlongMainAxis(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget v0, p4, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 685
    iget v0, p4, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    goto :goto_0

    .line 687
    :cond_0
    iget v0, p4, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 688
    iget v0, p4, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p4, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    .line 691
    :cond_1
    :goto_0
    return-void
.end method

.method public onNewFlexLineAdded(Lcom/google/android/material/internal/FlexLine;)V
    .locals 2
    .param p1, "flexLine"    # Lcom/google/android/material/internal/FlexLine;

    .line 656
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->isMainAxisDirectionHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 658
    iget v0, p1, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 659
    iget v0, p1, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    goto :goto_0

    .line 662
    :cond_0
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_1

    .line 663
    iget v0, p1, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 664
    iget v0, p1, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    iget v1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    .line 667
    :cond_1
    :goto_0
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 738
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V

    .line 740
    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 751
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 752
    return-void

    .line 754
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableHorizontal:Landroid/graphics/drawable/Drawable;

    .line 755
    if-eqz p1, :cond_1

    .line 756
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    goto :goto_0

    .line 758
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerHorizontalHeight:I

    .line 760
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/internal/FlexboxLayout;->setWillNotDrawFlag()V

    .line 761
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    .line 762
    return-void
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 773
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 774
    return-void

    .line 776
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerDrawableVertical:Landroid/graphics/drawable/Drawable;

    .line 777
    if-eqz p1, :cond_1

    .line 778
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    goto :goto_0

    .line 780
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->dividerVerticalWidth:I

    .line 782
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/internal/FlexboxLayout;->setWillNotDrawFlag()V

    .line 783
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    .line 784
    return-void
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 695
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexLines:Ljava/util/List;

    .line 696
    return-void
.end method

.method public setFlexWrap(I)V
    .locals 1
    .param p1, "flexWrap"    # I

    .line 600
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexWrap:I

    if-eq v0, p1, :cond_0

    .line 601
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->flexWrap:I

    .line 602
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    .line 604
    :cond_0
    return-void
.end method

.method public setShowDivider(I)V
    .locals 0
    .param p1, "dividerMode"    # I

    .line 797
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setShowDividerVertical(I)V

    .line 798
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/FlexboxLayout;->setShowDividerHorizontal(I)V

    .line 799
    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .param p1, "dividerMode"    # I

    .line 825
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    if-eq p1, v0, :cond_0

    .line 826
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerHorizontal:I

    .line 827
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    .line 829
    :cond_0
    return-void
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .param p1, "dividerMode"    # I

    .line 810
    iget v0, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    if-eq p1, v0, :cond_0

    .line 811
    iput p1, p0, Lcom/google/android/material/internal/FlexboxLayout;->showDividerVertical:I

    .line 812
    invoke-virtual {p0}, Lcom/google/android/material/internal/FlexboxLayout;->requestLayout()V

    .line 814
    :cond_0
    return-void
.end method

.method public updateViewCache(ILandroid/view/View;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 706
    return-void
.end method

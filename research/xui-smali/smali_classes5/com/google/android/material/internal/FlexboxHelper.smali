.class Lcom/google/android/material/internal/FlexboxHelper;
.super Ljava/lang/Object;
.source "FlexboxHelper.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;,
        Lcom/google/android/material/internal/FlexboxHelper$Order;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0xa


# instance fields
.field private childrenFrozen:[Z

.field private final flexContainer:Lcom/google/android/material/internal/FlexContainer;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/FlexContainer;)V
    .locals 0
    .param p1, "flexContainer"    # Lcom/google/android/material/internal/FlexContainer;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 55
    return-void
.end method

.method private addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V
    .locals 1
    .param p2, "flexLine"    # Lcom/google/android/material/internal/FlexLine;
    .param p3, "viewIndex"    # I
    .param p4, "usedCrossSizeSoFar"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;",
            "Lcom/google/android/material/internal/FlexLine;",
            "II)V"
        }
    .end annotation

    .line 694
    .local p1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    iput p4, p2, Lcom/google/android/material/internal/FlexLine;->sumCrossSizeBefore:I

    .line 695
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0, p2}, Lcom/google/android/material/internal/FlexContainer;->onNewFlexLineAdded(Lcom/google/android/material/internal/FlexLine;)V

    .line 696
    iput p3, p2, Lcom/google/android/material/internal/FlexLine;->lastIndex:I

    .line 697
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    return-void
.end method

.method private calculateFlexLines(Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V
    .locals 37
    .param p1, "result"    # Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;
    .param p2, "mainMeasureSpec"    # I
    .param p3, "crossMeasureSpec"    # I
    .param p4, "needsCalcAmount"    # I
    .param p5, "fromIndex"    # I
    .param p6, "toIndex"    # I
    .param p7    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexLine;",
            ">;)V"
        }
    .end annotation

    .local p7, "existingLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p6

    .line 208
    iget-object v0, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->isMainAxisDirectionHorizontal()Z

    move-result v14

    .line 210
    .local v14, "isMainHorizontal":Z
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 211
    .local v15, "mainMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 213
    .local v8, "mainSize":I
    const/4 v0, 0x0

    .line 216
    .local v0, "childState":I
    if-nez p7, :cond_0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    goto :goto_0

    .line 219
    .end local v1    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    :cond_0
    move-object/from16 v1, p7

    .restart local v1    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    :goto_0
    move-object v7, v1

    .line 222
    .end local v1    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    iput-object v7, v10, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->flexLines:Ljava/util/List;

    .line 224
    const/4 v6, -0x1

    if-ne v13, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 226
    .local v1, "reachedToIndex":Z
    :goto_1
    invoke-direct {v9, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getPaddingStartMain(Z)I

    move-result v16

    .line 227
    .local v16, "mainPaddingStart":I
    invoke-direct {v9, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getPaddingEndMain(Z)I

    move-result v17

    .line 228
    .local v17, "mainPaddingEnd":I
    invoke-direct {v9, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getPaddingStartCross(Z)I

    move-result v18

    .line 229
    .local v18, "crossPaddingStart":I
    invoke-direct {v9, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getPaddingEndCross(Z)I

    move-result v19

    .line 231
    .local v19, "crossPaddingEnd":I
    const/high16 v2, -0x80000000

    .line 234
    .local v2, "largestSizeInCross":I
    const/4 v3, 0x0

    .line 237
    .local v3, "sumCrossSize":I
    const/16 v20, 0x0

    .line 239
    .local v20, "indexInFlexLine":I
    new-instance v6, Lcom/google/android/material/internal/FlexLine;

    invoke-direct {v6}, Lcom/google/android/material/internal/FlexLine;-><init>()V

    .line 240
    .local v6, "flexLine":Lcom/google/android/material/internal/FlexLine;
    move/from16 v5, p5

    iput v5, v6, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    .line 241
    add-int v4, v16, v17

    iput v4, v6, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 243
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v4

    .line 244
    .local v4, "childCount":I
    move/from16 v25, v1

    move/from16 v24, v2

    move v1, v0

    move v0, v5

    .end local v2    # "largestSizeInCross":I
    .local v0, "i":I
    .local v1, "childState":I
    .local v24, "largestSizeInCross":I
    .local v25, "reachedToIndex":Z
    :goto_2
    move v2, v0

    .end local v0    # "i":I
    .local v2, "i":I
    if-ge v2, v4, :cond_12

    .line 245
    iget-object v0, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0, v2}, Lcom/google/android/material/internal/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_2

    .line 248
    invoke-direct {v9, v2, v4, v6}, Lcom/google/android/material/internal/FlexboxHelper;->isLastFlexItem(IILcom/google/android/material/internal/FlexLine;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 249
    invoke-direct {v9, v7, v6, v2, v3}, Lcom/google/android/material/internal/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V

    goto :goto_3

    .line 252
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v10, 0x8

    if-ne v5, v10, :cond_4

    .line 253
    iget v5, v6, Lcom/google/android/material/internal/FlexLine;->goneItemCount:I

    const/4 v10, 0x1

    add-int/2addr v5, v10

    iput v5, v6, Lcom/google/android/material/internal/FlexLine;->goneItemCount:I

    .line 254
    iget v5, v6, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    add-int/2addr v5, v10

    iput v5, v6, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    .line 255
    invoke-direct {v9, v2, v4, v6}, Lcom/google/android/material/internal/FlexboxHelper;->isLastFlexItem(IILcom/google/android/material/internal/FlexLine;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 256
    invoke-direct {v9, v7, v6, v2, v3}, Lcom/google/android/material/internal/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V

    .line 244
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    :goto_3
    move v0, v2

    move v11, v3

    move v3, v4

    move/from16 v21, v8

    move/from16 v31, v15

    const/4 v8, -0x1

    const/16 v23, 0x1

    const/16 v27, 0x0

    move-object v15, v7

    move v7, v13

    move/from16 v13, p4

    goto/16 :goto_c

    .line 261
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/google/android/material/internal/FlexItem;

    .line 263
    .local v10, "flexItem":Lcom/google/android/material/internal/FlexItem;
    iget-object v5, v6, Lcom/google/android/material/internal/FlexLine;->indicesAlignSelfStretch:Ljava/util/List;

    move/from16 v28, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .end local v4    # "childCount":I
    .local v28, "childCount":I
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemSizeMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v4

    .line 267
    .local v4, "childMainSize":I
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getFlexBasisPercent()F

    move-result v5

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v5, v5, v26

    if-eqz v5, :cond_5

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v15, v5, :cond_5

    .line 269
    int-to-float v5, v8

    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getFlexBasisPercent()F

    move-result v26

    mul-float v5, v5, v26

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 277
    .end local v4    # "childMainSize":I
    .local v5, "childMainSize":I
    :cond_5
    move v5, v4

    if-eqz v14, :cond_6

    .line 278
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    add-int v26, v16, v17

    .line 283
    move-object/from16 v29, v7

    const/4 v7, 0x1

    invoke-direct {v9, v10, v7}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v23

    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .local v29, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    add-int v26, v26, v23

    .line 284
    invoke-direct {v9, v10, v7}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v23

    add-int v7, v26, v23

    .line 279
    invoke-interface {v4, v11, v7, v5}, Lcom/google/android/material/internal/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v4

    .line 286
    .local v4, "childMainMeasureSpec":I
    iget-object v7, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    add-int v23, v18, v19

    .line 291
    const/4 v13, 0x1

    invoke-direct {v9, v10, v13}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v26

    add-int v23, v23, v26

    .line 292
    invoke-direct {v9, v10, v13}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v26

    add-int v23, v23, v26

    move/from16 v30, v8

    add-int v8, v23, v3

    .line 294
    .end local v8    # "mainSize":I
    .local v30, "mainSize":I
    move/from16 v31, v15

    invoke-direct {v9, v10, v13}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v15

    .line 287
    .end local v15    # "mainMode":I
    .local v31, "mainMode":I
    invoke-interface {v7, v12, v8, v15}, Lcom/google/android/material/internal/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v7

    .line 295
    .local v7, "childCrossMeasureSpec":I
    invoke-virtual {v0, v4, v7}, Landroid/view/View;->measure(II)V

    .line 316
    move v15, v7

    const/4 v8, 0x0

    .end local v4    # "childMainMeasureSpec":I
    .local v7, "childMainMeasureSpec":I
    .local v15, "childCrossMeasureSpec":I
    :goto_4
    move v7, v4

    goto :goto_5

    .line 297
    .end local v29    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .end local v30    # "mainSize":I
    .end local v31    # "mainMode":I
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .restart local v8    # "mainSize":I
    .local v15, "mainMode":I
    :cond_6
    move-object/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v15

    const/4 v13, 0x1

    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .end local v8    # "mainSize":I
    .end local v15    # "mainMode":I
    .restart local v29    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .restart local v30    # "mainSize":I
    .restart local v31    # "mainMode":I
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    add-int v7, v18, v19

    .line 302
    const/4 v8, 0x0

    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v15

    add-int/2addr v7, v15

    .line 303
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v15

    add-int/2addr v7, v15

    add-int/2addr v7, v3

    .line 305
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemSizeCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v15

    .line 298
    invoke-interface {v4, v12, v7, v15}, Lcom/google/android/material/internal/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v7

    .line 306
    .local v7, "childCrossMeasureSpec":I
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    add-int v15, v16, v17

    .line 311
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v22

    add-int v15, v15, v22

    .line 312
    invoke-direct {v9, v10, v8}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v22

    add-int v15, v15, v22

    .line 307
    invoke-interface {v4, v11, v15, v5}, Lcom/google/android/material/internal/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v4

    .line 314
    .restart local v4    # "childMainMeasureSpec":I
    invoke-virtual {v0, v7, v4}, Landroid/view/View;->measure(II)V

    .line 316
    move v15, v7

    goto :goto_4

    .end local v4    # "childMainMeasureSpec":I
    .local v7, "childMainMeasureSpec":I
    .local v15, "childCrossMeasureSpec":I
    :goto_5
    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v4, v2, v0}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 324
    invoke-direct {v9, v0, v2}, Lcom/google/android/material/internal/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    .line 326
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v1, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v22

    .line 328
    .end local v1    # "childState":I
    .local v22, "childState":I
    iget v4, v6, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 333
    invoke-direct {v9, v0, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v1

    .line 334
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v23

    add-int v1, v1, v23

    .line 335
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v23

    add-int v23, v1, v23

    .line 328
    move-object v1, v0

    move-object v0, v9

    .end local v0    # "child":Landroid/view/View;
    .local v1, "child":Landroid/view/View;
    move-object/from16 v32, v1

    .end local v1    # "child":Landroid/view/View;
    .local v32, "child":Landroid/view/View;
    move/from16 v33, v2

    move/from16 v2, v31

    .end local v2    # "i":I
    .local v33, "i":I
    move v13, v3

    move/from16 v3, v30

    .end local v3    # "sumCrossSize":I
    .local v13, "sumCrossSize":I
    move/from16 v34, v15

    move/from16 v11, v28

    const/4 v15, 0x1

    .end local v15    # "childCrossMeasureSpec":I
    .end local v28    # "childCount":I
    .local v11, "childCount":I
    .local v34, "childCrossMeasureSpec":I
    move/from16 v26, v5

    move/from16 v27, v8

    move/from16 v5, v23

    .end local v5    # "childMainSize":I
    .local v26, "childMainSize":I
    move-object v8, v6

    const/4 v15, -0x1

    move-object v6, v10

    .end local v6    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .local v8, "flexLine":Lcom/google/android/material/internal/FlexLine;
    move/from16 v35, v11

    move-object/from16 v15, v29

    move v11, v7

    move/from16 v7, v33

    .end local v7    # "childMainMeasureSpec":I
    .end local v29    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .local v11, "childMainMeasureSpec":I
    .local v15, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .local v35, "childCount":I
    move/from16 v36, v11

    move/from16 v21, v30

    move-object v11, v8

    move/from16 v8, v20

    .end local v8    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .end local v30    # "mainSize":I
    .local v11, "flexLine":Lcom/google/android/material/internal/FlexLine;
    .local v21, "mainSize":I
    .local v36, "childMainMeasureSpec":I
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/internal/FlexboxHelper;->isWrapRequired(Landroid/view/View;IIIILcom/google/android/material/internal/FlexItem;II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 339
    invoke-virtual {v11}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-lez v0, :cond_8

    .line 340
    move/from16 v0, v33

    if-lez v0, :cond_7

    .end local v33    # "i":I
    .local v0, "i":I
    add-int/lit8 v5, v0, -0x1

    goto :goto_6

    :cond_7
    move/from16 v5, v27

    :goto_6
    invoke-direct {v9, v15, v11, v5, v13}, Lcom/google/android/material/internal/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V

    .line 341
    iget v1, v11, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int v3, v13, v1

    .end local v13    # "sumCrossSize":I
    .restart local v3    # "sumCrossSize":I
    goto :goto_7

    .line 344
    .end local v0    # "i":I
    .end local v3    # "sumCrossSize":I
    .restart local v13    # "sumCrossSize":I
    .restart local v33    # "i":I
    :cond_8
    move/from16 v0, v33

    move v3, v13

    .end local v13    # "sumCrossSize":I
    .end local v33    # "i":I
    .restart local v0    # "i":I
    .restart local v3    # "sumCrossSize":I
    :goto_7
    if-eqz v14, :cond_a

    .line 345
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 353
    iget-object v1, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    iget-object v2, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 356
    invoke-interface {v2}, Lcom/google/android/material/internal/FlexContainer;->getPaddingTop()I

    move-result v2

    iget-object v4, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 357
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    .line 358
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v4

    add-int/2addr v2, v4

    .line 359
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 361
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result v4

    .line 354
    invoke-interface {v1, v12, v2, v4}, Lcom/google/android/material/internal/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v1

    .line 362
    .end local v34    # "childCrossMeasureSpec":I
    .local v1, "childCrossMeasureSpec":I
    move-object/from16 v2, v32

    move/from16 v4, v36

    invoke-virtual {v2, v4, v1}, Landroid/view/View;->measure(II)V

    .line 363
    .end local v32    # "child":Landroid/view/View;
    .end local v36    # "childMainMeasureSpec":I
    .local v2, "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    invoke-direct {v9, v2, v0}, Lcom/google/android/material/internal/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_9

    .line 388
    .end local v1    # "childCrossMeasureSpec":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .restart local v32    # "child":Landroid/view/View;
    .restart local v34    # "childCrossMeasureSpec":I
    .restart local v36    # "childMainMeasureSpec":I
    :cond_9
    move-object/from16 v2, v32

    move/from16 v4, v36

    .end local v32    # "child":Landroid/view/View;
    .end local v36    # "childMainMeasureSpec":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    goto :goto_8

    .line 366
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .restart local v32    # "child":Landroid/view/View;
    .restart local v36    # "childMainMeasureSpec":I
    :cond_a
    move-object/from16 v2, v32

    move/from16 v4, v36

    .end local v32    # "child":Landroid/view/View;
    .end local v36    # "childMainMeasureSpec":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getWidth()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_b

    .line 374
    iget-object v1, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    iget-object v5, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 377
    invoke-interface {v5}, Lcom/google/android/material/internal/FlexContainer;->getPaddingLeft()I

    move-result v5

    iget-object v6, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 378
    invoke-interface {v6}, Lcom/google/android/material/internal/FlexContainer;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 379
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 380
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    .line 382
    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getWidth()I

    move-result v6

    .line 375
    invoke-interface {v1, v12, v5, v6}, Lcom/google/android/material/internal/FlexContainer;->getChildWidthMeasureSpec(III)I

    move-result v1

    .line 383
    .end local v34    # "childCrossMeasureSpec":I
    .restart local v1    # "childCrossMeasureSpec":I
    invoke-virtual {v2, v1, v4}, Landroid/view/View;->measure(II)V

    .line 384
    invoke-direct {v9, v2, v0}, Lcom/google/android/material/internal/FlexboxHelper;->checkSizeConstraints(Landroid/view/View;I)V

    goto :goto_9

    .line 388
    .end local v1    # "childCrossMeasureSpec":I
    .restart local v34    # "childCrossMeasureSpec":I
    :cond_b
    :goto_8
    move/from16 v1, v34

    .end local v34    # "childCrossMeasureSpec":I
    .restart local v1    # "childCrossMeasureSpec":I
    :goto_9
    new-instance v5, Lcom/google/android/material/internal/FlexLine;

    invoke-direct {v5}, Lcom/google/android/material/internal/FlexLine;-><init>()V

    move-object v6, v5

    .line 389
    .end local v11    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .restart local v6    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    const/4 v5, 0x1

    iput v5, v6, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    .line 390
    add-int v5, v16, v17

    iput v5, v6, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 391
    iput v0, v6, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    .line 392
    const/4 v5, 0x0

    .line 393
    .end local v20    # "indexInFlexLine":I
    .local v5, "indexInFlexLine":I
    const/high16 v24, -0x80000000

    .line 398
    move/from16 v34, v1

    move v13, v3

    goto :goto_a

    .line 395
    .end local v0    # "i":I
    .end local v1    # "childCrossMeasureSpec":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "sumCrossSize":I
    .end local v4    # "childMainMeasureSpec":I
    .end local v5    # "indexInFlexLine":I
    .end local v6    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .restart local v11    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .restart local v13    # "sumCrossSize":I
    .restart local v20    # "indexInFlexLine":I
    .restart local v32    # "child":Landroid/view/View;
    .restart local v33    # "i":I
    .restart local v34    # "childCrossMeasureSpec":I
    .restart local v36    # "childMainMeasureSpec":I
    :cond_c
    move-object/from16 v2, v32

    move/from16 v0, v33

    move/from16 v4, v36

    .end local v32    # "child":Landroid/view/View;
    .end local v33    # "i":I
    .end local v36    # "childMainMeasureSpec":I
    .restart local v0    # "i":I
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "childMainMeasureSpec":I
    iget v1, v11, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v11, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    .line 396
    add-int/lit8 v20, v20, 0x1

    .line 398
    move-object v6, v11

    move/from16 v5, v20

    .end local v11    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .end local v20    # "indexInFlexLine":I
    .end local v24    # "largestSizeInCross":I
    .local v1, "largestSizeInCross":I
    .restart local v5    # "indexInFlexLine":I
    .restart local v6    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    :goto_a
    move/from16 v1, v24

    iget v3, v6, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 399
    invoke-direct {v9, v2, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getViewMeasuredSizeMain(Landroid/view/View;Z)I

    move-result v7

    .line 400
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    .line 401
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    iput v3, v6, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 402
    iget v3, v6, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getFlexGrow()F

    move-result v7

    add-float/2addr v3, v7

    iput v3, v6, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    .line 403
    iget v3, v6, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getFlexShrink()F

    move-result v7

    add-float/2addr v3, v7

    iput v3, v6, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    .line 405
    iget-object v3, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v3, v2, v0, v5, v6}, Lcom/google/android/material/internal/FlexContainer;->onNewFlexItemAdded(Landroid/view/View;IILcom/google/android/material/internal/FlexLine;)V

    .line 407
    nop

    .line 410
    invoke-direct {v9, v2, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getViewMeasuredSizeCross(Landroid/view/View;Z)I

    move-result v3

    .line 411
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginStartCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v7

    add-int/2addr v3, v7

    .line 412
    invoke-direct {v9, v10, v14}, Lcom/google/android/material/internal/FlexboxHelper;->getFlexItemMarginEndCross(Lcom/google/android/material/internal/FlexItem;Z)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v9, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 413
    invoke-interface {v7, v2}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v7

    add-int/2addr v3, v7

    .line 408
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 417
    iget v3, v6, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    .line 419
    if-eqz v14, :cond_d

    .line 420
    iget v3, v6, Lcom/google/android/material/internal/FlexLine;->maxBaseline:I

    .line 421
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v7

    invoke-interface {v10}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v6, Lcom/google/android/material/internal/FlexLine;->maxBaseline:I

    .line 424
    :cond_d
    move/from16 v3, v35

    invoke-direct {v9, v0, v3, v6}, Lcom/google/android/material/internal/FlexboxHelper;->isLastFlexItem(IILcom/google/android/material/internal/FlexLine;)Z

    move-result v7

    .end local v35    # "childCount":I
    .local v3, "childCount":I
    if-eqz v7, :cond_e

    .line 425
    invoke-direct {v9, v15, v6, v0, v13}, Lcom/google/android/material/internal/FlexboxHelper;->addFlexLine(Ljava/util/List;Lcom/google/android/material/internal/FlexLine;II)V

    .line 426
    iget v7, v6, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    add-int/2addr v13, v7

    .line 429
    :cond_e
    move/from16 v7, p6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    .line 430
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    .line 431
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    const/16 v23, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/internal/FlexLine;

    iget v11, v11, Lcom/google/android/material/internal/FlexLine;->lastIndex:I

    if-lt v11, v7, :cond_10

    if-lt v0, v7, :cond_10

    if-nez v25, :cond_10

    .line 439
    invoke-virtual {v6}, Lcom/google/android/material/internal/FlexLine;->getCrossSize()I

    move-result v11

    neg-int v11, v11

    .line 440
    .end local v13    # "sumCrossSize":I
    .local v11, "sumCrossSize":I
    const/4 v13, 0x1

    .line 442
    .end local v25    # "reachedToIndex":Z
    .local v13, "reachedToIndex":Z
    move/from16 v25, v13

    goto :goto_b

    .end local v11    # "sumCrossSize":I
    .local v13, "sumCrossSize":I
    .restart local v25    # "reachedToIndex":Z
    :cond_f
    const/16 v23, 0x1

    :cond_10
    move v11, v13

    .end local v13    # "sumCrossSize":I
    .restart local v11    # "sumCrossSize":I
    :goto_b
    move/from16 v13, p4

    if-le v11, v13, :cond_11

    if-eqz v25, :cond_11

    .line 450
    nop

    .line 454
    move/from16 v24, v1

    move/from16 v20, v5

    move/from16 v1, v22

    goto :goto_d

    .line 244
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "childMainMeasureSpec":I
    .end local v10    # "flexItem":Lcom/google/android/material/internal/FlexItem;
    .end local v26    # "childMainSize":I
    .end local v34    # "childCrossMeasureSpec":I
    :cond_11
    move/from16 v24, v1

    move/from16 v20, v5

    move/from16 v1, v22

    .end local v5    # "indexInFlexLine":I
    .end local v22    # "childState":I
    .local v1, "childState":I
    .restart local v20    # "indexInFlexLine":I
    .restart local v24    # "largestSizeInCross":I
    :goto_c
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, p5

    move v4, v3

    move v13, v7

    move v3, v11

    move-object v7, v15

    move/from16 v8, v21

    move/from16 v15, v31

    move-object/from16 v10, p1

    move/from16 v11, p2

    goto/16 :goto_2

    .line 454
    .end local v0    # "i":I
    .end local v11    # "sumCrossSize":I
    .end local v21    # "mainSize":I
    .end local v31    # "mainMode":I
    .local v3, "sumCrossSize":I
    .local v4, "childCount":I
    .local v7, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .local v8, "mainSize":I
    .local v15, "mainMode":I
    :cond_12
    move-object v11, v6

    move/from16 v21, v8

    move/from16 v31, v15

    move-object v15, v7

    move v7, v13

    move v13, v3

    move v3, v4

    move v11, v13

    .end local v4    # "childCount":I
    .end local v7    # "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .end local v8    # "mainSize":I
    .local v3, "childCount":I
    .restart local v11    # "sumCrossSize":I
    .local v15, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    .restart local v21    # "mainSize":I
    .restart local v31    # "mainMode":I
    :goto_d
    move-object/from16 v0, p1

    iput v1, v0, Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;->childState:I

    .line 455
    return-void
.end method

.method private checkSizeConstraints(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 709
    const/4 v0, 0x0

    .line 710
    .local v0, "needsMeasure":Z
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/internal/FlexItem;

    .line 711
    .local v1, "flexItem":Lcom/google/android/material/internal/FlexItem;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 712
    .local v2, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 714
    .local v3, "childHeight":I
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexItem;->getMinWidth()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 715
    const/4 v0, 0x1

    .line 716
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexItem;->getMinWidth()I

    move-result v2

    goto :goto_0

    .line 717
    :cond_0
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexItem;->getMaxWidth()I

    move-result v4

    if-le v2, v4, :cond_1

    .line 718
    const/4 v0, 0x1

    .line 719
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexItem;->getMaxWidth()I

    move-result v2

    .line 722
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 723
    const/4 v0, 0x1

    .line 724
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v3

    goto :goto_1

    .line 725
    :cond_2
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 726
    const/4 v0, 0x1

    .line 727
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v3

    .line 729
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 730
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 731
    .local v5, "widthSpec":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 732
    .local v4, "heightSpec":I
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 733
    iget-object v6, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v6, p2, p1}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 735
    .end local v4    # "heightSpec":I
    .end local v5    # "widthSpec":I
    :cond_4
    return-void
.end method

.method private createOrders(I)Ljava/util/List;
    .locals 6
    .param p1, "childCount"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexboxHelper$Order;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v0, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexboxHelper$Order;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v2, v1}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/FlexItem;

    .line 119
    .local v3, "flexItem":Lcom/google/android/material/internal/FlexItem;
    new-instance v4, Lcom/google/android/material/internal/FlexboxHelper$Order;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/material/internal/FlexboxHelper$Order;-><init>(Lcom/google/android/material/internal/FlexboxHelper$1;)V

    .line 120
    .local v4, "order":Lcom/google/android/material/internal/FlexboxHelper$Order;
    invoke-interface {v3}, Lcom/google/android/material/internal/FlexItem;->getOrder()I

    move-result v5

    iput v5, v4, Lcom/google/android/material/internal/FlexboxHelper$Order;->order:I

    .line 121
    iput v1, v4, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    .line 122
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "flexItem":Lcom/google/android/material/internal/FlexItem;
    .end local v4    # "order":Lcom/google/android/material/internal/FlexboxHelper$Order;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private determineMainSize(III)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "fromIndex"    # I

    move-object/from16 v6, p0

    .line 751
    iget-object v0, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    invoke-direct {v6, v0}, Lcom/google/android/material/internal/FlexboxHelper;->ensureChildrenFrozen(I)V

    .line 752
    iget-object v0, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    move/from16 v7, p3

    if-lt v7, v0, :cond_0

    .line 753
    return-void

    .line 757
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 758
    .local v8, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 759
    .local v9, "widthSize":I
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v8, v0, :cond_1

    .line 760
    move v0, v9

    .local v0, "mainSize":I
    goto :goto_0

    .line 762
    .end local v0    # "mainSize":I
    :cond_1
    iget-object v0, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getLargestMainSize()I

    move-result v0

    .restart local v0    # "mainSize":I
    :goto_0
    move v10, v0

    .line 764
    .end local v0    # "mainSize":I
    .local v10, "mainSize":I
    iget-object v0, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingRight()I

    move-result v1

    add-int v11, v0, v1

    .line 766
    .local v11, "paddingAlongMainAxis":I
    const/4 v12, 0x0

    .line 767
    .local v12, "flexLineIndex":I
    iget-object v0, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v13

    .line 768
    .local v13, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    move v0, v12

    .local v0, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    move v14, v0

    .end local v0    # "i":I
    .local v1, "size":I
    .local v14, "i":I
    :goto_1
    move v15, v1

    .end local v1    # "size":I
    .local v15, "size":I
    if-ge v14, v15, :cond_3

    .line 769
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/internal/FlexLine;

    .line 770
    .local v5, "flexLine":Lcom/google/android/material/internal/FlexLine;
    iget v0, v5, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-ge v0, v10, :cond_2

    .line 771
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, p2

    move-object v2, v5

    move v3, v10

    move v4, v11

    move-object/from16 v17, v5

    move/from16 v5, v16

    .end local v5    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .local v17, "flexLine":Lcom/google/android/material/internal/FlexLine;
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/FlexboxHelper;->expandFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V

    goto :goto_2

    .line 773
    .end local v17    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .restart local v5    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    :cond_2
    move-object/from16 v17, v5

    .end local v5    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .restart local v17    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v1, p2

    move-object/from16 v2, v17

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/FlexboxHelper;->shrinkFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V

    .line 768
    .end local v17    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    :goto_2
    add-int/lit8 v14, v14, 0x1

    move v1, v15

    goto :goto_1

    .line 776
    .end local v14    # "i":I
    .end local v15    # "size":I
    :cond_3
    return-void
.end method

.method private ensureChildrenFrozen(I)V
    .locals 2
    .param p1, "size"    # I

    .line 779
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    if-nez v0, :cond_0

    .line 780
    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    goto :goto_0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 782
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 783
    .local v0, "newCapacity":I
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    .line 784
    .end local v0    # "newCapacity":I
    goto :goto_0

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 787
    :goto_0
    return-void
.end method

.method private expandFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V
    .locals 24
    .param p1, "heightMeasureSpec"    # I
    .param p2, "flexLine"    # Lcom/google/android/material/internal/FlexLine;
    .param p3, "maxMainSize"    # I
    .param p4, "paddingAlongMainAxis"    # I
    .param p5, "calledRecursively"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 805
    iget v0, v7, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_c

    iget v0, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-ge v8, v0, :cond_0

    goto/16 :goto_5

    .line 808
    :cond_0
    iget v9, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 809
    .local v9, "sizeBeforeExpand":I
    const/4 v0, 0x0

    .line 810
    .local v0, "needsReexpand":Z
    iget v2, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    sub-int v2, v8, v2

    int-to-float v2, v2

    iget v3, v7, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    div-float v10, v2, v3

    .line 811
    .local v10, "unitSpace":F
    iget v2, v7, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    add-int v2, p4, v2

    iput v2, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 822
    const/4 v2, 0x0

    .line 823
    .local v2, "largestCrossSize":I
    if-nez p5, :cond_1

    .line 824
    const/high16 v3, -0x80000000

    iput v3, v7, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    .line 826
    :cond_1
    const/4 v3, 0x0

    .line 827
    .local v3, "accumulatedRoundError":F
    const/4 v4, 0x0

    move v13, v0

    move v14, v2

    move v15, v3

    .end local v0    # "needsReexpand":Z
    .end local v2    # "largestCrossSize":I
    .end local v3    # "accumulatedRoundError":F
    .local v4, "i":I
    .local v13, "needsReexpand":Z
    .local v14, "largestCrossSize":I
    .local v15, "accumulatedRoundError":F
    :goto_0
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    iget v2, v7, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    if-ge v0, v2, :cond_a

    .line 828
    iget v2, v7, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v2, v0

    .line 829
    .local v2, "index":I
    iget-object v3, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v3, v2}, Lcom/google/android/material/internal/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v3

    .line 830
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 831
    nop

    .line 827
    move/from16 v11, p1

    move/from16 v17, v1

    move/from16 v20, v10

    goto/16 :goto_4

    .line 833
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/FlexItem;

    .line 836
    .local v4, "flexItem":Lcom/google/android/material/internal/FlexItem;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 837
    .local v5, "childMeasuredWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 838
    .local v16, "childMeasuredHeight":I
    iget-object v1, v6, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_8

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getFlexGrow()F

    move-result v1

    const/16 v17, 0x0

    cmpl-float v1, v1, v17

    if-lez v1, :cond_7

    .line 839
    int-to-float v1, v5

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getFlexGrow()F

    move-result v18

    mul-float v18, v18, v10

    add-float v1, v1, v18

    .line 840
    .local v1, "rawCalculatedWidth":F
    move/from16 v19, v5

    iget v5, v7, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    .end local v5    # "childMeasuredWidth":I
    .local v19, "childMeasuredWidth":I
    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_3

    .line 841
    add-float/2addr v1, v15

    .line 842
    const/4 v15, 0x0

    .line 844
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 845
    .local v5, "newWidth":I
    move/from16 v20, v10

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMaxWidth()I

    move-result v10

    .end local v10    # "unitSpace":F
    .local v20, "unitSpace":F
    if-le v5, v10, :cond_4

    .line 852
    const/4 v10, 0x1

    .line 853
    .end local v13    # "needsReexpand":Z
    .local v10, "needsReexpand":Z
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMaxWidth()I

    move-result v5

    .line 854
    iget-object v13, v6, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    aput-boolean v18, v13, v2

    .line 855
    iget v13, v7, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getFlexGrow()F

    move-result v18

    sub-float v13, v13, v18

    iput v13, v7, Lcom/google/android/material/internal/FlexLine;->motalFlexGrow:F

    .line 866
    move v13, v10

    goto :goto_1

    .line 857
    .end local v10    # "needsReexpand":Z
    .restart local v13    # "needsReexpand":Z
    :cond_4
    int-to-float v10, v5

    sub-float v10, v1, v10

    add-float/2addr v15, v10

    .line 858
    float-to-double v10, v15

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v21

    const/high16 v11, 0x3f800000    # 1.0f

    if-lez v10, :cond_5

    .line 859
    add-int/lit8 v5, v5, 0x1

    .line 860
    sub-float/2addr v15, v11

    goto :goto_1

    .line 861
    :cond_5
    float-to-double v11, v15

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    cmpg-double v10, v11, v21

    if-gez v10, :cond_6

    .line 862
    add-int/lit8 v5, v5, -0x1

    .line 863
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v15, v10

    .line 866
    :cond_6
    :goto_1
    iget v10, v7, Lcom/google/android/material/internal/FlexLine;->sumCrossSizeBefore:I

    .line 867
    move/from16 v11, p1

    invoke-direct {v6, v11, v4, v10}, Lcom/google/android/material/internal/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/material/internal/FlexItem;I)I

    move-result v10

    .line 869
    .local v10, "childHeightMeasureSpec":I
    const/high16 v12, 0x40000000    # 2.0f

    .line 870
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 871
    .local v12, "childWidthMeasureSpec":I
    invoke-virtual {v3, v12, v10}, Landroid/view/View;->measure(II)V

    .line 872
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 873
    .end local v19    # "childMeasuredWidth":I
    .local v18, "childMeasuredWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 874
    move/from16 v23, v1

    iget-object v1, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .end local v1    # "rawCalculatedWidth":F
    .local v23, "rawCalculatedWidth":F
    invoke-interface {v1, v2, v3}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .end local v5    # "newWidth":I
    .end local v10    # "childHeightMeasureSpec":I
    .end local v12    # "childWidthMeasureSpec":I
    .end local v23    # "rawCalculatedWidth":F
    goto :goto_3

    .line 876
    .end local v18    # "childMeasuredWidth":I
    .end local v20    # "unitSpace":F
    .local v5, "childMeasuredWidth":I
    .local v10, "unitSpace":F
    :cond_7
    move/from16 v11, p1

    move/from16 v19, v5

    move/from16 v20, v10

    goto :goto_2

    :cond_8
    move/from16 v11, p1

    move/from16 v19, v5

    move/from16 v20, v10

    const/16 v17, 0x0

    .end local v5    # "childMeasuredWidth":I
    .end local v10    # "unitSpace":F
    .restart local v19    # "childMeasuredWidth":I
    .restart local v20    # "unitSpace":F
    :goto_2
    move/from16 v18, v19

    .line 880
    .end local v19    # "childMeasuredWidth":I
    .restart local v18    # "childMeasuredWidth":I
    :goto_3
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v1

    add-int v1, v16, v1

    .line 881
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 882
    invoke-interface {v5, v3}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 877
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 883
    .end local v14    # "largestCrossSize":I
    .local v1, "largestCrossSize":I
    iget v5, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 884
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result v10

    add-int v10, v18, v10

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v5, v10

    iput v5, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 885
    iget v5, v7, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    .line 827
    .end local v2    # "index":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "flexItem":Lcom/google/android/material/internal/FlexItem;
    .end local v16    # "childMeasuredHeight":I
    .end local v18    # "childMeasuredWidth":I
    move v14, v1

    goto :goto_4

    .end local v1    # "largestCrossSize":I
    .end local v20    # "unitSpace":F
    .restart local v10    # "unitSpace":F
    .restart local v14    # "largestCrossSize":I
    :cond_9
    move/from16 v11, p1

    move/from16 v17, v1

    move/from16 v20, v10

    .end local v10    # "unitSpace":F
    .restart local v20    # "unitSpace":F
    :goto_4
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    move/from16 v1, v17

    move/from16 v10, v20

    goto/16 :goto_0

    .line 888
    .end local v4    # "i":I
    .end local v20    # "unitSpace":F
    .restart local v10    # "unitSpace":F
    :cond_a
    move/from16 v11, p1

    move/from16 v20, v10

    .end local v10    # "unitSpace":F
    .restart local v20    # "unitSpace":F
    if-eqz v13, :cond_b

    iget v0, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-eq v9, v0, :cond_b

    .line 891
    const/4 v5, 0x1

    move-object v0, v6

    move v1, v11

    move-object v2, v7

    move v3, v8

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/FlexboxHelper;->expandFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V

    .line 893
    :cond_b
    return-void

    .line 806
    .end local v9    # "sizeBeforeExpand":I
    .end local v13    # "needsReexpand":Z
    .end local v14    # "largestCrossSize":I
    .end local v15    # "accumulatedRoundError":F
    .end local v20    # "unitSpace":F
    :cond_c
    :goto_5
    move/from16 v11, p1

    return-void
.end method

.method private getChildHeightMeasureSpecInternal(ILcom/google/android/material/internal/FlexItem;I)I
    .locals 4
    .param p1, "heightMeasureSpec"    # I
    .param p2, "flexItem"    # Lcom/google/android/material/internal/FlexItem;
    .param p3, "padding"    # I

    .line 1004
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 1007
    invoke-interface {v1}, Lcom/google/android/material/internal/FlexContainer;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 1008
    invoke-interface {v2}, Lcom/google/android/material/internal/FlexContainer;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1009
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1010
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 1012
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result v2

    .line 1005
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/material/internal/FlexContainer;->getChildHeightMeasureSpec(III)I

    move-result v0

    .line 1013
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1014
    .local v1, "childHeight":I
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1015
    nop

    .line 1017
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1016
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 1018
    :cond_0
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1019
    nop

    .line 1021
    invoke-interface {p2}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v2

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1020
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1023
    :cond_1
    :goto_0
    return v0
.end method

.method private getFlexItemMarginEndCross(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/material/internal/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 642
    if-eqz p2, :cond_0

    .line 643
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v0

    return v0

    .line 646
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginEndMain(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/material/internal/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 604
    if-eqz p2, :cond_0

    .line 605
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result v0

    return v0

    .line 608
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginStartCross(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/material/internal/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 623
    if-eqz p2, :cond_0

    .line 624
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v0

    return v0

    .line 627
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result v0

    return v0
.end method

.method private getFlexItemMarginStartMain(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/material/internal/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 585
    if-eqz p2, :cond_0

    .line 586
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result v0

    return v0

    .line 589
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v0

    return v0
.end method

.method private getFlexItemSizeCross(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/material/internal/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 566
    if-eqz p2, :cond_0

    .line 567
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result v0

    return v0

    .line 570
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getWidth()I

    move-result v0

    return v0
.end method

.method private getFlexItemSizeMain(Lcom/google/android/material/internal/FlexItem;Z)I
    .locals 1
    .param p1, "flexItem"    # Lcom/google/android/material/internal/FlexItem;
    .param p2, "isMainHorizontal"    # Z

    .line 551
    if-eqz p2, :cond_0

    .line 552
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getWidth()I

    move-result v0

    return v0

    .line 555
    :cond_0
    invoke-interface {p1}, Lcom/google/android/material/internal/FlexItem;->getHeight()I

    move-result v0

    return v0
.end method

.method private getPaddingEndCross(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .line 506
    if-eqz p1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingBottom()I

    move-result v0

    return v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingEnd()I

    move-result v0

    return v0
.end method

.method private getPaddingEndMain(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .line 478
    if-eqz p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingEnd()I

    move-result v0

    return v0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method private getPaddingStartCross(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .line 492
    if-eqz p1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingTop()I

    move-result v0

    return v0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingStart()I

    move-result v0

    return v0
.end method

.method private getPaddingStartMain(Z)I
    .locals 1
    .param p1, "isMainHorizontal"    # Z

    .line 464
    if-eqz p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingStart()I

    move-result v0

    return v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method private getViewMeasuredSizeCross(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMainHorizontal"    # Z

    .line 536
    if-eqz p2, :cond_0

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method private getViewMeasuredSizeMain(Landroid/view/View;Z)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isMainHorizontal"    # Z

    .line 521
    if-eqz p2, :cond_0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0

    .line 525
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private isLastFlexItem(IILcom/google/android/material/internal/FlexLine;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "childCount"    # I
    .param p3, "flexLine"    # Lcom/google/android/material/internal/FlexLine;

    .line 689
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Lcom/google/android/material/internal/FlexLine;->getItemCountNotGone()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWrapRequired(Landroid/view/View;IIIILcom/google/android/material/internal/FlexItem;II)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mode"    # I
    .param p3, "maxSize"    # I
    .param p4, "currentLength"    # I
    .param p5, "childLength"    # I
    .param p6, "flexItem"    # Lcom/google/android/material/internal/FlexItem;
    .param p7, "index"    # I
    .param p8, "indexInFlexLine"    # I

    .line 672
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 673
    return v1

    .line 675
    :cond_0
    invoke-interface {p6}, Lcom/google/android/material/internal/FlexItem;->isWrapBefore()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 676
    return v2

    .line 678
    :cond_1
    if-nez p2, :cond_2

    .line 679
    return v1

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0, p1, p7, p8}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthMainAxis(Landroid/view/View;II)I

    move-result v0

    .line 682
    .local v0, "decorationLength":I
    if-lez v0, :cond_3

    .line 683
    add-int/2addr p5, v0

    .line 685
    :cond_3
    add-int v3, p4, p5

    if-ge p3, v3, :cond_4

    move v1, v2

    nop

    :cond_4
    return v1
.end method

.method private shrinkFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V
    .locals 24
    .param p1, "heightMeasureSpec"    # I
    .param p2, "flexLine"    # Lcom/google/android/material/internal/FlexLine;
    .param p3, "maxMainSize"    # I
    .param p4, "paddingAlongMainAxis"    # I
    .param p5, "calledRecursively"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 911
    iget v9, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 912
    .local v9, "sizeBeforeShrink":I
    iget v0, v7, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_c

    iget v0, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-le v8, v0, :cond_0

    goto/16 :goto_5

    .line 915
    :cond_0
    const/4 v0, 0x0

    .line 916
    .local v0, "needsReshrink":Z
    iget v2, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    sub-int/2addr v2, v8

    int-to-float v2, v2

    iget v3, v7, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    div-float v10, v2, v3

    .line 917
    .local v10, "unitShrink":F
    const/4 v2, 0x0

    .line 918
    .local v2, "accumulatedRoundError":F
    iget v3, v7, Lcom/google/android/material/internal/FlexLine;->dividerLengthInMainSize:I

    add-int v3, p4, v3

    iput v3, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 929
    const/4 v3, 0x0

    .line 930
    .local v3, "largestCrossSize":I
    if-nez p5, :cond_1

    .line 931
    const/high16 v4, -0x80000000

    iput v4, v7, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    .line 933
    :cond_1
    const/4 v4, 0x0

    move v13, v0

    move v14, v2

    move v15, v3

    .end local v0    # "needsReshrink":Z
    .end local v2    # "accumulatedRoundError":F
    .end local v3    # "largestCrossSize":I
    .local v4, "i":I
    .local v13, "needsReshrink":Z
    .local v14, "accumulatedRoundError":F
    .local v15, "largestCrossSize":I
    :goto_0
    move v0, v4

    .end local v4    # "i":I
    .local v0, "i":I
    iget v2, v7, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    if-ge v0, v2, :cond_a

    .line 934
    iget v2, v7, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v2, v0

    .line 935
    .local v2, "index":I
    iget-object v3, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v3, v2}, Lcom/google/android/material/internal/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v3

    .line 936
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 937
    nop

    .line 933
    move/from16 v11, p1

    move/from16 v17, v1

    move/from16 v20, v10

    goto/16 :goto_4

    .line 939
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/FlexItem;

    .line 942
    .local v4, "flexItem":Lcom/google/android/material/internal/FlexItem;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 943
    .local v5, "childMeasuredWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 944
    .local v16, "childMeasuredHeight":I
    iget-object v1, v6, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_8

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getFlexShrink()F

    move-result v1

    const/16 v17, 0x0

    cmpl-float v1, v1, v17

    if-lez v1, :cond_7

    .line 945
    int-to-float v1, v5

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getFlexShrink()F

    move-result v18

    mul-float v18, v18, v10

    sub-float v1, v1, v18

    .line 946
    .local v1, "rawCalculatedWidth":F
    move/from16 v19, v5

    iget v5, v7, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    .end local v5    # "childMeasuredWidth":I
    .local v19, "childMeasuredWidth":I
    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_3

    .line 947
    add-float/2addr v1, v14

    .line 948
    const/4 v14, 0x0

    .line 950
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 951
    .local v5, "newWidth":I
    move/from16 v20, v10

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMinWidth()I

    move-result v10

    .end local v10    # "unitShrink":F
    .local v20, "unitShrink":F
    if-ge v5, v10, :cond_4

    .line 958
    const/4 v10, 0x1

    .line 959
    .end local v13    # "needsReshrink":Z
    .local v10, "needsReshrink":Z
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMinWidth()I

    move-result v5

    .line 960
    iget-object v13, v6, Lcom/google/android/material/internal/FlexboxHelper;->childrenFrozen:[Z

    aput-boolean v18, v13, v2

    .line 961
    iget v13, v7, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getFlexShrink()F

    move-result v18

    sub-float v13, v13, v18

    iput v13, v7, Lcom/google/android/material/internal/FlexLine;->totalFlexShrink:F

    .line 972
    move v13, v10

    goto :goto_1

    .line 963
    .end local v10    # "needsReshrink":Z
    .restart local v13    # "needsReshrink":Z
    :cond_4
    int-to-float v10, v5

    sub-float v10, v1, v10

    add-float/2addr v14, v10

    .line 964
    float-to-double v10, v14

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v21

    const/high16 v11, 0x3f800000    # 1.0f

    if-lez v10, :cond_5

    .line 965
    add-int/lit8 v5, v5, 0x1

    .line 966
    sub-float/2addr v14, v11

    goto :goto_1

    .line 967
    :cond_5
    float-to-double v11, v14

    const-wide/high16 v21, -0x4010000000000000L    # -1.0

    cmpg-double v10, v11, v21

    if-gez v10, :cond_6

    .line 968
    add-int/lit8 v5, v5, -0x1

    .line 969
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v14, v10

    .line 972
    :cond_6
    :goto_1
    iget v10, v7, Lcom/google/android/material/internal/FlexLine;->sumCrossSizeBefore:I

    .line 973
    move/from16 v11, p1

    invoke-direct {v6, v11, v4, v10}, Lcom/google/android/material/internal/FlexboxHelper;->getChildHeightMeasureSpecInternal(ILcom/google/android/material/internal/FlexItem;I)I

    move-result v10

    .line 975
    .local v10, "childHeightMeasureSpec":I
    const/high16 v12, 0x40000000    # 2.0f

    .line 976
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 977
    .local v12, "childWidthMeasureSpec":I
    invoke-virtual {v3, v12, v10}, Landroid/view/View;->measure(II)V

    .line 979
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 980
    .end local v19    # "childMeasuredWidth":I
    .local v18, "childMeasuredWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 981
    move/from16 v23, v1

    iget-object v1, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .end local v1    # "rawCalculatedWidth":F
    .local v23, "rawCalculatedWidth":F
    invoke-interface {v1, v2, v3}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .end local v5    # "newWidth":I
    .end local v10    # "childHeightMeasureSpec":I
    .end local v12    # "childWidthMeasureSpec":I
    .end local v23    # "rawCalculatedWidth":F
    goto :goto_3

    .line 983
    .end local v18    # "childMeasuredWidth":I
    .end local v20    # "unitShrink":F
    .local v5, "childMeasuredWidth":I
    .local v10, "unitShrink":F
    :cond_7
    move/from16 v11, p1

    move/from16 v19, v5

    move/from16 v20, v10

    goto :goto_2

    :cond_8
    move/from16 v11, p1

    move/from16 v19, v5

    move/from16 v20, v10

    const/16 v17, 0x0

    .end local v5    # "childMeasuredWidth":I
    .end local v10    # "unitShrink":F
    .restart local v19    # "childMeasuredWidth":I
    .restart local v20    # "unitShrink":F
    :goto_2
    move/from16 v18, v19

    .line 987
    .end local v19    # "childMeasuredWidth":I
    .restart local v18    # "childMeasuredWidth":I
    :goto_3
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v1

    add-int v1, v16, v1

    .line 988
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v6, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 989
    invoke-interface {v5, v3}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v5

    add-int/2addr v1, v5

    .line 984
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 990
    .end local v15    # "largestCrossSize":I
    .local v1, "largestCrossSize":I
    iget v5, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 991
    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMarginLeft()I

    move-result v10

    add-int v10, v18, v10

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getMarginRight()I

    move-result v12

    add-int/2addr v10, v12

    add-int/2addr v5, v10

    iput v5, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    .line 992
    iget v5, v7, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    .line 933
    .end local v2    # "index":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "flexItem":Lcom/google/android/material/internal/FlexItem;
    .end local v16    # "childMeasuredHeight":I
    .end local v18    # "childMeasuredWidth":I
    move v15, v1

    goto :goto_4

    .end local v1    # "largestCrossSize":I
    .end local v20    # "unitShrink":F
    .restart local v10    # "unitShrink":F
    .restart local v15    # "largestCrossSize":I
    :cond_9
    move/from16 v11, p1

    move/from16 v17, v1

    move/from16 v20, v10

    .end local v10    # "unitShrink":F
    .restart local v20    # "unitShrink":F
    :goto_4
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    move/from16 v1, v17

    move/from16 v10, v20

    goto/16 :goto_0

    .line 995
    .end local v4    # "i":I
    .end local v20    # "unitShrink":F
    .restart local v10    # "unitShrink":F
    :cond_a
    move/from16 v11, p1

    move/from16 v20, v10

    .end local v10    # "unitShrink":F
    .restart local v20    # "unitShrink":F
    if-eqz v13, :cond_b

    iget v0, v7, Lcom/google/android/material/internal/FlexLine;->mainSize:I

    if-eq v9, v0, :cond_b

    .line 998
    const/4 v5, 0x1

    move-object v0, v6

    move v1, v11

    move-object v2, v7

    move v3, v8

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/internal/FlexboxHelper;->shrinkFlexItems(ILcom/google/android/material/internal/FlexLine;IIZ)V

    .line 1000
    :cond_b
    return-void

    .line 913
    .end local v13    # "needsReshrink":Z
    .end local v14    # "accumulatedRoundError":F
    .end local v15    # "largestCrossSize":I
    .end local v20    # "unitShrink":F
    :cond_c
    :goto_5
    move/from16 v11, p1

    return-void
.end method

.method private sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 6
    .param p1, "childCount"    # I
    .param p3, "orderCache"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/material/internal/FlexboxHelper$Order;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    .line 153
    .local p2, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexboxHelper$Order;>;"
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 154
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 155
    new-array v0, p1, [I

    .line 156
    .local v0, "reorderedIndices":[I
    const/4 v1, 0x0

    .line 157
    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/FlexboxHelper$Order;

    .line 158
    .local v3, "order":Lcom/google/android/material/internal/FlexboxHelper$Order;
    iget v4, v3, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    aput v4, v0, v1

    .line 159
    iget v4, v3, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    iget v5, v3, Lcom/google/android/material/internal/FlexboxHelper$Order;->order:I

    invoke-virtual {p3, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 160
    add-int/lit8 v1, v1, 0x1

    .line 161
    .end local v3    # "order":Lcom/google/android/material/internal/FlexboxHelper$Order;
    goto :goto_0

    .line 162
    :cond_0
    return-object v0
.end method

.method private stretchViewVertically(Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "crossSize"    # I
    .param p3, "index"    # I

    .line 1102
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/FlexItem;

    .line 1103
    .local v0, "flexItem":Lcom/google/android/material/internal/FlexItem;
    nop

    .line 1105
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v1

    sub-int v1, p2, v1

    .line 1106
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMarginBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    .line 1107
    invoke-interface {v2, p1}, Lcom/google/android/material/internal/FlexContainer;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1108
    .local v1, "newHeight":I
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMinHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1109
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMaxHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1111
    .local v2, "measuredWidth":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1113
    .local v4, "childWidthSpec":I
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1114
    .local v3, "childHeightSpec":I
    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 1116
    iget-object v5, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v5, p3, p1}, Lcom/google/android/material/internal/FlexContainer;->updateViewCache(ILandroid/view/View;)V

    .line 1117
    return-void
.end method


# virtual methods
.method calculateHorizontalFlexLines(Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;II)V
    .locals 8
    .param p1, "result"    # Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;
    .param p2, "widthMeasureSpec"    # I
    .param p3, "heightMeasureSpec"    # I

    .line 173
    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/internal/FlexboxHelper;->calculateFlexLines(Lcom/google/android/material/internal/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    .line 175
    return-void
.end method

.method createReorderedIndices(Landroid/util/SparseIntArray;)[I
    .locals 3
    .param p1, "orderCache"    # Landroid/util/SparseIntArray;

    .line 108
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 109
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexboxHelper$Order;>;"
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/internal/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object v2

    return-object v2
.end method

.method createReorderedIndices(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 7
    .param p1, "viewBeforeAdded"    # Landroid/view/View;
    .param p2, "indexForViewBeforeAdded"    # I
    .param p3, "paramsForViewBeforeAdded"    # Landroid/view/ViewGroup$LayoutParams;
    .param p4, "orderCache"    # Landroid/util/SparseIntArray;

    .line 75
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 76
    .local v0, "childCount":I
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/FlexboxHelper;->createOrders(I)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexboxHelper$Order;>;"
    new-instance v2, Lcom/google/android/material/internal/FlexboxHelper$Order;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/material/internal/FlexboxHelper$Order;-><init>(Lcom/google/android/material/internal/FlexboxHelper$1;)V

    .line 78
    .local v2, "orderForViewToBeAdded":Lcom/google/android/material/internal/FlexboxHelper$Order;
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of v4, p3, Lcom/google/android/material/internal/FlexItem;

    if-eqz v4, :cond_0

    .line 79
    move-object v4, p3

    check-cast v4, Lcom/google/android/material/internal/FlexItem;

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexItem;->getOrder()I

    move-result v4

    iput v4, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->order:I

    goto :goto_0

    .line 81
    :cond_0
    iput v3, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->order:I

    .line 84
    :goto_0
    const/4 v4, -0x1

    if-eq p2, v4, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_2

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v4

    if-ge p2, v4, :cond_2

    .line 87
    iput p2, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    .line 88
    move v4, p2

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 89
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/FlexboxHelper$Order;

    iget v6, v5, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    add-int/2addr v6, v3

    iput v6, v5, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    .end local v4    # "i":I
    :cond_2
    iput v0, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    goto :goto_3

    .line 85
    :cond_3
    :goto_2
    iput v0, v2, Lcom/google/android/material/internal/FlexboxHelper$Order;->index:I

    .line 96
    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3, v1, p4}, Lcom/google/android/material/internal/FlexboxHelper;->sortOrdersIntoReorderedIndices(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object v3

    return-object v3
.end method

.method determineCrossSize(II)V
    .locals 15
    .param p1, "heightMeasureSpec"    # I
    .param p2, "paddingAlongCrossAxis"    # I

    move-object v0, p0

    .line 1036
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1038
    .local v1, "mode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1039
    .local v2, "size":I
    iget-object v3, v0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v3}, Lcom/google/android/material/internal/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    .line 1040
    .local v3, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_4

    .line 1041
    iget-object v4, v0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v4}, Lcom/google/android/material/internal/FlexContainer;->getSumOfCrossSize()I

    move-result v4

    add-int v4, v4, p2

    .line 1042
    .local v4, "totalCrossSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1043
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/FlexLine;

    sub-int v6, v2, p2

    iput v6, v5, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    goto :goto_2

    .line 1045
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_4

    .line 1046
    if-ge v4, v2, :cond_4

    .line 1047
    sub-int v5, v2, v4

    int-to-float v5, v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 1048
    .local v5, "freeSpaceUnit":F
    const/4 v7, 0x0

    .line 1049
    .local v7, "accumulatedError":F
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "flexLinesSize":I
    :goto_0
    if-ge v8, v9, :cond_4

    .line 1050
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/internal/FlexLine;

    .line 1051
    .local v10, "flexLine":Lcom/google/android/material/internal/FlexLine;
    iget v11, v10, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    int-to-float v11, v11

    add-float/2addr v11, v5

    .line 1052
    .local v11, "newCrossSizeAsFloat":F
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v6

    if-ne v8, v12, :cond_1

    .line 1053
    add-float/2addr v11, v7

    .line 1054
    const/4 v7, 0x0

    .line 1056
    :cond_1
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1057
    .local v12, "newCrossSize":I
    int-to-float v13, v12

    sub-float v13, v11, v13

    add-float/2addr v7, v13

    .line 1058
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v14, v7, v13

    if-lez v14, :cond_2

    .line 1059
    add-int/lit8 v12, v12, 0x1

    .line 1060
    sub-float/2addr v7, v13

    goto :goto_1

    .line 1061
    :cond_2
    const/high16 v14, -0x40800000    # -1.0f

    cmpg-float v14, v7, v14

    if-gez v14, :cond_3

    .line 1062
    add-int/lit8 v12, v12, -0x1

    .line 1063
    add-float/2addr v7, v13

    .line 1065
    :cond_3
    :goto_1
    iput v12, v10, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    .line 1049
    .end local v10    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .end local v11    # "newCrossSizeAsFloat":F
    .end local v12    # "newCrossSize":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1070
    .end local v4    # "totalCrossSize":I
    .end local v5    # "freeSpaceUnit":F
    .end local v7    # "accumulatedError":F
    .end local v8    # "i":I
    .end local v9    # "flexLinesSize":I
    :cond_4
    :goto_2
    return-void
.end method

.method determineMainSize(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 739
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/FlexboxHelper;->determineMainSize(III)V

    .line 740
    return-void
.end method

.method isOrderChangedFromLastMeasurement(Landroid/util/SparseIntArray;)Z
    .locals 8
    .param p1, "orderCache"    # Landroid/util/SparseIntArray;

    .line 134
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    .line 135
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 136
    return v2

    .line 138
    :cond_0
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 139
    iget-object v4, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v4, v3}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemAt(I)Landroid/view/View;

    move-result-object v4

    .line 140
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_1

    .line 141
    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/internal/FlexItem;

    .line 144
    .local v5, "flexItem":Lcom/google/android/material/internal/FlexItem;
    invoke-interface {v5}, Lcom/google/android/material/internal/FlexItem;->getOrder()I

    move-result v6

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 145
    return v2

    .line 138
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "flexItem":Lcom/google/android/material/internal/FlexItem;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method layoutSingleChildHorizontal(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/FlexItem;

    .line 1134
    .local v0, "flexItem":Lcom/google/android/material/internal/FlexItem;
    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v1

    add-int/2addr v1, p3

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexItem;->getMarginTop()I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {p1, p2, v1, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 1135
    return-void
.end method

.method stretchViews()V
    .locals 11

    .line 1073
    iget-object v0, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v0}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1074
    return-void

    .line 1076
    :cond_0
    const/4 v0, 0x0

    .line 1077
    .local v0, "flexLineIndex":I
    iget-object v1, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v1}, Lcom/google/android/material/internal/FlexContainer;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    .line 1078
    .local v1, "flexLines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/internal/FlexLine;>;"
    move v2, v0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 1079
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/FlexLine;

    .line 1080
    .local v4, "flexLine":Lcom/google/android/material/internal/FlexLine;
    const/4 v5, 0x0

    .local v5, "j":I
    iget v6, v4, Lcom/google/android/material/internal/FlexLine;->itemCount:I

    .local v6, "itemCount":I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 1081
    iget v7, v4, Lcom/google/android/material/internal/FlexLine;->firstIndex:I

    add-int/2addr v7, v5

    .line 1082
    .local v7, "viewIndex":I
    iget-object v8, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v8}, Lcom/google/android/material/internal/FlexContainer;->getFlexItemCount()I

    move-result v8

    if-lt v5, v8, :cond_1

    .line 1083
    goto :goto_2

    .line 1085
    :cond_1
    iget-object v8, p0, Lcom/google/android/material/internal/FlexboxHelper;->flexContainer:Lcom/google/android/material/internal/FlexContainer;

    invoke-interface {v8, v7}, Lcom/google/android/material/internal/FlexContainer;->getReorderedFlexItemAt(I)Landroid/view/View;

    move-result-object v8

    .line 1086
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    .line 1087
    goto :goto_2

    .line 1089
    :cond_2
    iget v9, v4, Lcom/google/android/material/internal/FlexLine;->crossSize:I

    invoke-direct {p0, v8, v9, v7}, Lcom/google/android/material/internal/FlexboxHelper;->stretchViewVertically(Landroid/view/View;II)V

    .line 1080
    .end local v7    # "viewIndex":I
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1078
    .end local v4    # "flexLine":Lcom/google/android/material/internal/FlexLine;
    .end local v5    # "j":I
    .end local v6    # "itemCount":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1092
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_5
    return-void
.end method

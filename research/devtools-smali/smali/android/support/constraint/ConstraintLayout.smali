.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ALLOWS_EMBEDDED:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final SIMPLE_LAYOUT:Z = true

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-1.1.0-beta1"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSet:Landroid/support/constraint/ConstraintSet;

.field private mConstraintSetId:I

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyHierarchy:Z

.field mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOptimizationLevel:I

.field private mTitle:Ljava/lang/String;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 460
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 397
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 405
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 407
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 409
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 410
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 411
    const p1, 0x7fffffff

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 412
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 414
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 415
    const/4 p1, 0x2

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 416
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 461
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 465
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 397
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 405
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 407
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 409
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 410
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 411
    const p1, 0x7fffffff

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 412
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 414
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 415
    const/4 p1, 0x2

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 416
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 419
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 421
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 466
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 467
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 470
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 397
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 400
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 405
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 407
    new-instance p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 409
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 410
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 411
    const p1, 0x7fffffff

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 412
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 414
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 415
    const/4 p1, 0x2

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    .line 416
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 419
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 421
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 471
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintLayout;->init(Landroid/util/AttributeSet;)V

    .line 472
    return-void
.end method

.method private final getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 1

    .line 982
    if-nez p1, :cond_0

    .line 983
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    .line 985
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 986
    if-ne p1, p0, :cond_1

    .line 987
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    .line 989
    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7

    .line 490
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 491
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 493
    if-eqz p1, :cond_8

    .line 494
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 496
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    .line 497
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 498
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 499
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    goto :goto_2

    .line 500
    :cond_0
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 501
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    goto :goto_2

    .line 502
    :cond_1
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 503
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    goto :goto_2

    .line 504
    :cond_2
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 505
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    goto :goto_2

    .line 506
    :cond_3
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 507
    iget v5, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_2

    .line 508
    :cond_4
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_title:I

    if-ne v4, v5, :cond_5

    .line 509
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/constraint/ConstraintLayout;->mTitle:Ljava/lang/String;

    goto :goto_2

    .line 510
    :cond_5
    sget v5, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_6

    .line 511
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 513
    :try_start_0
    new-instance v5, Landroid/support/constraint/ConstraintSet;

    invoke-direct {v5}, Landroid/support/constraint/ConstraintSet;-><init>()V

    iput-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 514
    iget-object v5, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/support/constraint/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    goto :goto_1

    .line 515
    :catch_0
    move-exception v5

    .line 516
    iput-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 518
    :goto_1
    iput v4, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    .line 496
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 523
    :cond_8
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 524
    return-void
.end method

.method private internalMeasureChildren(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1001
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1002
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1004
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v5

    .line 1005
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_f

    .line 1006
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1007
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1008
    goto/16 :goto_a

    .line 1010
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1011
    iget-object v10, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1012
    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v11, :cond_e

    iget-boolean v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-eqz v11, :cond_1

    .line 1013
    goto/16 :goto_a

    .line 1016
    :cond_1
    iget v11, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    .line 1017
    iget v12, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    .line 1021
    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v13, :cond_2

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-eq v13, v15, :cond_4

    :cond_2
    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v13, v14, :cond_4

    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v13, :cond_3

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-eq v13, v15, :cond_4

    iget v13, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v13, v14, :cond_3

    goto :goto_1

    .line 1031
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 1021
    :cond_4
    :goto_1
    nop

    .line 1031
    move v13, v15

    .line 1032
    :goto_2
    nop

    .line 1034
    if-eqz v13, :cond_b

    .line 1038
    const/4 v13, -0x2

    if-eqz v11, :cond_6

    if-ne v11, v14, :cond_5

    goto :goto_3

    .line 1043
    :cond_5
    invoke-static {v1, v4, v11}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 1046
    move/from16 v6, v16

    const/16 v16, 0x0

    goto :goto_4

    .line 1039
    :cond_6
    :goto_3
    invoke-static {v1, v4, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 1041
    nop

    .line 1046
    move/from16 v6, v16

    move/from16 v16, v15

    :goto_4
    if-eqz v12, :cond_8

    if-ne v12, v14, :cond_7

    goto :goto_5

    .line 1051
    :cond_7
    invoke-static {v2, v3, v12}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 1054
    move/from16 v15, v17

    const/16 v17, 0x0

    goto :goto_6

    .line 1047
    :cond_8
    :goto_5
    invoke-static {v2, v3, v13}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 1049
    nop

    .line 1054
    move/from16 v18, v17

    move/from16 v17, v15

    move/from16 v15, v18

    :goto_6
    invoke-virtual {v8, v6, v15}, Landroid/view/View;->measure(II)V

    .line 1056
    if-ne v11, v13, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidthWrapContent(Z)V

    .line 1057
    if-ne v12, v13, :cond_a

    const/4 v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeightWrapContent(Z)V

    .line 1058
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1059
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_9

    .line 1062
    :cond_b
    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_9
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1063
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1064
    if-eqz v16, :cond_c

    .line 1065
    invoke-virtual {v10, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapWidth(I)V

    .line 1067
    :cond_c
    if-eqz v17, :cond_d

    .line 1068
    invoke-virtual {v10, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWrapHeight(I)V

    .line 1071
    :cond_d
    iget-boolean v6, v9, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v6, :cond_e

    .line 1072
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1073
    if-eq v6, v14, :cond_e

    .line 1074
    invoke-virtual {v10, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1005
    :cond_e
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1078
    :cond_f
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v5, :cond_11

    .line 1079
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1080
    instance-of v3, v2, Landroid/support/constraint/Placeholder;

    if-eqz v3, :cond_10

    .line 1081
    check-cast v2, Landroid/support/constraint/Placeholder;

    invoke-virtual {v2, v0}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1078
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1085
    :cond_11
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1086
    if-lez v1, :cond_12

    .line 1087
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_12

    .line 1088
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintHelper;

    .line 1089
    invoke-virtual {v3, v0}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    .line 1087
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1092
    :cond_12
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 26

    .line 706
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 708
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v3

    .line 709
    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 713
    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    .line 714
    invoke-virtual {v1, v5}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 716
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 717
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v6, v0}, Landroid/support/constraint/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    goto :goto_1

    .line 718
    :catch_0
    move-exception v0

    .line 713
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 724
    :cond_0
    iget v0, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    .line 725
    move v0, v4

    :goto_2
    if-ge v0, v3, :cond_2

    .line 726
    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 727
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v7

    iget v8, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSetId:I

    if-ne v7, v8, :cond_1

    instance-of v7, v6, Landroid/support/constraint/Constraints;

    if-eqz v7, :cond_1

    .line 728
    check-cast v6, Landroid/support/constraint/Constraints;

    invoke-virtual {v6}, Landroid/support/constraint/Constraints;->getConstraintSet()Landroid/support/constraint/ConstraintSet;

    move-result-object v6

    iput-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 725
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 732
    :cond_2
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    if-eqz v0, :cond_3

    .line 733
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 736
    :cond_3
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 738
    iget-object v0, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 739
    if-lez v0, :cond_4

    .line 740
    move v6, v4

    :goto_3
    if-ge v6, v0, :cond_4

    .line 741
    iget-object v7, v1, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintHelper;

    .line 742
    invoke-virtual {v7, v1}, Landroid/support/constraint/ConstraintHelper;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 740
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 746
    :cond_4
    move v0, v4

    :goto_4
    if-ge v0, v3, :cond_6

    .line 747
    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 748
    instance-of v7, v6, Landroid/support/constraint/Placeholder;

    if-eqz v7, :cond_5

    .line 749
    check-cast v6, Landroid/support/constraint/Placeholder;

    invoke-virtual {v6, v1}, Landroid/support/constraint/Placeholder;->updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 746
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 752
    :cond_6
    move v0, v4

    :goto_5
    if-ge v0, v3, :cond_2d

    .line 753
    invoke-virtual {v1, v0}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 754
    invoke-virtual {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v13

    .line 755
    if-nez v13, :cond_7

    .line 756
    goto/16 :goto_11

    .line 758
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v14, v7

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 759
    invoke-virtual {v14}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->validate()V

    .line 760
    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    if-eqz v7, :cond_8

    .line 761
    iput-boolean v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->helped:Z

    goto :goto_6

    .line 763
    :cond_8
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->reset()V

    .line 765
    :goto_6
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 766
    iget-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v7, :cond_9

    .line 767
    const/16 v7, 0x8

    invoke-virtual {v13, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 769
    :cond_9
    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 770
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6, v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 772
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-eqz v6, :cond_a

    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v6, :cond_b

    .line 773
    :cond_a
    iget-object v6, v1, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_b
    iget-boolean v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v6, :cond_f

    .line 777
    check-cast v13, Landroid/support/constraint/solver/widgets/Guideline;

    .line 778
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    if-eq v6, v5, :cond_c

    .line 779
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 781
    :cond_c
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v6, v5, :cond_d

    .line 782
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 784
    :cond_d
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_e

    .line 785
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 787
    :cond_e
    goto/16 :goto_11

    :cond_f
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-ne v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-eq v6, v5, :cond_10

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v6, v5, :cond_2c

    .line 802
    :cond_10
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 803
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 804
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 805
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 806
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 807
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 808
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 810
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v15, v4, :cond_15

    .line 813
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 814
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 815
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 816
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 817
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 818
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 819
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 821
    if-ne v4, v5, :cond_12

    if-ne v6, v5, :cond_12

    .line 822
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v11, v5, :cond_11

    .line 823
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    goto :goto_7

    .line 824
    :cond_11
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v11, v5, :cond_12

    .line 825
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 828
    :cond_12
    :goto_7
    move/from16 v25, v6

    move v6, v4

    move/from16 v4, v25

    if-ne v8, v5, :cond_14

    if-ne v9, v5, :cond_14

    .line 829
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v11, v5, :cond_13

    .line 830
    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_8

    .line 831
    :cond_13
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v11, v5, :cond_14

    .line 832
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 838
    :cond_14
    :goto_8
    move v15, v8

    move v11, v9

    move/from16 v16, v10

    move v10, v12

    move v12, v7

    goto :goto_9

    :cond_15
    move v4, v7

    move v15, v8

    move/from16 v16, v11

    move v11, v9

    move/from16 v25, v12

    move v12, v10

    move/from16 v10, v25

    :goto_9
    if-eq v6, v5, :cond_17

    .line 839
    invoke-direct {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 840
    if-eqz v9, :cond_16

    .line 841
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v7, v13

    move/from16 v17, v10

    move-object v10, v4

    move v4, v11

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_a

    .line 845
    :cond_16
    move/from16 v17, v10

    move v4, v11

    .line 855
    :goto_a
    move v6, v4

    goto :goto_b

    .line 845
    :cond_17
    move/from16 v17, v10

    move v6, v11

    if-eq v4, v5, :cond_18

    .line 846
    invoke-direct {v1, v4}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 847
    if-eqz v9, :cond_18

    .line 848
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 855
    :cond_18
    :goto_b
    if-eq v15, v5, :cond_1a

    .line 856
    invoke-direct {v1, v15}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 857
    if-eqz v9, :cond_19

    .line 858
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 862
    :cond_19
    goto :goto_c

    :cond_1a
    if-eq v6, v5, :cond_1b

    .line 863
    invoke-direct {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 864
    if-eqz v9, :cond_1b

    .line 865
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object v7, v13

    move/from16 v12, v16

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 872
    :cond_1b
    :goto_c
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v4, v5, :cond_1d

    .line 873
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-direct {v1, v4}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 874
    if-eqz v9, :cond_1c

    .line 875
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 879
    :cond_1c
    goto :goto_d

    :cond_1d
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v4, v5, :cond_1e

    .line 880
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-direct {v1, v4}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 881
    if-eqz v9, :cond_1e

    .line 882
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 889
    :cond_1e
    :goto_d
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v4, v5, :cond_20

    .line 890
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-direct {v1, v4}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 891
    if-eqz v9, :cond_1f

    .line 892
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 896
    :cond_1f
    goto :goto_e

    :cond_20
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v4, v5, :cond_21

    .line 897
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-direct {v1, v4}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v9

    .line 898
    if-eqz v9, :cond_21

    .line 899
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    iget v11, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v12, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->immediateConnect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;II)V

    .line 906
    :cond_21
    :goto_e
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-eq v4, v5, :cond_22

    .line 907
    iget-object v4, v1, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 908
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-direct {v1, v6}, Landroid/support/constraint/ConstraintLayout;->getTargetWidget(I)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v6

    .line 909
    if-eqz v6, :cond_22

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v7, :cond_22

    .line 910
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 911
    const/4 v7, 0x1

    iput-boolean v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 912
    iput-boolean v7, v4, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 913
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v18

    .line 914
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 915
    invoke-virtual {v6, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v19

    .line 916
    const/16 v20, 0x0

    const/16 v21, -0x1

    sget-object v22, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    const/16 v23, 0x0

    const/16 v24, 0x1

    invoke-virtual/range {v18 .. v24}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor;IILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    .line 919
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 920
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->reset()V

    .line 924
    :cond_22
    const/4 v4, 0x0

    move/from16 v12, v17

    cmpl-float v6, v12, v4

    const/high16 v7, 0x3f000000    # 0.5f

    if-ltz v6, :cond_23

    cmpl-float v6, v12, v7

    if-eqz v6, :cond_23

    .line 925
    invoke-virtual {v13, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 927
    :cond_23
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v4, v6, v4

    if-ltz v4, :cond_24

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_24

    .line 928
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 931
    :cond_24
    if-eqz v2, :cond_26

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v4, v5, :cond_25

    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v4, v5, :cond_26

    .line 933
    :cond_25
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v13, v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 937
    :cond_26
    iget-boolean v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    if-nez v4, :cond_28

    .line 938
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    if-ne v4, v5, :cond_27

    .line 939
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 940
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v6, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 941
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v6, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_f

    .line 943
    :cond_27
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 944
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_f

    .line 947
    :cond_28
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 948
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 950
    :goto_f
    iget-boolean v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v4, :cond_2a

    .line 951
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    if-ne v4, v5, :cond_29

    .line 952
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 953
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    iput v6, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 954
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v4

    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v6, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 964
    const/4 v4, 0x0

    goto :goto_10

    .line 956
    :cond_29
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 957
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_10

    .line 960
    :cond_2a
    const/4 v4, 0x0

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 961
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 964
    :goto_10
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v6, :cond_2b

    .line 965
    iget-object v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 967
    :cond_2b
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 968
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 969
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 970
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v13, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 971
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 974
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v7, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v8, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v9, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v13, v6, v7, v8, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 752
    :cond_2c
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 979
    :cond_2d
    return-void
.end method

.method private setSelfDimensionBehaviour(II)V
    .locals 9

    .line 1257
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1258
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1259
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1260
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1262
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 1263
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1265
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1266
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1267
    nop

    .line 1268
    nop

    .line 1270
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1271
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    if-eq v0, v7, :cond_2

    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_0

    .line 1285
    :goto_0
    move p1, v8

    goto :goto_1

    .line 1282
    :cond_0
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v3

    goto :goto_1

    .line 1278
    :cond_1
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1280
    goto :goto_0

    .line 1273
    :cond_2
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1274
    nop

    .line 1276
    nop

    .line 1285
    :goto_1
    if-eq v1, v7, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    .line 1300
    :goto_2
    move p2, v8

    goto :goto_3

    .line 1296
    :cond_3
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, v2

    goto :goto_3

    .line 1292
    :cond_4
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1294
    goto :goto_2

    .line 1287
    :cond_5
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1288
    nop

    .line 1290
    nop

    .line 1300
    :goto_3
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1301
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1302
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1303
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1304
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1305
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1306
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1307
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget p2, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1308
    return-void
.end method

.method private updateHierarchy()V
    .locals 4

    .line 689
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 691
    nop

    .line 692
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 693
    invoke-virtual {p0, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 694
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    nop

    .line 696
    nop

    .line 699
    const/4 v1, 0x1

    goto :goto_1

    .line 692
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 700
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 701
    invoke-direct {p0}, Landroid/support/constraint/ConstraintLayout;->setChildrenConstraints()V

    .line 703
    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 531
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 532
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_0

    .line 533
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 535
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1430
    instance-of p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1414
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 384
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1406
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1422
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 450
    if-nez p1, :cond_0

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 451
    check-cast p2, Ljava/lang/String;

    .line 452
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 456
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 685
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 674
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 637
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 626
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1

    .line 1448
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .locals 0

    .line 994
    if-ne p1, p0, :cond_0

    .line 995
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-object p1

    .line 997
    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    :goto_0
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1329
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result p1

    .line 1330
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->isInEditMode()Z

    move-result p2

    .line 1331
    iget-object p3, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1332
    const/4 p4, 0x0

    if-lez p3, :cond_0

    .line 1333
    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_0

    .line 1334
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    .line 1335
    invoke-virtual {v0, p0}, Landroid/support/constraint/ConstraintHelper;->updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V

    .line 1333
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 1338
    :cond_0
    move p3, p4

    :goto_1
    if-ge p3, p1, :cond_4

    .line 1339
    invoke-virtual {p0, p3}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1340
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1341
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1343
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    .line 1346
    goto :goto_2

    .line 1348
    :cond_1
    iget-boolean v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v0, :cond_2

    .line 1349
    goto :goto_2

    .line 1351
    :cond_2
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    .line 1352
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v2

    .line 1353
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    .line 1354
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    .line 1372
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1373
    instance-of v4, p5, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_3

    .line 1374
    check-cast p5, Landroid/support/constraint/Placeholder;

    .line 1375
    invoke-virtual {p5}, Landroid/support/constraint/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    .line 1376
    if-eqz p5, :cond_3

    .line 1377
    invoke-virtual {p5, p4}, Landroid/view/View;->setVisibility(I)V

    .line 1378
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1338
    :cond_3
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 1382
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1099
    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingLeft()I

    move-result v3

    .line 1100
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingTop()I

    move-result v4

    .line 1102
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1103
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1104
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->setSelfDimensionBehaviour(II)V

    .line 1105
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    .line 1106
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    .line 1107
    iget-boolean v7, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    .line 1108
    iput-boolean v8, v0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1109
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->updateHierarchy()V

    .line 1111
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/support/constraint/ConstraintLayout;->internalMeasureChildren(II)V

    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    .line 1121
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    .line 1123
    :cond_1
    nop

    .line 1126
    iget-object v7, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1128
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingBottom()I

    move-result v9

    add-int/2addr v4, v9

    .line 1129
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->getPaddingRight()I

    move-result v9

    add-int/2addr v3, v9

    .line 1131
    if-lez v7, :cond_17

    .line 1132
    nop

    .line 1133
    iget-object v10, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v10

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v11, :cond_2

    .line 1135
    const/4 v10, 0x1

    goto :goto_0

    .line 1133
    :cond_2
    nop

    .line 1135
    move v10, v8

    :goto_0
    iget-object v11, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v13, :cond_3

    .line 1137
    const/4 v11, 0x1

    goto :goto_1

    .line 1135
    :cond_3
    nop

    .line 1137
    move v11, v8

    :goto_1
    iget-object v13, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v13

    iget v14, v0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1138
    iget-object v14, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v14}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    iget v15, v0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1139
    move v12, v8

    move v15, v13

    move v13, v12

    move v8, v14

    move v14, v13

    :goto_2
    if-ge v13, v7, :cond_f

    .line 1140
    iget-object v9, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1141
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v7

    move-object/from16 v7, v16

    check-cast v7, Landroid/view/View;

    .line 1142
    if-nez v7, :cond_4

    .line 1143
    nop

    .line 1139
    move/from16 v19, v5

    move/from16 v18, v6

    goto/16 :goto_5

    .line 1145
    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move/from16 v18, v6

    move-object/from16 v6, v16

    check-cast v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1146
    move/from16 v19, v5

    iget-boolean v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v5, :cond_e

    iget-boolean v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v5, :cond_5

    .line 1147
    goto/16 :goto_5

    .line 1149
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v0, 0x8

    if-ne v5, v0, :cond_6

    .line 1150
    goto/16 :goto_5

    .line 1153
    :cond_6
    nop

    .line 1154
    nop

    .line 1156
    iget v0, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_7

    .line 1157
    iget v0, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->width:I

    invoke-static {v1, v3, v0}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1161
    const/high16 v5, 0x40000000    # 2.0f

    goto :goto_3

    .line 1159
    :cond_7
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1161
    :goto_3
    iget v5, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v5, v1, :cond_8

    .line 1162
    iget v1, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->height:I

    invoke-static {v2, v4, v1}, Landroid/support/constraint/ConstraintLayout;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_4

    .line 1164
    :cond_8
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1168
    :goto_4
    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1170
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1171
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1172
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    if-eq v0, v5, :cond_a

    .line 1173
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1174
    if-eqz v10, :cond_9

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v0

    if-le v0, v15, :cond_9

    .line 1175
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v0

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1176
    invoke-virtual {v9, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v0, v5

    .line 1177
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1179
    move v15, v0

    .line 1181
    :cond_9
    const/4 v14, 0x1

    :cond_a
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-eq v1, v0, :cond_c

    .line 1182
    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1183
    if-eqz v11, :cond_b

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    if-le v0, v8, :cond_b

    .line 1184
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v0

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 1185
    invoke-virtual {v9, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 1186
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1188
    move v8, v0

    .line 1190
    :cond_b
    const/4 v14, 0x1

    :cond_c
    iget-boolean v0, v6, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_d

    .line 1191
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 1192
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 1193
    invoke-virtual {v9, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 1194
    nop

    .line 1198
    const/4 v14, 0x1

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_e

    .line 1199
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v12, v0}, Landroid/support/constraint/ConstraintLayout;->combineMeasuredStates(II)I

    move-result v12

    .line 1139
    :cond_e
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v17

    move/from16 v6, v18

    move/from16 v5, v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto/16 :goto_2

    .line 1202
    :cond_f
    move/from16 v19, v5

    move/from16 v18, v6

    move/from16 v17, v7

    if-eqz v14, :cond_12

    .line 1203
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v5, v19

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1204
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move/from16 v5, v18

    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1205
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    .line 1206
    nop

    .line 1207
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    if-ge v1, v15, :cond_10

    .line 1208
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1209
    nop

    .line 1211
    const/4 v1, 0x1

    goto :goto_6

    :cond_10
    const/4 v1, 0x0

    :goto_6
    iget-object v5, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    if-ge v5, v8, :cond_11

    .line 1212
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1213
    nop

    .line 1215
    const/4 v1, 0x1

    :cond_11
    if-eqz v1, :cond_13

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/ConstraintLayout;->solveLinearSystem()V

    goto :goto_7

    .line 1219
    :cond_12
    move-object/from16 v0, p0

    :cond_13
    :goto_7
    const/4 v1, 0x0

    :goto_8
    move/from16 v5, v17

    if-ge v1, v5, :cond_18

    .line 1220
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1221
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1222
    if-nez v7, :cond_15

    .line 1223
    nop

    .line 1219
    :cond_14
    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_9

    .line 1225
    :cond_15
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    if-ne v8, v9, :cond_16

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    if-eq v8, v9, :cond_14

    .line 1226
    :cond_16
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1227
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1228
    invoke-virtual {v7, v8, v6}, Landroid/view/View;->measure(II)V

    .line 1219
    :goto_9
    add-int/lit8 v1, v1, 0x1

    move/from16 v17, v5

    goto :goto_8

    .line 1233
    :cond_17
    const/4 v12, 0x0

    :cond_18
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    add-int/2addr v1, v3

    .line 1234
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    .line 1236
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1b

    .line 1237
    move/from16 v4, p1

    invoke-static {v1, v4, v12}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v1

    .line 1238
    shl-int/lit8 v4, v12, 0x10

    invoke-static {v3, v2, v4}, Landroid/support/constraint/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 1240
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1241
    iget v3, v0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1242
    const v3, 0xffffff

    and-int/2addr v1, v3

    .line 1243
    and-int/2addr v2, v3

    .line 1244
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v3

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_19

    .line 1245
    or-int/2addr v1, v4

    .line 1247
    :cond_19
    iget-object v3, v0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1248
    or-int/2addr v2, v4

    .line 1250
    :cond_1a
    invoke-virtual {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1251
    goto :goto_a

    .line 1252
    :cond_1b
    invoke-virtual {v0, v1, v3}, Landroid/support/constraint/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1254
    :goto_a
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 553
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 554
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 556
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 557
    instance-of v1, p1, Landroid/support/constraint/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 558
    instance-of v0, v0, Landroid/support/constraint/solver/widgets/Guideline;

    if-nez v0, :cond_1

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 560
    new-instance v1, Landroid/support/constraint/solver/widgets/Guideline;

    invoke-direct {v1}, Landroid/support/constraint/solver/widgets/Guideline;-><init>()V

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 561
    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 562
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v1, Landroid/support/constraint/solver/widgets/Guideline;

    iget v0, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setOrientation(I)V

    .line 565
    :cond_1
    instance-of v0, p1, Landroid/support/constraint/ConstraintHelper;

    if-eqz v0, :cond_2

    .line 566
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/ConstraintHelper;

    .line 567
    invoke-virtual {v0}, Landroid/support/constraint/ConstraintHelper;->validateParams()V

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 569
    iput-boolean v2, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 570
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 571
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 575
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 576
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 583
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 584
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 586
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 587
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->remove(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 588
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 590
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 542
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 543
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 544
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 546
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2213
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->mDirtyHierarchy:Z

    .line 2215
    return-void
.end method

.method public setConstraintSet(Landroid/support/constraint/ConstraintSet;)V
    .locals 0

    .line 1438
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mConstraintSet:Landroid/support/constraint/ConstraintSet;

    .line 1439
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 432
    if-nez p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 433
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 434
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 436
    :cond_0
    check-cast p2, Ljava/lang/String;

    .line 437
    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 438
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 439
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 441
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 442
    iget-object p3, p0, Landroid/support/constraint/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 476
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 477
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 478
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 659
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 660
    return-void

    .line 662
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxHeight:I

    .line 663
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 664
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 646
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 647
    return-void

    .line 649
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMaxWidth:I

    .line 650
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 651
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 611
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 612
    return-void

    .line 614
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinHeight:I

    .line 615
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 616
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 598
    iget v0, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 599
    return-void

    .line 601
    :cond_0
    iput p1, p0, Landroid/support/constraint/ConstraintLayout;->mMinWidth:I

    .line 602
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintLayout;->requestLayout()V

    .line 603
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1398
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1399
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 482
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->mTitle:Ljava/lang/String;

    .line 483
    return-void
.end method

.method protected solveLinearSystem()V
    .locals 1

    .line 1317
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->mLayoutWidget:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 1322
    return-void
.end method

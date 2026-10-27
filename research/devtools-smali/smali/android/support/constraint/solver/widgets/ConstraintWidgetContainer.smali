.class public Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
.super Landroid/support/constraint/solver/widgets/WidgetContainer;
.source "ConstraintWidgetContainer.java"


# static fields
.field static ALLOW_ROOT_GROUP:Z = false

.field private static final CHAIN_FIRST:I = 0x0

.field private static final CHAIN_FIRST_VISIBLE:I = 0x2

.field private static final CHAIN_LAST:I = 0x1

.field private static final CHAIN_LAST_VISIBLE:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_OPTIMIZE:Z = false

.field private static final FLAG_CHAIN_DANGLING:I = 0x1

.field private static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field private static final FLAG_USE_OPTIMIZE:I = 0x0

.field private static final MAX_ITERATIONS:I = 0x8

.field public static final OPTIMIZATION_ALL:I = 0x2

.field public static final OPTIMIZATION_BASIC:I = 0x4

.field public static final OPTIMIZATION_CHAIN:I = 0x8

.field public static final OPTIMIZATION_NONE:I = 0x1

.field private static final USE_SNAPSHOT:Z = true

.field private static final USE_THREAD:Z = false


# instance fields
.field private flags:[Z

.field protected mBackgroundSystem:Landroid/support/constraint/solver/LinearSystem;

.field private mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mHeightMeasuredTooSmall:Z

.field private mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mHorizontalChainsSize:I

.field private mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field private mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

.field protected mSystem:Landroid/support/constraint/solver/LinearSystem;

.field private mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

.field private mVerticalChainsSize:I

.field private mWidthMeasuredTooSmall:Z

.field mWrapHeight:I

.field mWrapWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->ALLOW_ROOT_GROUP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>()V

    .line 39
    new-instance v0, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {v0}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBackgroundSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 55
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    const/4 v1, 0x4

    new-array v2, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 57
    new-array v2, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 58
    new-array v2, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 66
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 69
    const/4 v2, 0x3

    new-array v2, v2, [Z

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    .line 76
    new-array v1, v1, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 82
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 93
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>(II)V

    .line 39
    new-instance p1, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {p1}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 40
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBackgroundSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 54
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 55
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    const/4 p2, 0x4

    new-array v0, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 57
    new-array v0, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 58
    new-array v0, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    .line 76
    new-array p2, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 82
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 115
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/constraint/solver/widgets/WidgetContainer;-><init>(IIII)V

    .line 39
    new-instance p1, Landroid/support/constraint/solver/LinearSystem;

    invoke-direct {p1}, Landroid/support/constraint/solver/LinearSystem;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 40
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBackgroundSystem:Landroid/support/constraint/solver/LinearSystem;

    .line 54
    const/4 p1, 0x0

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 55
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 56
    const/4 p2, 0x4

    new-array p3, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 57
    new-array p3, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 58
    new-array p3, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 66
    const/4 p3, 0x2

    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 69
    const/4 p3, 0x3

    new-array p3, p3, [Z

    iput-object p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    .line 76
    new-array p2, p2, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 82
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 83
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 105
    return-void
.end method

.method private addHorizontalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 2

    .line 1904
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-ge v0, v1, :cond_1

    .line 1905
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1906
    return-void

    .line 1904
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1909
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1910
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1912
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    aput-object p1, v0, v1

    .line 1913
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1914
    return-void
.end method

.method private addVerticalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .locals 2

    .line 1923
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-ge v0, v1, :cond_1

    .line 1924
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1925
    return-void

    .line 1923
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1928
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1929
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1931
    :cond_2
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    aput-object p1, v0, v1

    .line 1932
    iget p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1933
    return-void
.end method

.method private applyHorizontalChain(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 34

    move-object/from16 v6, p0

    .line 361
    move-object/from16 v15, p1

    const/4 v14, 0x0

    move v13, v14

    :goto_0
    iget v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-ge v13, v0, :cond_38

    .line 362
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v0, v13

    .line 363
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v0, v13

    const/4 v4, 0x0

    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    move-object v0, v6

    move-object v1, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->countMatchConstraintsChainedWidgets(Landroid/support/constraint/solver/LinearSystem;[Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;I[Z)I

    move-result v0

    .line 365
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 366
    if-nez v1, :cond_1

    .line 368
    nop

    .line 361
    :cond_0
    :goto_1
    move v4, v13

    move/from16 v19, v14

    move-object v3, v15

    goto/16 :goto_1d

    .line 370
    :cond_1
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    .line 371
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v0

    .line 372
    :goto_2
    if-eqz v1, :cond_0

    .line 373
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 374
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 375
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 376
    nop

    .line 377
    nop

    .line 372
    move-object v1, v2

    goto :goto_2

    .line 380
    :cond_2
    iget v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v3, :cond_3

    .line 381
    move v3, v4

    goto :goto_3

    .line 380
    :cond_3
    nop

    .line 381
    move v3, v14

    :goto_3
    iget v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-ne v5, v2, :cond_4

    .line 382
    move v5, v4

    goto :goto_4

    .line 381
    :cond_4
    nop

    .line 382
    move v5, v14

    .line 383
    :goto_4
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_5

    .line 384
    move v7, v4

    goto :goto_5

    .line 383
    :cond_5
    nop

    .line 384
    move v7, v14

    :goto_5
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eq v8, v2, :cond_6

    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7

    :cond_6
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aget-boolean v8, v8, v14

    if-eqz v8, :cond_7

    iget-boolean v8, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    if-eqz v8, :cond_7

    if-nez v5, :cond_7

    if-nez v7, :cond_7

    iget v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v7, :cond_7

    .line 388
    invoke-static {v6, v15, v0, v12}, Landroid/support/constraint/solver/widgets/Optimizer;->applyDirectResolutionHorizontalChain(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_1

    .line 390
    :cond_7
    const/16 v16, 0x0

    const/4 v11, 0x3

    if-eqz v0, :cond_20

    if-eqz v5, :cond_8

    goto/16 :goto_f

    .line 489
    :cond_8
    nop

    .line 490
    const/4 v3, 0x0

    .line 491
    move v5, v3

    move-object/from16 v3, v16

    :goto_6
    if-eqz v1, :cond_11

    .line 492
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v8, :cond_e

    .line 493
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    .line 494
    if-eqz v3, :cond_9

    .line 495
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v7, v3

    .line 497
    :cond_9
    nop

    .line 498
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_a

    .line 499
    nop

    .line 501
    move v3, v2

    goto :goto_7

    :cond_a
    move v3, v11

    :goto_7
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v8, v9, v7, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 502
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 503
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_b

    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v7, v1, :cond_b

    .line 504
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    .line 506
    :cond_b
    nop

    .line 507
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_c

    .line 508
    nop

    .line 510
    move v7, v2

    goto :goto_8

    :cond_c
    move v7, v11

    :goto_8
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 511
    iget-object v9, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v11

    if-ne v1, v9, :cond_d

    .line 512
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 513
    nop

    .line 515
    move v7, v11

    :cond_d
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    invoke-virtual {v15, v9, v8, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 516
    goto :goto_a

    .line 517
    :cond_e
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    add-float/2addr v5, v3

    .line 518
    nop

    .line 519
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_f

    .line 520
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 521
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v11

    if-eq v1, v7, :cond_10

    .line 522
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_9

    .line 525
    :cond_f
    move v3, v14

    :cond_10
    :goto_9
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v7, v8, v14, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 526
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    invoke-virtual {v15, v7, v8, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 528
    :goto_a
    nop

    .line 529
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 491
    move-object/from16 v33, v3

    move-object v3, v1

    move-object/from16 v1, v33

    goto/16 :goto_6

    .line 531
    :cond_11
    if-ne v0, v4, :cond_16

    .line 532
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, v14

    .line 533
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 534
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_12

    .line 535
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v1, v3

    .line 537
    :cond_12
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 538
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_13

    .line 539
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v3, v5

    .line 541
    :cond_13
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 542
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v11

    if-ne v0, v7, :cond_14

    .line 543
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 546
    :cond_14
    iget v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v7, v4, :cond_15

    .line 547
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v0, v7, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 548
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 549
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_b

    .line 551
    :cond_15
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v2, v7, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 552
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 554
    :goto_b
    goto/16 :goto_1

    .line 555
    :cond_16
    move v1, v14

    :goto_c
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 556
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v1

    .line 557
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    add-int/lit8 v1, v1, 0x1

    aget-object v8, v8, v1

    .line 558
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 559
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 560
    iget-object v14, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 561
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 562
    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v11

    if-ne v8, v4, :cond_17

    .line 563
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 565
    :cond_17
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 566
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_18

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_18

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v11, v7, :cond_18

    .line 568
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v4, v11

    .line 570
    :cond_18
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v28, v0

    const/4 v0, 0x2

    invoke-virtual {v15, v9, v11, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 571
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 572
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1a

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_1a

    .line 573
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_19

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    goto :goto_d

    :cond_19
    const/4 v4, 0x0

    :goto_d
    add-int/2addr v0, v4

    .line 575
    :cond_1a
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v0, v0

    const/4 v11, 0x2

    invoke-virtual {v15, v10, v4, v0, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 576
    if-ne v1, v3, :cond_1e

    .line 578
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 579
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1b

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1b

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v8, :cond_1b

    .line 581
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v0, v3

    .line 583
    :cond_1b
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v4, 0x2

    invoke-virtual {v15, v14, v3, v0, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 584
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 585
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-ne v8, v3, :cond_1c

    .line 586
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 588
    :cond_1c
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 589
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1d

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1d

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v8, :cond_1d

    .line 591
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v3, v4

    .line 593
    :cond_1d
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    const/4 v4, 0x2

    invoke-virtual {v15, v2, v0, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_e

    .line 596
    :cond_1e
    const/4 v4, 0x2

    :goto_e
    iget v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v0, :cond_1f

    .line 597
    iget v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-virtual {v15, v10, v9, v0, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 600
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 601
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    iget v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWeight:F

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 603
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 604
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 605
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 606
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 601
    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v14

    move-object/from16 v26, v2

    invoke-virtual/range {v16 .. v27}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 607
    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 555
    move/from16 v0, v28

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_c

    .line 391
    :cond_20
    :goto_f
    nop

    .line 392
    nop

    .line 393
    nop

    .line 396
    nop

    .line 397
    nop

    .line 398
    move-object v0, v1

    move-object/from16 v2, v16

    move-object v4, v2

    const/4 v7, 0x0

    :goto_10
    if-eqz v0, :cond_34

    .line 399
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 400
    if-nez v8, :cond_21

    .line 401
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v7, 0x1

    aget-object v2, v2, v7

    .line 402
    nop

    .line 404
    move-object v14, v2

    const/4 v2, 0x1

    goto :goto_11

    :cond_21
    move-object v14, v2

    move v2, v7

    :goto_11
    if-eqz v5, :cond_26

    .line 405
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 406
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 407
    if-eqz v4, :cond_22

    .line 408
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 409
    add-int/2addr v9, v4

    .line 411
    :cond_22
    nop

    .line 412
    if-eq v1, v0, :cond_23

    .line 413
    nop

    .line 415
    const/4 v4, 0x3

    goto :goto_12

    :cond_23
    const/4 v4, 0x1

    :goto_12
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v10, v11, v9, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 416
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_25

    .line 417
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 418
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_24

    .line 419
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 420
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x3

    invoke-virtual {v15, v4, v7, v9, v11}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 422
    goto :goto_13

    .line 423
    :cond_24
    const/4 v11, 0x3

    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {v15, v9, v10, v6, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 425
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-virtual {v15, v4, v6, v7, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_13

    .line 429
    :cond_25
    const/4 v11, 0x3

    :goto_13
    goto :goto_14

    .line 430
    :cond_26
    const/4 v11, 0x3

    const/4 v6, 0x5

    if-nez v3, :cond_28

    if-eqz v2, :cond_28

    if-eqz v4, :cond_28

    .line 431
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_27

    .line 432
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawRight()I

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_14

    .line 434
    :cond_27
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 435
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v4, v4

    invoke-virtual {v15, v7, v9, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 436
    goto :goto_14

    .line 437
    :cond_28
    if-nez v3, :cond_2a

    if-nez v2, :cond_2a

    if-nez v4, :cond_2a

    .line 438
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_29

    .line 439
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_14

    .line 441
    :cond_29
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 442
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v7, v9, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 443
    nop

    .line 472
    :goto_14
    move-object/from16 v29, v0

    move/from16 v30, v3

    move-object v0, v12

    move v4, v13

    move-object/from16 v18, v14

    move-object v3, v15

    const/16 v19, 0x0

    goto/16 :goto_1a

    .line 446
    :cond_2a
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 447
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 448
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 449
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 450
    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v30, v3

    const/4 v3, 0x1

    invoke-virtual {v15, v11, v0, v10, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 451
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v31, v13

    neg-int v13, v9

    invoke-virtual {v15, v0, v11, v13, v3}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 452
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2b

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_15

    .line 453
    :cond_2b
    move-object/from16 v0, v16

    :goto_15
    if-nez v4, :cond_2d

    .line 455
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2c

    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_16

    .line 457
    :cond_2c
    move-object/from16 v0, v16

    :cond_2d
    :goto_16
    if-nez v8, :cond_2f

    .line 458
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_2e

    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 460
    move-object v8, v3

    goto :goto_17

    .line 458
    :cond_2e
    nop

    .line 460
    move-object/from16 v8, v16

    :cond_2f
    :goto_17
    move-object v3, v8

    if-eqz v3, :cond_32

    .line 461
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 462
    if-eqz v2, :cond_31

    .line 463
    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_30

    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_18

    .line 465
    :cond_30
    move-object/from16 v4, v16

    :cond_31
    :goto_18
    if-eqz v0, :cond_32

    if-eqz v4, :cond_32

    .line 466
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v13, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v6, 0x4

    move-object v7, v15

    move/from16 v17, v9

    move-object v9, v0

    const/4 v0, 0x3

    move-object v0, v12

    move-object v12, v4

    move/from16 v4, v31

    move-object/from16 v18, v14

    const/16 v19, 0x0

    move/from16 v14, v17

    move-object/from16 v32, v3

    move-object v3, v15

    move v15, v6

    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_19

    .line 472
    :cond_32
    move-object/from16 v32, v3

    move-object v0, v12

    move-object/from16 v18, v14

    move-object v3, v15

    move/from16 v4, v31

    const/16 v19, 0x0

    :goto_19
    move-object/from16 v8, v32

    .line 473
    :goto_1a
    if-eqz v2, :cond_33

    .line 398
    move-object/from16 v8, v16

    :cond_33
    move-object v12, v0

    move v7, v2

    move-object v15, v3

    move v13, v4

    move-object v0, v8

    move-object/from16 v2, v18

    move-object/from16 v4, v29

    move/from16 v3, v30

    move-object/from16 v6, p0

    goto/16 :goto_10

    .line 475
    :cond_34
    move-object v0, v12

    move v4, v13

    move-object v3, v15

    const/16 v19, 0x0

    if-eqz v5, :cond_37

    .line 476
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 477
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 478
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 479
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 480
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_35

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 481
    move-object v9, v6

    goto :goto_1b

    .line 480
    :cond_35
    nop

    .line 481
    move-object/from16 v9, v16

    :goto_1b
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_36

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 482
    move-object v12, v2

    goto :goto_1c

    .line 481
    :cond_36
    nop

    .line 482
    move-object/from16 v12, v16

    :goto_1c
    if-eqz v9, :cond_37

    if-eqz v12, :cond_37

    .line 483
    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v6, v14

    const/4 v7, 0x1

    invoke-virtual {v3, v2, v12, v6, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 484
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iget-object v13, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v15, 0x4

    move-object v7, v3

    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 488
    :cond_37
    nop

    .line 361
    :goto_1d
    add-int/lit8 v13, v4, 0x1

    move-object v15, v3

    move/from16 v14, v19

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 613
    :cond_38
    return-void
.end method

.method private applyVerticalChain(Landroid/support/constraint/solver/LinearSystem;)V
    .locals 34

    move-object/from16 v6, p0

    .line 622
    move-object/from16 v15, p1

    const/4 v14, 0x0

    move v13, v14

    :goto_0
    iget v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-ge v13, v0, :cond_3b

    .line 623
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v0, v13

    .line 624
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v0, v13

    const/4 v4, 0x1

    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    move-object v0, v6

    move-object v1, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->countMatchConstraintsChainedWidgets(Landroid/support/constraint/solver/LinearSystem;[Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;I[Z)I

    move-result v0

    .line 626
    iget-object v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 627
    if-nez v1, :cond_1

    .line 629
    nop

    .line 622
    :cond_0
    :goto_1
    move v4, v13

    move/from16 v19, v14

    move-object v3, v15

    goto/16 :goto_1e

    .line 631
    :cond_1
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    .line 632
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v0

    .line 633
    :goto_2
    if-eqz v1, :cond_0

    .line 634
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 635
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 636
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    add-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 637
    nop

    .line 638
    nop

    .line 633
    move-object v1, v2

    goto :goto_2

    .line 641
    :cond_2
    iget v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v3, :cond_3

    .line 642
    move v3, v4

    goto :goto_3

    .line 641
    :cond_3
    nop

    .line 642
    move v3, v14

    :goto_3
    iget v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-ne v5, v2, :cond_4

    .line 643
    move v5, v4

    goto :goto_4

    .line 642
    :cond_4
    nop

    .line 643
    move v5, v14

    .line 644
    :goto_4
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_5

    .line 645
    move v7, v4

    goto :goto_5

    .line 644
    :cond_5
    nop

    .line 645
    move v7, v14

    :goto_5
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eq v8, v2, :cond_6

    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7

    :cond_6
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aget-boolean v8, v8, v14

    if-eqz v8, :cond_7

    iget-boolean v8, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    if-eqz v8, :cond_7

    if-nez v5, :cond_7

    if-nez v7, :cond_7

    iget v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v7, :cond_7

    .line 649
    invoke-static {v6, v15, v0, v12}, Landroid/support/constraint/solver/widgets/Optimizer;->applyDirectResolutionVerticalChain(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_1

    .line 651
    :cond_7
    const/4 v11, 0x3

    const/16 v16, 0x0

    if-eqz v0, :cond_20

    if-eqz v5, :cond_8

    goto/16 :goto_f

    .line 762
    :cond_8
    nop

    .line 763
    const/4 v3, 0x0

    .line 764
    move v5, v3

    move-object/from16 v3, v16

    :goto_6
    if-eqz v1, :cond_11

    .line 765
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v8, :cond_e

    .line 766
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    .line 767
    if-eqz v3, :cond_9

    .line 768
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v7, v3

    .line 770
    :cond_9
    nop

    .line 771
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_a

    .line 772
    nop

    .line 774
    move v3, v2

    goto :goto_7

    :cond_a
    move v3, v11

    :goto_7
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v8, v9, v7, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 775
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 776
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_b

    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v7, v1, :cond_b

    .line 777
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    .line 779
    :cond_b
    nop

    .line 780
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_c

    .line 781
    nop

    .line 783
    move v7, v2

    goto :goto_8

    :cond_c
    move v7, v11

    :goto_8
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 784
    iget-object v9, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v11

    if-ne v1, v9, :cond_d

    .line 785
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 786
    nop

    .line 788
    move v7, v11

    :cond_d
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    invoke-virtual {v15, v9, v8, v3, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 789
    goto :goto_a

    .line 790
    :cond_e
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    add-float/2addr v5, v3

    .line 791
    nop

    .line 792
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_f

    .line 793
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 794
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v11

    if-eq v1, v7, :cond_10

    .line 795
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_9

    .line 798
    :cond_f
    move v3, v14

    :cond_10
    :goto_9
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v7, v8, v14, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 799
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    invoke-virtual {v15, v7, v8, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 801
    :goto_a
    nop

    .line 802
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 764
    move-object/from16 v33, v3

    move-object v3, v1

    move-object/from16 v1, v33

    goto/16 :goto_6

    .line 804
    :cond_11
    if-ne v0, v4, :cond_16

    .line 805
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v0, v0, v14

    .line 806
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    .line 807
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_12

    .line 808
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v1, v3

    .line 810
    :cond_12
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 811
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_13

    .line 812
    iget-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v3, v5

    .line 814
    :cond_13
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 815
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v11

    if-ne v0, v7, :cond_14

    .line 816
    iget-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 819
    :cond_14
    iget v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v7, v4, :cond_15

    .line 820
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v0, v7, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 821
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 822
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v15, v0, v1, v3, v2}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_b

    .line 824
    :cond_15
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v2, v7, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 825
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v1, v3

    invoke-virtual {v15, v0, v5, v1, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 827
    :goto_b
    goto/16 :goto_1

    .line 828
    :cond_16
    move v1, v14

    :goto_c
    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    .line 829
    iget-object v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v1

    .line 830
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    add-int/lit8 v1, v1, 0x1

    aget-object v8, v8, v1

    .line 831
    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 832
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 833
    iget-object v14, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 834
    iget-object v2, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 835
    iget-object v4, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v4, v4, v11

    if-ne v8, v4, :cond_17

    .line 836
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 838
    :cond_17
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 839
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_18

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_18

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v11, v7, :cond_18

    .line 841
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v11

    add-int/2addr v4, v11

    .line 843
    :cond_18
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v28, v0

    const/4 v0, 0x2

    invoke-virtual {v15, v9, v11, v4, v0}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 844
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 845
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1a

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v4, :cond_1a

    .line 846
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_19

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    goto :goto_d

    :cond_19
    const/4 v4, 0x0

    :goto_d
    add-int/2addr v0, v4

    .line 848
    :cond_1a
    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v0, v0

    const/4 v11, 0x2

    invoke-virtual {v15, v10, v4, v0, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 849
    if-ne v1, v3, :cond_1e

    .line 851
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    .line 852
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1b

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_1b

    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v8, :cond_1b

    .line 854
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v0, v3

    .line 856
    :cond_1b
    iget-object v3, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v4, 0x2

    invoke-virtual {v15, v14, v3, v0, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 857
    iget-object v0, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 858
    iget-object v3, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    if-ne v8, v3, :cond_1c

    .line 859
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 861
    :cond_1c
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    .line 862
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1d

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1d

    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v4, v8, :cond_1d

    .line 864
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v3, v4

    .line 866
    :cond_1d
    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v3, v3

    const/4 v4, 0x2

    invoke-virtual {v15, v2, v0, v3, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_e

    .line 869
    :cond_1e
    const/4 v4, 0x2

    :goto_e
    iget v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v0, :cond_1f

    .line 870
    iget v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-virtual {v15, v10, v9, v0, v4}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 873
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/LinearSystem;->createRow()Landroid/support/constraint/solver/ArrayRow;

    move-result-object v0

    .line 874
    iget v3, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    iget v11, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWeight:F

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 876
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v21

    iget-object v4, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 877
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 878
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v25

    iget-object v4, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 879
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v27

    .line 874
    move-object/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v11

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v14

    move-object/from16 v26, v2

    invoke-virtual/range {v16 .. v27}, Landroid/support/constraint/solver/ArrayRow;->createRowEqualDimension(FFFLandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;ILandroid/support/constraint/solver/SolverVariable;I)Landroid/support/constraint/solver/ArrayRow;

    .line 880
    invoke-virtual {v15, v0}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 828
    move/from16 v0, v28

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v11, 0x3

    const/4 v14, 0x0

    goto/16 :goto_c

    .line 652
    :cond_20
    :goto_f
    nop

    .line 653
    nop

    .line 654
    nop

    .line 657
    nop

    .line 658
    nop

    .line 659
    move-object v0, v1

    move-object/from16 v2, v16

    move-object v4, v2

    const/4 v7, 0x0

    :goto_10
    if-eqz v0, :cond_37

    .line 660
    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 661
    if-nez v8, :cond_21

    .line 662
    iget-object v2, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChainEnds:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v7, 0x1

    aget-object v2, v2, v7

    .line 663
    nop

    .line 665
    move-object v14, v2

    const/4 v2, 0x1

    goto :goto_11

    :cond_21
    move-object v14, v2

    move v2, v7

    :goto_11
    if-eqz v5, :cond_29

    .line 666
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 667
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 668
    if-eqz v4, :cond_22

    .line 669
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 670
    add-int/2addr v9, v4

    .line 672
    :cond_22
    nop

    .line 673
    if-eq v1, v0, :cond_23

    .line 674
    nop

    .line 676
    const/4 v4, 0x3

    goto :goto_12

    :cond_23
    const/4 v4, 0x1

    .line 677
    :goto_12
    nop

    .line 678
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_24

    .line 679
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 680
    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_13

    .line 681
    :cond_24
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_25

    .line 682
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 683
    iget-object v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 684
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v17

    sub-int v9, v9, v17

    goto :goto_13

    .line 686
    :cond_25
    move-object/from16 v10, v16

    move-object v11, v10

    :goto_13
    if-eqz v10, :cond_26

    if-eqz v11, :cond_26

    .line 687
    invoke-virtual {v15, v10, v11, v9, v4}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 689
    :cond_26
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_28

    .line 690
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 691
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_27

    .line 692
    iget v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 693
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v11, 0x3

    invoke-virtual {v15, v4, v7, v9, v11}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 695
    goto :goto_14

    .line 696
    :cond_27
    const/4 v11, 0x3

    iget-object v9, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    invoke-virtual {v15, v9, v10, v6, v11}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 698
    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-virtual {v15, v4, v6, v7, v11}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_14

    .line 702
    :cond_28
    const/4 v11, 0x3

    :goto_14
    goto :goto_15

    .line 703
    :cond_29
    const/4 v11, 0x3

    const/4 v6, 0x5

    if-nez v3, :cond_2b

    if-eqz v2, :cond_2b

    if-eqz v4, :cond_2b

    .line 704
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_2a

    .line 705
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawBottom()I

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_15

    .line 707
    :cond_2a
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 708
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v4, v4

    invoke-virtual {v15, v7, v9, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 709
    goto :goto_15

    .line 710
    :cond_2b
    if-nez v3, :cond_2d

    if-nez v2, :cond_2d

    if-nez v4, :cond_2d

    .line 711
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v4, :cond_2c

    .line 712
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v6

    invoke-virtual {v15, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    goto :goto_15

    .line 714
    :cond_2c
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    .line 715
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v9, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v15, v7, v9, v4, v6}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 716
    nop

    .line 745
    :goto_15
    move-object/from16 v29, v0

    move/from16 v30, v3

    move-object v0, v12

    move v4, v13

    move-object/from16 v18, v14

    move-object v3, v15

    const/16 v19, 0x0

    goto/16 :goto_1b

    .line 719
    :cond_2d
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 720
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 721
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 722
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    .line 723
    iget-object v11, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move-object/from16 v29, v0

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v30, v3

    const/4 v3, 0x1

    invoke-virtual {v15, v11, v0, v10, v3}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 724
    iget-object v0, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v11, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    move/from16 v31, v13

    neg-int v13, v9

    invoke-virtual {v15, v0, v11, v13, v3}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 725
    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2e

    iget-object v0, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_16

    .line 726
    :cond_2e
    move-object/from16 v0, v16

    :goto_16
    if-nez v4, :cond_30

    .line 728
    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_2f

    iget-object v0, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_17

    .line 730
    :cond_2f
    move-object/from16 v0, v16

    :cond_30
    :goto_17
    if-nez v8, :cond_32

    .line 731
    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_31

    iget-object v3, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 733
    move-object v8, v3

    goto :goto_18

    .line 731
    :cond_31
    nop

    .line 733
    move-object/from16 v8, v16

    :cond_32
    :goto_18
    move-object v3, v8

    if-eqz v3, :cond_35

    .line 734
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 735
    if-eqz v2, :cond_34

    .line 736
    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v4, :cond_33

    iget-object v4, v14, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    goto :goto_19

    .line 738
    :cond_33
    move-object/from16 v4, v16

    :cond_34
    :goto_19
    if-eqz v0, :cond_35

    if-eqz v4, :cond_35

    .line 739
    iget-object v8, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/high16 v11, 0x3f000000    # 0.5f

    iget-object v13, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v6, 0x4

    move-object v7, v15

    move/from16 v17, v9

    move-object v9, v0

    const/4 v0, 0x3

    move-object v0, v12

    move-object v12, v4

    move/from16 v4, v31

    move-object/from16 v18, v14

    const/16 v19, 0x0

    move/from16 v14, v17

    move-object/from16 v32, v3

    move-object v3, v15

    move v15, v6

    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_1a

    .line 745
    :cond_35
    move-object/from16 v32, v3

    move-object v0, v12

    move-object/from16 v18, v14

    move-object v3, v15

    move/from16 v4, v31

    const/16 v19, 0x0

    :goto_1a
    move-object/from16 v8, v32

    .line 746
    :goto_1b
    if-eqz v2, :cond_36

    .line 659
    move-object/from16 v8, v16

    :cond_36
    move-object v12, v0

    move v7, v2

    move-object v15, v3

    move v13, v4

    move-object v0, v8

    move-object/from16 v2, v18

    move-object/from16 v4, v29

    move/from16 v3, v30

    move-object/from16 v6, p0

    goto/16 :goto_10

    .line 748
    :cond_37
    move-object v0, v12

    move v4, v13

    move-object v3, v15

    const/16 v19, 0x0

    if-eqz v5, :cond_3a

    .line 749
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 750
    iget-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 751
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    .line 752
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v14

    .line 753
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_38

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 754
    move-object v9, v6

    goto :goto_1c

    .line 753
    :cond_38
    nop

    .line 754
    move-object/from16 v9, v16

    :goto_1c
    iget-object v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_39

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 755
    move-object v12, v2

    goto :goto_1d

    .line 754
    :cond_39
    nop

    .line 755
    move-object/from16 v12, v16

    :goto_1d
    if-eqz v9, :cond_3a

    if-eqz v12, :cond_3a

    .line 756
    iget-object v2, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    neg-int v6, v14

    const/4 v7, 0x1

    invoke-virtual {v3, v2, v12, v6, v7}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 757
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget-object v13, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    const/4 v15, 0x4

    move-object v7, v3

    invoke-virtual/range {v7 .. v15}, Landroid/support/constraint/solver/LinearSystem;->addCentering(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IFLandroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 761
    :cond_3a
    nop

    .line 622
    :goto_1e
    add-int/lit8 v13, v4, 0x1

    move-object v15, v3

    move/from16 v14, v19

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 886
    :cond_3b
    return-void
.end method

.method private countMatchConstraintsChainedWidgets(Landroid/support/constraint/solver/LinearSystem;[Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget;I[Z)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1941
    nop

    .line 1942
    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-boolean v3, p5, v4

    .line 1943
    aput-boolean v4, p5, v3

    .line 1944
    const/4 v5, 0x0

    aput-object v5, p2, v4

    .line 1945
    const/4 v6, 0x2

    aput-object v5, p2, v6

    .line 1946
    aput-object v5, p2, v3

    .line 1947
    const/4 v7, 0x3

    aput-object v5, p2, v7

    .line 1949
    const/4 v8, 0x0

    const/4 v9, 0x5

    const/16 v10, 0x8

    if-nez p4, :cond_f

    .line 1950
    nop

    .line 1951
    nop

    .line 1952
    nop

    .line 1953
    iget-object v11, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v11, :cond_0

    iget-object v11, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v11, v0, :cond_0

    .line 1954
    nop

    .line 1956
    move v11, v4

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    iput-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1957
    nop

    .line 1958
    invoke-virtual/range {p3 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_1

    .line 1959
    nop

    .line 1961
    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object v12, v5

    .line 1962
    :goto_1
    move v14, v4

    move-object v3, v5

    move-object v7, v12

    move-object v13, v7

    move-object v12, v2

    :goto_2
    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_b

    .line 1963
    iput-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1964
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    if-eq v6, v10, :cond_4

    .line 1965
    if-nez v13, :cond_2

    .line 1966
    nop

    .line 1968
    move-object v13, v12

    :cond_2
    if-eqz v7, :cond_3

    if-eq v7, v12, :cond_3

    .line 1969
    iput-object v12, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1971
    :cond_3
    nop

    .line 1976
    move-object v7, v12

    goto :goto_3

    .line 1973
    :cond_4
    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v6, v5, v4, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 1974
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v5, v6, v4, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 1976
    :goto_3
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_7

    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_7

    .line 1977
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_5

    .line 1978
    aput-boolean v4, p5, v4

    .line 1980
    :cond_5
    iget v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_7

    .line 1981
    aput-boolean v4, p5, v4

    .line 1982
    add-int/lit8 v5, v14, 0x1

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v6, v6

    if-lt v5, v6, :cond_6

    .line 1983
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v8, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v8, v8

    const/4 v15, 0x2

    mul-int/2addr v8, v15

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1985
    :cond_6
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v12, v6, v14

    .line 1988
    move v14, v5

    :cond_7
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_8

    .line 1989
    goto :goto_4

    .line 1991
    :cond_8
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v5, v12, :cond_9

    .line 1992
    goto :goto_4

    .line 1994
    :cond_9
    iget-object v5, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v5, v12, :cond_a

    .line 1995
    goto :goto_4

    .line 1997
    :cond_a
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1998
    nop

    .line 1962
    move-object v12, v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2000
    :cond_b
    :goto_4
    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_c

    iget-object v1, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v1, v0, :cond_c

    .line 2001
    nop

    .line 2003
    move v11, v4

    :cond_c
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_e

    iget-object v0, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v0, :cond_d

    goto :goto_5

    .line 2008
    :cond_d
    const/4 v0, 0x1

    goto :goto_6

    .line 2004
    :cond_e
    :goto_5
    const/4 v0, 0x1

    aput-boolean v0, p5, v0

    .line 2008
    :goto_6
    iput-boolean v11, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    .line 2009
    const/4 v1, 0x0

    iput-object v1, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2010
    aput-object v2, p2, v4

    .line 2011
    const/4 v1, 0x2

    aput-object v13, p2, v1

    .line 2012
    aput-object v3, p2, v0

    .line 2013
    const/4 v0, 0x3

    aput-object v7, p2, v0

    .line 2014
    goto/16 :goto_f

    .line 2015
    :cond_f
    nop

    .line 2016
    nop

    .line 2017
    nop

    .line 2018
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_10

    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v0, :cond_10

    .line 2019
    nop

    .line 2021
    move v3, v4

    goto :goto_7

    :cond_10
    const/4 v3, 0x1

    :goto_7
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2022
    nop

    .line 2023
    invoke-virtual/range {p3 .. p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_11

    .line 2024
    nop

    .line 2026
    move-object v5, v2

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    .line 2027
    :goto_8
    move v8, v4

    move-object v6, v5

    move-object v7, v6

    const/4 v11, 0x0

    move-object v5, v2

    :goto_9
    iget-object v12, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v12, :cond_1c

    .line 2028
    const/4 v12, 0x0

    iput-object v12, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2029
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_14

    .line 2030
    if-nez v6, :cond_12

    .line 2031
    nop

    .line 2033
    move-object v6, v5

    :cond_12
    if-eqz v7, :cond_13

    if-eq v7, v5, :cond_13

    .line 2034
    iput-object v5, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2036
    :cond_13
    nop

    .line 2041
    move-object v7, v5

    goto :goto_a

    .line 2038
    :cond_14
    iget-object v12, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v13, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v12, v13, v4, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2039
    iget-object v12, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v12, v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v13, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {v1, v12, v13, v4, v9}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 2041
    :goto_a
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_17

    iget-object v12, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v13, :cond_17

    .line 2042
    iget-object v12, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v13, :cond_15

    .line 2043
    aput-boolean v4, p5, v4

    .line 2045
    :cond_15
    iget v12, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_18

    .line 2046
    aput-boolean v4, p5, v4

    .line 2047
    add-int/lit8 v12, v8, 0x1

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v9, v9

    if-lt v12, v9, :cond_16

    .line 2048
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    array-length v10, v10

    const/4 v14, 0x2

    mul-int/2addr v10, v14

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iput-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2050
    :cond_16
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMatchConstraintsChainedWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aput-object v5, v9, v8

    .line 2053
    move v8, v12

    goto :goto_b

    :cond_17
    const/4 v13, 0x0

    :cond_18
    :goto_b
    iget-object v9, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v9, :cond_19

    .line 2054
    goto :goto_c

    .line 2056
    :cond_19
    iget-object v9, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v9, v5, :cond_1a

    .line 2057
    goto :goto_c

    .line 2059
    :cond_1a
    iget-object v9, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v9, v5, :cond_1b

    .line 2060
    goto :goto_c

    .line 2062
    :cond_1b
    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v11, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2063
    nop

    .line 2027
    move-object v5, v11

    const/4 v9, 0x5

    const/16 v10, 0x8

    goto/16 :goto_9

    .line 2065
    :cond_1c
    :goto_c
    move v14, v8

    iget-object v1, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_1d

    iget-object v1, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v1, v0, :cond_1d

    .line 2066
    nop

    .line 2068
    move v3, v4

    :cond_1d
    iget-object v0, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v0, :cond_1f

    iget-object v0, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v0, :cond_1e

    goto :goto_d

    .line 2073
    :cond_1e
    const/4 v0, 0x1

    goto :goto_e

    .line 2069
    :cond_1f
    :goto_d
    const/4 v0, 0x1

    aput-boolean v0, p5, v0

    .line 2073
    :goto_e
    iput-boolean v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    .line 2074
    const/4 v1, 0x0

    iput-object v1, v11, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 2075
    aput-object v2, p2, v4

    .line 2076
    const/4 v1, 0x2

    aput-object v6, p2, v1

    .line 2077
    aput-object v11, p2, v0

    .line 2078
    const/4 v0, 0x3

    aput-object v7, p2, v0

    .line 2080
    :goto_f
    return v14
.end method

.method public static createContainer(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;Ljava/util/ArrayList;I)Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;I)",
            "Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;"
        }
    .end annotation

    .line 172
    invoke-static {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getBounds(Ljava/util/ArrayList;)Landroid/support/constraint/solver/widgets/Rectangle;

    move-result-object v0

    .line 173
    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    if-nez v1, :cond_0

    goto :goto_2

    .line 176
    :cond_0
    if-lez p3, :cond_2

    .line 177
    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    iget v2, v0, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 178
    if-le p3, v1, :cond_1

    .line 179
    nop

    .line 181
    move p3, v1

    :cond_1
    invoke-virtual {v0, p3, p3}, Landroid/support/constraint/solver/widgets/Rectangle;->grow(II)V

    .line 183
    :cond_2
    iget p3, v0, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    invoke-virtual {p0, p3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOrigin(II)V

    .line 184
    iget p3, v0, Landroid/support/constraint/solver/widgets/Rectangle;->width:I

    iget v1, v0, Landroid/support/constraint/solver/widgets/Rectangle;->height:I

    invoke-virtual {p0, p3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setDimension(II)V

    .line 185
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setDebugName(Ljava/lang/String;)V

    .line 187
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p3

    .line 188
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_4

    .line 189
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 190
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    if-eq v3, p3, :cond_3

    .line 191
    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 194
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v3

    iget v4, v0, Landroid/support/constraint/solver/widgets/Rectangle;->x:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setX(I)V

    .line 195
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v3

    iget v4, v0, Landroid/support/constraint/solver/widgets/Rectangle;->y:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setY(I)V

    .line 188
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 197
    :cond_4
    return-object p0

    .line 174
    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private optimize(Landroid/support/constraint/solver/LinearSystem;)Z
    .locals 13

    .line 263
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    nop

    .line 265
    nop

    .line 266
    nop

    .line 267
    nop

    .line 268
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    .line 269
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 271
    iput v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 272
    iput v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 273
    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v6, :cond_0

    iget-object v3, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_1

    .line 275
    :cond_0
    iput v4, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 276
    iput v4, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 278
    :cond_1
    instance-of v3, v5, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v3, :cond_2

    .line 279
    iput v4, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 280
    iput v4, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 268
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_3
    move v2, v1

    move v5, v2

    move v6, v5

    :goto_1
    if-nez v2, :cond_d

    .line 284
    nop

    .line 285
    nop

    .line 286
    nop

    .line 287
    nop

    .line 288
    nop

    .line 292
    move v7, v1

    move v8, v7

    move v9, v8

    :goto_2
    if-ge v7, v0, :cond_a

    .line 293
    iget-object v10, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 294
    iget v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    if-ne v11, v3, :cond_5

    .line 295
    iget-object v11, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_4

    .line 296
    iput v4, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    goto :goto_3

    .line 298
    :cond_4
    invoke-static {p0, p1, v10}, Landroid/support/constraint/solver/widgets/Optimizer;->checkHorizontalSimpleDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 301
    :cond_5
    :goto_3
    iget v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    if-ne v11, v3, :cond_7

    .line 302
    iget-object v11, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_6

    .line 303
    iput v4, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    goto :goto_4

    .line 305
    :cond_6
    invoke-static {p0, p1, v10}, Landroid/support/constraint/solver/widgets/Optimizer;->checkVerticalSimpleDependency(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 313
    :cond_7
    :goto_4
    iget v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    if-ne v11, v3, :cond_8

    .line 314
    add-int/lit8 v8, v8, 0x1

    .line 316
    :cond_8
    iget v10, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    if-ne v10, v3, :cond_9

    .line 317
    add-int/lit8 v9, v9, 0x1

    .line 292
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 323
    :cond_a
    if-nez v8, :cond_b

    if-nez v9, :cond_b

    .line 324
    nop

    .line 331
    :goto_5
    move v2, v4

    goto :goto_6

    .line 325
    :cond_b
    if-ne v5, v8, :cond_c

    if-ne v6, v9, :cond_c

    .line 326
    goto :goto_5

    .line 331
    :cond_c
    :goto_6
    nop

    .line 283
    move v5, v8

    move v6, v9

    goto :goto_1

    .line 333
    :cond_d
    nop

    .line 334
    nop

    .line 335
    move p1, v1

    move v2, p1

    move v5, v2

    :goto_7
    if-ge p1, v0, :cond_12

    .line 336
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 337
    iget v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    if-eq v7, v4, :cond_e

    iget v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    if-ne v7, v3, :cond_f

    .line 339
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 341
    :cond_f
    iget v7, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    if-eq v7, v4, :cond_10

    iget v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    if-ne v6, v3, :cond_11

    .line 343
    :cond_10
    add-int/lit8 v5, v5, 0x1

    .line 335
    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 346
    :cond_12
    if-nez v2, :cond_13

    if-nez v5, :cond_13

    .line 347
    return v4

    .line 349
    :cond_13
    return v1
.end method

.method private resetChains()V
    .locals 1

    .line 1864
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 1865
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 1866
    return-void
.end method

.method static setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I
    .locals 2

    .line 1172
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1173
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1174
    return p1

    .line 1176
    :cond_0
    if-gt v0, p1, :cond_1

    .line 1177
    return v0

    .line 1180
    :cond_1
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1181
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 1182
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1184
    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result p1

    .line 1185
    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v1, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result p1

    .line 1186
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result p1

    .line 1188
    :cond_4
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1190
    return p1
.end method


# virtual methods
.method addChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V
    .locals 1

    .line 1875
    nop

    .line 1876
    if-nez p2, :cond_1

    .line 1878
    :goto_0
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_0

    .line 1882
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_0

    .line 1884
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    goto :goto_2

    .line 1885
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 1887
    :goto_1
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-ne p2, v0, :cond_2

    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_2

    .line 1891
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    goto :goto_1

    .line 1893
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1895
    :cond_3
    :goto_2
    return-void
.end method

.method public addChildrenToSolver(Landroid/support/constraint/solver/LinearSystem;I)Z
    .locals 8

    .line 210
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 211
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 212
    nop

    .line 213
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    nop

    .line 222
    move v1, v2

    goto :goto_1

    .line 215
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->optimize(Landroid/support/constraint/solver/LinearSystem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    return v3

    .line 222
    :cond_2
    move v1, v3

    :goto_1
    if-ge v3, v0, :cond_9

    .line 223
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 224
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_7

    .line 225
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 226
    iget-object v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 227
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_3

    .line 228
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 230
    :cond_3
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_4

    .line 231
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 233
    :cond_4
    invoke-virtual {v4, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 234
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_5

    .line 235
    invoke-virtual {v4, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 237
    :cond_5
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v5, :cond_6

    .line 238
    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 240
    :cond_6
    goto :goto_2

    .line 241
    :cond_7
    if-eqz v1, :cond_8

    .line 242
    invoke-static {p0, p1, v4}, Landroid/support/constraint/solver/widgets/Optimizer;->checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 244
    :cond_8
    invoke-virtual {v4, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 222
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 247
    :cond_9
    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez p2, :cond_a

    .line 248
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->applyHorizontalChain(Landroid/support/constraint/solver/LinearSystem;)V

    .line 250
    :cond_a
    iget p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez p2, :cond_b

    .line 251
    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->applyVerticalChain(Landroid/support/constraint/solver/LinearSystem;)V

    .line 253
    :cond_b
    return v2
.end method

.method public findHorizontalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V
    .locals 7

    .line 1213
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 1216
    aput-boolean v3, p2, v3

    .line 1217
    return-void

    .line 1219
    :cond_0
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1221
    aput-boolean v3, p2, v3

    .line 1222
    return-void

    .line 1224
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapWidth()I

    move-result v0

    .line 1226
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v4, :cond_2

    .line 1227
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v4, :cond_2

    iget v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1229
    aput-boolean v3, p2, v3

    .line 1230
    return-void

    .line 1236
    :cond_2
    nop

    .line 1237
    nop

    .line 1238
    nop

    .line 1239
    nop

    .line 1240
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 1242
    instance-of v2, p1, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v2, :cond_7

    .line 1243
    move-object v2, p1

    check-cast v2, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1244
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v4

    if-ne v4, v1, :cond_6

    .line 1245
    nop

    .line 1246
    nop

    .line 1247
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1248
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result p2

    .line 1256
    move v0, v3

    move v3, p2

    goto :goto_0

    .line 1249
    :cond_3
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 1250
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result p2

    .line 1256
    move v0, p2

    goto :goto_0

    .line 1251
    :cond_4
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativePercent()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 1252
    aput-boolean v3, p2, v3

    .line 1253
    return-void

    .line 1256
    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    move v3, v0

    .line 1319
    :goto_0
    move v5, v0

    goto/16 :goto_9

    .line 1256
    :cond_7
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1257
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result p2

    add-int v3, v0, p2

    goto :goto_0

    .line 1259
    :cond_8
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_9

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_9

    iget-boolean v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    if-eqz v2, :cond_9

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_9

    .line 1262
    aput-boolean v3, p2, v3

    .line 1263
    return-void

    .line 1265
    :cond_9
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_b

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v2, :cond_b

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v2, v4, :cond_a

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v2, v4, :cond_b

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v2, v4, :cond_b

    .line 1269
    :cond_a
    aput-boolean v3, p2, v3

    .line 1270
    return-void

    .line 1272
    :cond_b
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    .line 1273
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1274
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v5, v0

    .line 1275
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v6

    if-nez v6, :cond_d

    iget-boolean v6, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    if-nez v6, :cond_d

    .line 1276
    invoke-virtual {p0, v2, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findHorizontalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    goto :goto_1

    .line 1279
    :cond_c
    move v5, v0

    move-object v2, v4

    :cond_d
    :goto_1
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_e

    .line 1280
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1281
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v0, v6

    .line 1282
    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v6

    if-nez v6, :cond_e

    iget-boolean v6, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    if-nez v6, :cond_e

    .line 1283
    invoke-virtual {p0, v4, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findHorizontalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1287
    :cond_e
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_14

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result p2

    if-nez p2, :cond_14

    .line 1288
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mType:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p2, v6, :cond_f

    .line 1289
    iget p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapWidth()I

    move-result v6

    sub-int/2addr p2, v6

    add-int/2addr v5, p2

    goto :goto_2

    .line 1290
    :cond_f
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p2, v6, :cond_10

    .line 1291
    iget p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    add-int/2addr v5, p2

    .line 1294
    :cond_10
    :goto_2
    iget-boolean p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    if-nez p2, :cond_12

    iget-object p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_11

    iget-object p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_11

    iget-object p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v6, :cond_11

    goto :goto_3

    :cond_11
    move p2, v3

    goto :goto_4

    :cond_12
    :goto_3
    move p2, v1

    :goto_4
    iput-boolean p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 1297
    iget-boolean p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    if-eqz p2, :cond_14

    iget-object p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez p2, :cond_13

    goto :goto_5

    :cond_13
    iget-object p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_14

    .line 1299
    :goto_5
    iget p2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    sub-int p2, v5, p2

    add-int/2addr v5, p2

    .line 1303
    :cond_14
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_1a

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result p2

    if-nez p2, :cond_1a

    .line 1304
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p2, v2, :cond_15

    .line 1305
    iget p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapWidth()I

    move-result v2

    sub-int/2addr p2, v2

    add-int/2addr v0, p2

    goto :goto_6

    .line 1306
    :cond_15
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p2

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p2, v2, :cond_16

    .line 1307
    iget p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    add-int/2addr v0, p2

    .line 1310
    :cond_16
    :goto_6
    iget-boolean p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    if-nez p2, :cond_18

    iget-object p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_17

    iget-object p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_17

    iget-object p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v2, :cond_17

    goto :goto_7

    :cond_17
    move v1, v3

    nop

    :cond_18
    :goto_7
    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 1313
    iget-boolean p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    if-eqz p2, :cond_1a

    iget-object p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez p2, :cond_19

    goto :goto_8

    :cond_19
    iget-object p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_1a

    .line 1315
    :goto_8
    iget p2, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    sub-int p2, v0, p2

    add-int v3, v0, p2

    goto :goto_9

    .line 1319
    :cond_1a
    move v3, v0

    :goto_9
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1b

    .line 1320
    iget p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    sub-int/2addr v3, p2

    .line 1321
    iget p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWidth:I

    sub-int/2addr v5, p2

    .line 1323
    :cond_1b
    iput v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    .line 1324
    iput v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    .line 1325
    return-void
.end method

.method public findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V
    .locals 8

    .line 1328
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1329
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1331
    aput-boolean v2, p2, v2

    .line 1332
    return-void

    .line 1338
    :cond_0
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1340
    aput-boolean v2, p2, v2

    .line 1341
    return-void

    .line 1344
    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapHeight()I

    move-result v0

    .line 1346
    nop

    .line 1347
    nop

    .line 1348
    nop

    .line 1349
    nop

    .line 1350
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 1352
    instance-of v3, p1, Landroid/support/constraint/solver/widgets/Guideline;

    const/16 v4, 0x8

    if-eqz v3, :cond_6

    .line 1353
    move-object v1, p1

    check-cast v1, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1354
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v3

    if-nez v3, :cond_5

    .line 1355
    nop

    .line 1356
    nop

    .line 1357
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 1358
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeBegin()I

    move-result p2

    .line 1366
    move v0, v2

    move v2, p2

    goto :goto_0

    .line 1359
    :cond_2
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result v0

    if-eq v0, v3, :cond_3

    .line 1360
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativeEnd()I

    move-result p2

    .line 1366
    move v0, p2

    goto :goto_0

    .line 1361
    :cond_3
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/Guideline;->getRelativePercent()F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 1362
    aput-boolean v2, p2, v2

    .line 1363
    return-void

    .line 1366
    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v2, v0

    .line 1447
    :goto_0
    move v6, v2

    goto/16 :goto_9

    .line 1366
    :cond_6
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_7

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_7

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_7

    .line 1367
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result p2

    add-int v2, v0, p2

    goto :goto_0

    .line 1369
    :cond_7
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_8

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_8

    iget-boolean v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    if-eqz v3, :cond_8

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_8

    .line 1372
    aput-boolean v2, p2, v2

    .line 1373
    return-void

    .line 1375
    :cond_8
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_a

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_a

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eq v3, v5, :cond_9

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-ne v3, v5, :cond_a

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v3, v5, :cond_a

    .line 1379
    :cond_9
    aput-boolean v2, p2, v2

    .line 1380
    return-void

    .line 1382
    :cond_a
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1383
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    .line 1384
    iget-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    if-nez v2, :cond_b

    .line 1385
    invoke-virtual {p0, v1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1387
    :cond_b
    iget p2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr p2, v2

    add-int/2addr p2, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1388
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    iget v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1389
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 1390
    iget v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr p2, v1

    .line 1391
    iget v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr v0, v1

    .line 1393
    :cond_c
    iput p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    .line 1394
    iput v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    .line 1395
    return-void

    .line 1397
    :cond_d
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_e

    .line 1398
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v3

    .line 1399
    iget-object v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v6, v0

    .line 1400
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v7

    if-nez v7, :cond_f

    iget-boolean v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    if-nez v7, :cond_f

    .line 1401
    invoke-virtual {p0, v3, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    goto :goto_1

    .line 1404
    :cond_e
    move v6, v0

    move-object v3, v5

    :cond_f
    :goto_1
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1405
    iget-object v5, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOwner()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v5

    .line 1406
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v0, v7

    .line 1407
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v7

    if-nez v7, :cond_10

    iget-boolean v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    if-nez v7, :cond_10

    .line 1408
    invoke-virtual {p0, v5, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1412
    :cond_10
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_16

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result p2

    if-nez p2, :cond_16

    .line 1413
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p2, v7, :cond_11

    .line 1414
    iget p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapHeight()I

    move-result v7

    sub-int/2addr p2, v7

    add-int/2addr v6, p2

    goto :goto_2

    .line 1415
    :cond_11
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p2, v7, :cond_12

    .line 1416
    iget p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    add-int/2addr v6, p2

    .line 1419
    :cond_12
    :goto_2
    iget-boolean p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    if-nez p2, :cond_14

    iget-object p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_13

    iget-object p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_13

    iget-object p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_13

    iget-object p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_13

    iget-object p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v7, :cond_13

    goto :goto_3

    :cond_13
    move p2, v2

    goto :goto_4

    :cond_14
    :goto_3
    move p2, v1

    :goto_4
    iput-boolean p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 1424
    iget-boolean p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    if-eqz p2, :cond_16

    iget-object p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez p2, :cond_15

    goto :goto_5

    :cond_15
    iget-object p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_16

    .line 1426
    :goto_5
    iget p2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    sub-int p2, v6, p2

    add-int/2addr v6, p2

    .line 1429
    :cond_16
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_1c

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result p2

    if-nez p2, :cond_1c

    .line 1430
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p2, v3, :cond_17

    .line 1431
    iget p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getOptimizerWrapHeight()I

    move-result v3

    sub-int/2addr p2, v3

    add-int/2addr v0, p2

    goto :goto_6

    .line 1432
    :cond_17
    iget-object p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getType()Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    move-result-object p2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    if-ne p2, v3, :cond_18

    .line 1433
    iget p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    add-int/2addr v0, p2

    .line 1436
    :cond_18
    :goto_6
    iget-boolean p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    if-nez p2, :cond_1a

    iget-object p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_19

    iget-object p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_19

    iget-object p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz p2, :cond_19

    iget-object p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_19

    iget-object p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p2, v3, :cond_19

    goto :goto_7

    :cond_19
    move v1, v2

    nop

    :cond_1a
    :goto_7
    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 1441
    iget-boolean p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    if-eqz p2, :cond_1c

    iget-object p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez p2, :cond_1b

    goto :goto_8

    :cond_1b
    iget-object p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq p2, p1, :cond_1c

    .line 1443
    :goto_8
    iget p2, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    sub-int p2, v0, p2

    add-int/2addr v0, p2

    .line 1447
    :cond_1c
    :goto_9
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result p2

    if-ne p2, v4, :cond_1d

    .line 1448
    iget p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr v6, p2

    .line 1449
    iget p2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHeight:I

    sub-int/2addr v0, p2

    .line 1452
    :cond_1d
    iput v6, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    .line 1453
    iput v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    .line 1454
    return-void
.end method

.method public findWrapSize(Ljava/util/ArrayList;[Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;[Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1462
    move-object/from16 v2, p2

    .line 1463
    nop

    .line 1464
    nop

    .line 1465
    nop

    .line 1467
    nop

    .line 1468
    nop

    .line 1469
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1470
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-boolean v4, v2, v5

    .line 1473
    move v4, v5

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v4, v3, :cond_a

    .line 1474
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1475
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isRoot()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1476
    goto/16 :goto_5

    .line 1478
    :cond_0
    iget-boolean v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    if-nez v13, :cond_1

    .line 1479
    invoke-virtual {v0, v12, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findHorizontalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1481
    :cond_1
    aget-boolean v13, v2, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v13, :cond_3

    .line 1515
    move v0, v5

    :goto_1
    if-ge v0, v3, :cond_2

    .line 1516
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1517
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 1518
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 1519
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 1520
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 1521
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 1522
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1482
    :cond_2
    return-void

    .line 1484
    :cond_3
    :try_start_1
    iget-boolean v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    if-nez v13, :cond_4

    .line 1485
    invoke-virtual {v0, v12, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findVerticalWrapRecursive(Landroid/support/constraint/solver/widgets/ConstraintWidget;[Z)V

    .line 1487
    :cond_4
    aget-boolean v13, v2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_6

    .line 1515
    move v0, v5

    :goto_2
    if-ge v0, v3, :cond_5

    .line 1516
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1517
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 1518
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 1519
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 1520
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 1521
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 1522
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1488
    :cond_5
    return-void

    .line 1490
    :cond_6
    :try_start_2
    iget v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    add-int/2addr v13, v14

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    .line 1491
    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    iget v15, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    add-int/2addr v14, v15

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1492
    iget-object v15, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v5, :cond_7

    .line 1493
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v5, v13

    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v5, v13

    goto :goto_3

    .line 1495
    :cond_7
    move v5, v13

    :goto_3
    iget-object v13, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v15, :cond_8

    .line 1496
    nop

    .line 1497
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    iget-object v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v13, v14

    iget-object v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v14, v14, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    add-int/2addr v13, v14

    goto :goto_4

    .line 1499
    :cond_8
    move v13, v14

    :goto_4
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_9

    .line 1500
    nop

    .line 1501
    nop

    .line 1503
    const/4 v5, 0x0

    const/4 v13, 0x0

    :cond_9
    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToLeft:I

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1504
    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToRight:I

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1505
    iget v14, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToBottom:I

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1506
    iget v12, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDistToTop:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1507
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1508
    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1473
    move v11, v8

    move v8, v5

    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1515
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 1510
    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1511
    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapWidth:I

    .line 1512
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1513
    iget v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1515
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_b

    .line 1516
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1517
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 1518
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 1519
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 1520
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 1521
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 1522
    iput-boolean v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 1515
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1524
    :cond_b
    nop

    .line 1525
    return-void

    .line 1515
    :goto_7
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_c

    .line 1516
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1517
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    .line 1518
    iput-boolean v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    .line 1519
    iput-boolean v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeftHasCentered:Z

    .line 1520
    iput-boolean v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRightHasCentered:Z

    .line 1521
    iput-boolean v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTopHasCentered:Z

    .line 1522
    iput-boolean v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottomHasCentered:Z

    .line 1515
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    throw v0
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 1843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1844
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1845
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1846
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    .line 1847
    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1848
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v4

    if-nez v4, :cond_0

    .line 1849
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1853
    :cond_1
    return-object v0
.end method

.method public getSystem()Landroid/support/constraint/solver/LinearSystem;
    .locals 1

    .line 1857
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "ConstraintLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 1824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1825
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1826
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1827
    instance-of v4, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    .line 1828
    check-cast v3, Landroid/support/constraint/solver/widgets/Guideline;

    .line 1829
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1830
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1834
    :cond_1
    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    .line 1811
    const/4 v0, 0x0

    return v0
.end method

.method public isHeightMeasuredTooSmall()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    return v0
.end method

.method public layout()V
    .locals 18

    .line 931
    move-object/from16 v1, p0

    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 932
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 933
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 934
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 935
    iput-boolean v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 936
    iput-boolean v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 938
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    if-nez v0, :cond_0

    .line 940
    new-instance v0, Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-direct {v0, v1}, Landroid/support/constraint/solver/widgets/Snapshot;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    .line 942
    :cond_0
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/Snapshot;->updateFrom(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 947
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 948
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 949
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetAnchors()V

    .line 950
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->getCache()Landroid/support/constraint/solver/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    goto :goto_0

    .line 952
    :cond_1
    iput v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 953
    iput v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 956
    :goto_0
    nop

    .line 957
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 958
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 964
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v0, v9, :cond_8

    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v11, :cond_2

    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v11, :cond_8

    .line 968
    :cond_2
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    invoke-virtual {v1, v0, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->findWrapSize(Ljava/util/ArrayList;[Z)V

    .line 969
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aget-boolean v0, v0, v4

    .line 973
    if-lez v5, :cond_4

    if-lez v6, :cond_4

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapWidth:I

    if-gt v11, v5, :cond_3

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapHeight:I

    if-le v11, v6, :cond_4

    .line 976
    :cond_3
    nop

    .line 978
    move v0, v4

    :cond_4
    if-eqz v0, :cond_9

    .line 979
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_6

    .line 980
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 981
    if-lez v5, :cond_5

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapWidth:I

    if-ge v5, v11, :cond_5

    .line 982
    iput-boolean v10, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 983
    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    goto :goto_1

    .line 985
    :cond_5
    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    iget v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapWidth:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 988
    :cond_6
    :goto_1
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_9

    .line 989
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 990
    if-lez v6, :cond_7

    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapHeight:I

    if-ge v6, v11, :cond_7

    .line 991
    iput-boolean v10, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 992
    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto :goto_2

    .line 994
    :cond_7
    iget v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    iget v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWrapHeight:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto :goto_2

    .line 1001
    :cond_8
    move v0, v4

    :cond_9
    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 1005
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1006
    move v12, v4

    :goto_3
    if-ge v12, v11, :cond_b

    .line 1007
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1008
    instance-of v14, v13, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v14, :cond_a

    .line 1009
    check-cast v13, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    .line 1006
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1014
    :cond_b
    nop

    .line 1015
    nop

    .line 1016
    move v13, v0

    move v0, v4

    move v12, v10

    :goto_4
    if-eqz v12, :cond_19

    .line 1017
    add-int/lit8 v14, v0, 0x1

    .line 1019
    const v15, 0x7fffffff

    :try_start_0
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->reset()V

    .line 1029
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v1, v0, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroid/support/constraint/solver/LinearSystem;I)Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1030
    if-eqz v16, :cond_c

    .line 1031
    :try_start_1
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->minimize()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 1033
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1035
    :cond_c
    :goto_5
    goto :goto_7

    .line 1033
    :catch_1
    move-exception v0

    move/from16 v16, v12

    .line 1034
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1036
    :goto_7
    if-eqz v16, :cond_d

    .line 1037
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    iget-object v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    invoke-virtual {v1, v0, v15, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroid/support/constraint/solver/LinearSystem;I[Z)V

    goto :goto_9

    .line 1039
    :cond_d
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v1, v0, v15}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 1040
    move v0, v4

    :goto_8
    if-ge v0, v11, :cond_10

    .line 1041
    iget-object v12, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1042
    iget-object v15, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v4, :cond_e

    .line 1043
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v15

    if-ge v4, v15, :cond_e

    .line 1044
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aput-boolean v10, v0, v9

    .line 1045
    goto :goto_9

    .line 1047
    :cond_e
    iget-object v4, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_f

    .line 1048
    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v12

    if-ge v4, v12, :cond_f

    .line 1049
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aput-boolean v10, v0, v9

    .line 1050
    goto :goto_9

    .line 1040
    :cond_f
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    goto :goto_8

    .line 1054
    :cond_10
    :goto_9
    nop

    .line 1056
    const/16 v0, 0x8

    if-ge v14, v0, :cond_13

    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->flags:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_13

    .line 1058
    nop

    .line 1059
    nop

    .line 1060
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_a
    if-ge v0, v11, :cond_11

    .line 1061
    iget-object v15, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1062
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v16

    add-int v9, v9, v16

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1063
    iget v9, v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    add-int/2addr v9, v15

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1060
    add-int/lit8 v0, v0, 0x1

    const/4 v9, 0x2

    goto :goto_a

    .line 1065
    :cond_11
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1066
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1067
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v9, :cond_12

    .line 1068
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    if-ge v9, v0, :cond_12

    .line 1072
    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1073
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1074
    nop

    .line 1075
    nop

    .line 1078
    move v0, v10

    move v13, v0

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    :goto_b
    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v9, :cond_14

    .line 1079
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    if-ge v9, v4, :cond_14

    .line 1083
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1084
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1085
    nop

    .line 1086
    nop

    .line 1091
    move v0, v10

    move v13, v0

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :cond_14
    :goto_c
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1092
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    if-le v4, v9, :cond_15

    .line 1096
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1097
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1098
    nop

    .line 1099
    nop

    .line 1101
    move v0, v10

    move v13, v0

    :cond_15
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1102
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    if-le v4, v9, :cond_16

    .line 1106
    invoke-virtual {v1, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1107
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1108
    nop

    .line 1109
    nop

    .line 1112
    move v0, v10

    move v13, v0

    :cond_16
    if-nez v13, :cond_18

    .line 1113
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_17

    if-lez v5, :cond_17

    .line 1114
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-le v4, v5, :cond_17

    .line 1118
    iput-boolean v10, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 1119
    nop

    .line 1120
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1121
    invoke-virtual {v1, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1122
    nop

    .line 1125
    move v0, v10

    move v13, v0

    :cond_17
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v9, :cond_18

    if-lez v6, :cond_18

    .line 1126
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-le v4, v6, :cond_18

    .line 1130
    iput-boolean v10, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 1131
    nop

    .line 1132
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1133
    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1134
    nop

    .line 1138
    move v12, v10

    move v13, v12

    goto :goto_d

    :cond_18
    move v12, v0

    .line 1016
    :goto_d
    move v0, v14

    const/4 v4, 0x0

    const/4 v9, 0x2

    goto/16 :goto_4

    .line 1142
    :cond_19
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_1a

    .line 1143
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1144
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1146
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/widgets/Snapshot;->applyTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1147
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    add-int/2addr v0, v3

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1148
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    add-int/2addr v2, v0

    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1149
    goto :goto_e

    .line 1150
    :cond_1a
    iput v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1151
    iput v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1153
    :goto_e
    if-eqz v13, :cond_1b

    .line 1154
    iput-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1155
    iput-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1157
    :cond_1b
    iget-object v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->getCache()Landroid/support/constraint/solver/Cache;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    .line 1158
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object v0

    if-ne v1, v0, :cond_1c

    .line 1159
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateDrawPosition()V

    .line 1161
    :cond_1c
    return-void
.end method

.method public layoutFindGroups()I
    .locals 13

    .line 1531
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 1536
    nop

    .line 1537
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1538
    move v4, v2

    move v5, v3

    :goto_0
    const v6, 0x7fffffff

    if-ge v4, v1, :cond_a

    .line 1539
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1540
    nop

    .line 1542
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1543
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_0

    .line 1544
    invoke-static {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v8

    if-ne v8, v5, :cond_1

    .line 1545
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1548
    :cond_0
    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1551
    :cond_1
    :goto_1
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1552
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_2

    .line 1553
    invoke-static {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v8

    if-ne v8, v5, :cond_3

    .line 1554
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1557
    :cond_2
    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1560
    :cond_3
    :goto_2
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1561
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_4

    .line 1562
    invoke-static {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v8

    if-ne v8, v5, :cond_5

    .line 1563
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1566
    :cond_4
    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1569
    :cond_5
    :goto_3
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1570
    iget-object v9, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v9, :cond_6

    .line 1571
    invoke-static {v8, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v8

    if-ne v8, v5, :cond_7

    .line 1572
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1575
    :cond_6
    iput v6, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1578
    :cond_7
    :goto_4
    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1579
    iget-object v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v8, :cond_8

    .line 1580
    invoke-static {v7, v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setGroup(Landroid/support/constraint/solver/widgets/ConstraintAnchor;I)I

    move-result v6

    if-ne v6, v5, :cond_9

    .line 1581
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1584
    :cond_8
    iput v6, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1538
    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1587
    :cond_a
    nop

    .line 1588
    nop

    .line 1589
    nop

    .line 1593
    move v4, v3

    :goto_6
    if-eqz v4, :cond_12

    .line 1594
    nop

    .line 1595
    nop

    .line 1596
    move v4, v2

    move v5, v4

    :goto_7
    if-ge v4, v1, :cond_11

    .line 1597
    iget-object v7, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1598
    move v8, v5

    move v5, v2

    :goto_8
    array-length v9, v0

    if-ge v5, v9, :cond_10

    .line 1599
    aget-object v9, v0, v5

    .line 1600
    const/4 v10, 0x0

    .line 1601
    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer$2;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v9

    aget v9, v11, v9

    packed-switch v9, :pswitch_data_0

    goto :goto_9

    .line 1619
    :pswitch_0
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1621
    goto :goto_9

    .line 1615
    :pswitch_1
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1617
    goto :goto_9

    .line 1611
    :pswitch_2
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1613
    goto :goto_9

    .line 1607
    :pswitch_3
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1609
    goto :goto_9

    .line 1603
    :pswitch_4
    iget-object v10, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1605
    nop

    .line 1628
    :goto_9
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1629
    if-nez v9, :cond_b

    .line 1630
    goto :goto_c

    .line 1633
    :cond_b
    iget-object v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v11

    if-eqz v11, :cond_d

    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iget v12, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v11, v12, :cond_d

    .line 1634
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-le v8, v11, :cond_c

    iget v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    goto :goto_a

    :cond_c
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    :goto_a
    iput v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iput v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1635
    nop

    .line 1636
    nop

    .line 1639
    move v8, v3

    :cond_d
    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getOpposite()Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v9

    .line 1640
    if-eqz v9, :cond_f

    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iget v12, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v11, v12, :cond_f

    .line 1641
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iget v11, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-le v8, v11, :cond_e

    iget v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    goto :goto_b

    :cond_e
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    :goto_b
    iput v8, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    iput v8, v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1642
    nop

    .line 1643
    nop

    .line 1598
    move v8, v3

    :cond_f
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1596
    :cond_10
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_7

    .line 1593
    :cond_11
    move v4, v5

    goto :goto_6

    .line 1650
    :cond_12
    nop

    .line 1651
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    array-length v0, v0

    mul-int/2addr v4, v0

    add-int/2addr v4, v3

    new-array v0, v4, [I

    .line 1652
    const/4 v3, -0x1

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1653
    move v4, v2

    :goto_d
    if-ge v2, v1, :cond_1d

    .line 1654
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1655
    nop

    .line 1657
    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1658
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v8, v6, :cond_14

    .line 1659
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1660
    aget v9, v0, v8

    if-ne v9, v3, :cond_13

    .line 1661
    add-int/lit8 v9, v4, 0x1

    aput v4, v0, v8

    .line 1663
    move v4, v9

    :cond_13
    aget v8, v0, v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1666
    :cond_14
    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1667
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v8, v6, :cond_16

    .line 1668
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1669
    aget v9, v0, v8

    if-ne v9, v3, :cond_15

    .line 1670
    add-int/lit8 v9, v4, 0x1

    aput v4, v0, v8

    .line 1672
    move v4, v9

    :cond_15
    aget v8, v0, v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1675
    :cond_16
    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1676
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v8, v6, :cond_18

    .line 1677
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1678
    aget v9, v0, v8

    if-ne v9, v3, :cond_17

    .line 1679
    add-int/lit8 v9, v4, 0x1

    aput v4, v0, v8

    .line 1681
    move v4, v9

    :cond_17
    aget v8, v0, v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1684
    :cond_18
    iget-object v7, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1685
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v8, v6, :cond_1a

    .line 1686
    iget v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1687
    aget v9, v0, v8

    if-ne v9, v3, :cond_19

    .line 1688
    add-int/lit8 v9, v4, 0x1

    aput v4, v0, v8

    .line 1690
    move v4, v9

    :cond_19
    aget v8, v0, v8

    iput v8, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1693
    :cond_1a
    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 1694
    iget v7, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    if-eq v7, v6, :cond_1c

    .line 1695
    iget v7, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1696
    aget v8, v0, v7

    if-ne v8, v3, :cond_1b

    .line 1697
    add-int/lit8 v8, v4, 0x1

    aput v4, v0, v7

    .line 1699
    move v4, v8

    :cond_1b
    aget v7, v0, v7

    iput v7, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1653
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1702
    :cond_1d
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public layoutFindGroupsSimple()I
    .locals 6

    .line 1194
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1195
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1196
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1197
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v1, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1198
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v1, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1199
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x1

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1200
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v5, v4, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1201
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v5, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public layoutWithGroup(I)V
    .locals 7

    .line 1709
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1710
    iget v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1711
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1712
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    if-nez v2, :cond_0

    .line 1713
    new-instance v2, Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-direct {v2, p0}, Landroid/support/constraint/solver/widgets/Snapshot;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    iput-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    .line 1715
    :cond_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v2, p0}, Landroid/support/constraint/solver/widgets/Snapshot;->updateFrom(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1720
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1721
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1722
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetAnchors()V

    .line 1723
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v2}, Landroid/support/constraint/solver/LinearSystem;->getCache()Landroid/support/constraint/solver/Cache;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroid/support/constraint/solver/Cache;)V

    goto :goto_0

    .line 1725
    :cond_1
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1726
    iput v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1730
    :goto_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1731
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    .line 1732
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 1733
    instance-of v6, v5, Landroid/support/constraint/solver/widgets/WidgetContainer;

    if-eqz v6, :cond_2

    .line 1734
    check-cast v5, Landroid/support/constraint/solver/widgets/WidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/WidgetContainer;->layout()V

    .line 1731
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1738
    :cond_3
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1739
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v3, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1740
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x1

    iput v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1741
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mGroup:I

    .line 1742
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v2}, Landroid/support/constraint/solver/LinearSystem;->reset()V

    .line 1776
    :goto_2
    if-ge v3, p1, :cond_4

    .line 1778
    :try_start_0
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {p0, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 1779
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v2}, Landroid/support/constraint/solver/LinearSystem;->minimize()V

    .line 1780
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {p0, v2, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    goto :goto_3

    .line 1781
    :catch_0
    move-exception v2

    .line 1782
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1784
    :goto_3
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    const/4 v4, -0x2

    invoke-virtual {p0, v2, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 1776
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1788
    :cond_4
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz p1, :cond_5

    .line 1789
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result p1

    .line 1790
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    .line 1792
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSnapshot:Landroid/support/constraint/solver/widgets/Snapshot;

    invoke-virtual {v1, p0}, Landroid/support/constraint/solver/widgets/Snapshot;->applyTo(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 1793
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1794
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1795
    goto :goto_4

    .line 1796
    :cond_5
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 1797
    iput v1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 1800
    :goto_4
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getRootConstraintContainer()Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    move-result-object p1

    if-ne p0, p1, :cond_6

    .line 1801
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateDrawPosition()V

    .line 1803
    :cond_6
    return-void
.end method

.method public reset()V
    .locals 1

    .line 138
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroid/support/constraint/solver/LinearSystem;

    invoke-virtual {v0}, Landroid/support/constraint/solver/LinearSystem;->reset()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 143
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 144
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 145
    iput v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 146
    invoke-super {p0}, Landroid/support/constraint/solver/widgets/WidgetContainer;->reset()V

    .line 147
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0

    .line 123
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 124
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 920
    iput p1, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 921
    iput p2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 922
    iput p3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 923
    iput p4, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 924
    return-void
.end method

.method public updateChildrenFromSolver(Landroid/support/constraint/solver/LinearSystem;I[Z)V
    .locals 7

    .line 894
    const/4 v0, 0x0

    const/4 v1, 0x2

    aput-boolean v0, p3, v1

    .line 895
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 896
    iget-object v2, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 897
    :goto_0
    if-ge v0, v2, :cond_2

    .line 898
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 899
    invoke-virtual {v3, p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V

    .line 900
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 901
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 902
    aput-boolean v6, p3, v1

    .line 904
    :cond_0
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalDimensionBehaviour:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1

    .line 905
    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 906
    aput-boolean v6, p3, v1

    .line 897
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :cond_2
    return-void
.end method

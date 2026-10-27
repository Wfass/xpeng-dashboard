.class public Landroid/support/constraint/solver/widgets/Barrier;
.super Landroid/support/constraint/solver/widgets/Helper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrierType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/Helper;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 8

    .line 48
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 49
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 50
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    .line 51
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    .line 52
    move p2, v1

    :goto_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 53
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v0, v0, p2

    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p2

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    iput-object v5, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 52
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ltz p2, :cond_8

    iget p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v0, 0x4

    if-ge p2, v0, :cond_8

    .line 56
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object p2, p2, v0

    .line 60
    move v0, v1

    :goto_1
    iget v5, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgetsCount:I

    if-ge v0, v5, :cond_3

    .line 61
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v5, v5, v0

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 62
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v6, v6, v0

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v7, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    aget-object v6, v6, v7

    iput-object v5, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 63
    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne v6, v2, :cond_1

    goto :goto_2

    .line 66
    :cond_1
    iget-object v6, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v6, v5, v1, v1}, Landroid/support/constraint/solver/LinearSystem;->addGreaterThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    goto :goto_3

    .line 64
    :cond_2
    :goto_2
    iget-object v6, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v6, v5, v1, v1}, Landroid/support/constraint/solver/LinearSystem;->addLowerThan(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)V

    .line 60
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_3
    iget p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    const/4 v0, 0x5

    if-nez p2, :cond_4

    .line 70
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_4

    .line 71
    :cond_4
    iget p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne p2, v3, :cond_5

    .line 72
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_4

    .line 73
    :cond_5
    iget p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne p2, v2, :cond_6

    .line 74
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    goto :goto_4

    .line 75
    :cond_6
    iget p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    if-ne p2, v4, :cond_7

    .line 76
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object p2, p2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;II)Landroid/support/constraint/solver/ArrayRow;

    .line 78
    :cond_7
    :goto_4
    return-void

    .line 58
    :cond_8
    return-void
.end method

.method public setBarrierType(I)V
    .locals 0

    .line 37
    iput p1, p0, Landroid/support/constraint/solver/widgets/Barrier;->mBarrierType:I

    .line 38
    return-void
.end method

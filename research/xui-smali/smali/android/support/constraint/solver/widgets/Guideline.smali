.class public Landroid/support/constraint/solver/widgets/Guideline;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mHead:Landroid/support/constraint/solver/widgets/Rectangle;

.field private mHeadSize:I

.field private mIsPositionRelaxed:Z

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 34
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 36
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 38
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 41
    new-instance v0, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    .line 42
    const/16 v0, 0x8

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    .line 45
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 12
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "group"    # I

    .line 190
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 191
    .local v0, "parent":Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    if-nez v0, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 195
    .local v1, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 196
    .local v2, "end":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v3, :cond_1

    .line 197
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 198
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v2

    .line 200
    :cond_1
    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 201
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 202
    .local v3, "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 203
    .local v5, "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    iget v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 205
    invoke-static {p1, v3, v5, v6, v4}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v4

    .line 203
    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 206
    .end local v3    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v3, v5, :cond_3

    .line 207
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 208
    .restart local v3    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 209
    .local v5, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    iget v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v6, v6

    .line 211
    invoke-static {p1, v3, v5, v6, v4}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v4

    .line 209
    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 212
    .end local v3    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v5    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    goto :goto_0

    :cond_3
    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 213
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 214
    .restart local v3    # "guide":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v10

    .line 215
    .local v10, "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    invoke-virtual {p1, v2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v11

    .line 216
    .local v11, "parentRight":Landroid/support/constraint/solver/SolverVariable;
    iget v8, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    iget-boolean v9, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 217
    move-object v4, p1

    move-object v5, v3

    move-object v6, v10

    move-object v7, v11

    invoke-static/range {v4 .. v9}, Landroid/support/constraint/solver/LinearSystem;->createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object v4

    .line 216
    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    .line 220
    .end local v3    # "guide":Landroid/support/constraint/solver/SolverVariable;
    .end local v10    # "parentLeft":Landroid/support/constraint/solver/SolverVariable;
    .end local v11    # "parentRight":Landroid/support/constraint/solver/SolverVariable;
    :cond_4
    :goto_0
    return-void
.end method

.method public cyclePosition()V
    .locals 3

    .line 291
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    goto :goto_0

    .line 294
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_0

    .line 297
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_2

    .line 299
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    .line 301
    :cond_2
    :goto_0
    return-void
.end method

.method public getAnchor()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 2
    .param p1, "anchorType"    # Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 118
    sget-object v0, Landroid/support/constraint/solver/widgets/Guideline$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 138
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 128
    :pswitch_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 121
    :pswitch_2
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0

    .line 140
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHead()Landroid/support/constraint/solver/widgets/Rectangle;
    .locals 6

    .line 63
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v3, v4

    iget v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 65
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 67
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v3, v4

    iget v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v4, v5

    .line 66
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 70
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 102
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .locals 1

    .line 181
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 2

    .line 50
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_2

    .line 57
    const/4 v0, 0x2

    return v0

    .line 59
    :cond_2
    return v1
.end method

.method public getRelativeEnd()I
    .locals 1

    .line 185
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .locals 1

    .line 177
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "Guideline"

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .locals 2

    .line 275
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    .line 276
    .local v0, "position":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v0

    .line 279
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    .line 280
    return-void
.end method

.method inferRelativeEndPosition()V
    .locals 3

    .line 283
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 284
    .local v0, "position":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v2

    sub-int v0, v1, v2

    .line 287
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 288
    return-void
.end method

.method inferRelativePercentPosition()V
    .locals 3

    .line 267
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 268
    .local v0, "percent":F
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 271
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 272
    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 243
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 244
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetX:I

    sub-int v0, p1, v0

    .line 245
    .local v0, "position":I
    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v3, v2, :cond_0

    .line 246
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 247
    :cond_0
    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v3, v2, :cond_1

    .line 248
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 249
    :cond_1
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_2

    .line 250
    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 251
    .local v1, "percent":F
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 253
    .end local v0    # "position":I
    .end local v1    # "percent":F
    :cond_2
    :goto_0
    goto :goto_1

    .line 254
    :cond_3
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetY:I

    sub-int v0, p2, v0

    .line 255
    .restart local v0    # "position":I
    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq v3, v2, :cond_4

    .line 256
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_1

    .line 257
    :cond_4
    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v3, v2, :cond_5

    .line 258
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_1

    .line 259
    :cond_5
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_6

    .line 260
    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 261
    .restart local v1    # "percent":F
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 264
    .end local v0    # "position":I
    .end local v1    # "percent":F
    :cond_6
    :goto_1
    return-void
.end method

.method public setGuideBegin(I)V
    .locals 2
    .param p1, "value"    # I

    .line 161
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 162
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 163
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 164
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 166
    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 2
    .param p1, "value"    # I

    .line 169
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 170
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 171
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 172
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 174
    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 1
    .param p1, "value"    # F

    .line 153
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 154
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 156
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 158
    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 2
    .param p1, "value"    # I

    .line 149
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    .line 150
    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 0
    .param p1, "minimum"    # I

    .line 106
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 107
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .line 74
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-ne v0, p1, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 78
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 84
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public setPositionRelaxed(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 110
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    if-ne v0, p1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 114
    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 4
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "group"    # I

    .line 224
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 228
    .local v0, "value":I
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 229
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 230
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 231
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    .line 232
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 235
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 236
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    .line 237
    invoke-virtual {p0, v3}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    .line 239
    :goto_0
    return-void
.end method

.class public Landroid/support/constraint/Group;
.super Landroid/support/constraint/ConstraintHelper;
.source "Group.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 27
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/constraint/Group;->mUseViewMeasure:Z

    .line 28
    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/support/constraint/Group;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 52
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 53
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 54
    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V
    .locals 7

    .line 32
    invoke-virtual {p0}, Landroid/support/constraint/Group;->getVisibility()I

    move-result v0

    .line 33
    nop

    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/support/constraint/Group;->getElevation()F

    move-result v1

    goto :goto_0

    .line 37
    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget v5, p0, Landroid/support/constraint/Group;->mCount:I

    if-ge v4, v5, :cond_2

    .line 38
    iget-object v5, p0, Landroid/support/constraint/Group;->mIds:[I

    aget v5, v5, v4

    .line 39
    invoke-virtual {p1, v5}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    cmpl-float v6, v1, v3

    if-lez v6, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_1

    .line 43
    invoke-virtual {v5, v1}, Landroid/view/View;->setElevation(F)V

    .line 37
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 47
    :cond_2
    return-void
.end method

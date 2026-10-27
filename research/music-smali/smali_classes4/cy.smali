.class public Lcy;
.super Landroidx/constraintlayout/widget/b;
.source "MotionHelper.java"

# interfaces
.implements Lcz;


# instance fields
.field protected a:[Landroid/view/View;

.field private j:Z

.field private k:Z

.field private l:F


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/util/AttributeSet;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/b;->a(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p0}, Lcy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/h$b;->MotionHelper:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 66
    sget v3, Landroidx/constraintlayout/widget/h$b;->MotionHelper_onShow:I

    if-ne v2, v3, :cond_0

    .line 67
    iget-boolean v3, p0, Lcy;->j:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcy;->j:Z

    goto :goto_1

    .line 68
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/h$b;->MotionHelper_onHide:I

    if-ne v2, v3, :cond_1

    .line 69
    iget-boolean v3, p0, Lcy;->k:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcy;->k:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public a(Ldb;)V
    .locals 0

    return-void
.end method

.method public a(Ldb;I)V
    .locals 0

    return-void
.end method

.method public a(Ldb;II)V
    .locals 0

    return-void
.end method

.method public a(Ldb;IIF)V
    .locals 0

    return-void
.end method

.method public a(Ldb;IZF)V
    .locals 0

    return-void
.end method

.method public a(Ldb;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldb;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcx;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcy;->j:Z

    return v0
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcy;->k:Z

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 98
    iget v0, p0, Lcy;->l:F

    return v0
.end method

.method public setProgress(F)V
    .locals 5

    .line 103
    iput p1, p0, Lcy;->l:F

    .line 104
    iget v0, p0, Lcy;->c:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcy;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcy;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcy;->a:[Landroid/view/View;

    .line 107
    :goto_0
    iget v0, p0, Lcy;->c:I

    if-ge v1, v0, :cond_2

    .line 108
    iget-object v0, p0, Lcy;->a:[Landroid/view/View;

    aget-object v0, v0, v1

    .line 109
    invoke-virtual {p0, v0, p1}, Lcy;->a(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcy;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 117
    instance-of v4, v3, Lcy;

    if-eqz v4, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    invoke-virtual {p0, v3, p1}, Lcy;->a(Landroid/view/View;F)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

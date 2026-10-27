.class public abstract Landroid/support/constraint/ConstraintHelper;
.super Landroid/view/View;
.source "ConstraintHelper.java"


# instance fields
.field protected mCount:I

.field protected mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

.field protected mIds:[I

.field private mReferenceIds:Ljava/lang/String;

.field protected mUseViewMeasure:Z

.field protected myContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    .line 24
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 29
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0, v1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 23
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    .line 24
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 35
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/16 p3, 0x20

    new-array p3, p3, [I

    iput-object p3, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 20
    const/4 p3, 0x0

    iput p3, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    .line 24
    iput-boolean p3, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    .line 41
    iput-object p1, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0, p2}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private addID(Ljava/lang/String;)V
    .locals 5

    .line 121
    if-nez p1, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 125
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 128
    nop

    .line 130
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/support/constraint/R$id;

    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    .line 137
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 138
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    iget-object v4, p0, Landroid/support/constraint/ConstraintHelper;->myContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 138
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 141
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/support/constraint/ConstraintLayout;

    if-eqz v3, :cond_3

    .line 142
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout;

    .line 143
    invoke-virtual {v3, v1, p1}, Landroid/support/constraint/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    if-eqz v1, :cond_3

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 145
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 149
    :cond_3
    if-eqz v2, :cond_4

    .line 150
    invoke-virtual {p0, v2, v0}, Landroid/support/constraint/ConstraintHelper;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    .line 152
    :cond_4
    const-string v0, "ConstraintHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find id of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :goto_1
    return-void
.end method

.method private setIds(Ljava/lang/String;)V
    .locals 3

    .line 157
    if-nez p1, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 163
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 165
    nop

    .line 170
    return-void

    .line 167
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintHelper;->addID(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v0, v1, 0x1

    .line 169
    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 92
    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    .line 64
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 46
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 49
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 51
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v2, v3, :cond_0

    .line 52
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Landroid/support/constraint/ConstraintHelper;->mUseViewMeasure:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 102
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/support/constraint/ConstraintHelper;->setMeasuredDimension(II)V

    .line 104
    :goto_0
    return-void
.end method

.method public setReferencedIds([I)V
    .locals 3

    .line 72
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 73
    aget v1, p1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/constraint/ConstraintHelper;->setTag(ILjava/lang/Object;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 1

    .line 79
    iget p2, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    array-length v0, v0

    if-le p2, v0, :cond_0

    .line 80
    iget-object p2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    iput-object p2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    .line 82
    :cond_0
    iget-object p2, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    iget v0, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    aput p1, p2, v0

    .line 83
    iget p1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    .line 84
    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .locals 0

    .line 199
    return-void
.end method

.method public updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V
    .locals 0

    .line 196
    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V
    .locals 3

    .line 178
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mReferenceIds:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/support/constraint/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_1

    .line 182
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Helper;->removeAllIds()V

    .line 185
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/ConstraintHelper;->mCount:I

    if-ge v0, v1, :cond_3

    .line 186
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mIds:[I

    aget v1, v1, v0

    .line 187
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_2

    .line 189
    iget-object v2, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/Helper;->add(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    .line 185
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_3
    return-void
.end method

.method public validateParams()V
    .locals 2

    .line 110
    iget-object v0, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/ConstraintHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 114
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 116
    iget-object v1, p0, Landroid/support/constraint/ConstraintHelper;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 118
    :cond_1
    return-void
.end method

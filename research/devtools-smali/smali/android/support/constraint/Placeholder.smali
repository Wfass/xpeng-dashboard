.class public Landroid/support/constraint/Placeholder;
.super Landroid/view/View;
.source "Placeholder.java"


# instance fields
.field private mContent:Landroid/view/View;

.field private mContentId:I

.field private mDefaultVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    .line 34
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/constraint/Placeholder;->mDefaultVisibility:I

    .line 39
    invoke-direct {p0, p1}, Landroid/support/constraint/Placeholder;->init(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    .line 34
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 35
    const/4 p1, 0x4

    iput p1, p0, Landroid/support/constraint/Placeholder;->mDefaultVisibility:I

    .line 44
    invoke-direct {p0, p2}, Landroid/support/constraint/Placeholder;->init(Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    .line 34
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 35
    const/4 p1, 0x4

    iput p1, p0, Landroid/support/constraint/Placeholder;->mDefaultVisibility:I

    .line 49
    invoke-direct {p0, p2}, Landroid/support/constraint/Placeholder;->init(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    .line 34
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 35
    const/4 p1, 0x4

    iput p1, p0, Landroid/support/constraint/Placeholder;->mDefaultVisibility:I

    .line 54
    invoke-direct {p0, p2}, Landroid/support/constraint/Placeholder;->init(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 58
    iget v0, p0, Landroid/support/constraint/Placeholder;->mDefaultVisibility:I

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    .line 60
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/support/constraint/Placeholder;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    .line 62
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 64
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 66
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_content:I

    if-ne v2, v3, :cond_0

    .line 67
    iget v3, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public getContent()Landroid/view/View;
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 82
    invoke-virtual {p0}, Landroid/support/constraint/Placeholder;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/16 v0, 0xdf

    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 85
    const/16 v1, 0xff

    const/16 v2, 0xd2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 86
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 90
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 91
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 93
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 94
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 95
    const-string v5, "?"

    .line 96
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v2, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 97
    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v2, v6

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    .line 98
    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v3, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 99
    invoke-virtual {p1, v5, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setContentId(I)V
    .locals 2

    .line 123
    iget v0, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    if-ne v0, p1, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 130
    iput-boolean v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 134
    :cond_1
    iput p1, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    .line 135
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 136
    invoke-virtual {p0}, Landroid/support/constraint/Placeholder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 137
    if-eqz p1, :cond_2

    .line 138
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_2
    return-void
.end method

.method public setDefaultVisibility(I)V
    .locals 0

    .line 74
    iput p1, p0, Landroid/support/constraint/Placeholder;->mDefaultVisibility:I

    .line 75
    return-void
.end method

.method public updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V
    .locals 3

    .line 144
    iget-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    if-nez p1, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/support/constraint/Placeholder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 148
    iget-object v0, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 150
    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 151
    iget-object v1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 152
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 153
    iget-object p1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public updatePreLayout(Landroid/support/constraint/ConstraintLayout;)V
    .locals 2

    .line 104
    iget v0, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/support/constraint/Placeholder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 106
    invoke-virtual {p0}, Landroid/support/constraint/Placeholder;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget v0, p0, Landroid/support/constraint/Placeholder;->mDefaultVisibility:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/Placeholder;->setVisibility(I)V

    .line 112
    :cond_0
    iget v0, p0, Landroid/support/constraint/Placeholder;->mContentId:I

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 113
    iget-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 117
    iget-object p1, p0, Landroid/support/constraint/Placeholder;->mContent:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/support/constraint/Placeholder;->setVisibility(I)V

    .line 120
    :cond_1
    return-void
.end method

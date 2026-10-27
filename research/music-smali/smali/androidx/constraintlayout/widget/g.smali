.class public Landroidx/constraintlayout/widget/g;
.super Landroid/view/View;
.source "Placeholder.java"


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field private c:I


# virtual methods
.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 154
    iget v0, p0, Landroidx/constraintlayout/widget/g;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 155
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/g;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget v0, p0, Landroidx/constraintlayout/widget/g;->c:I

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/g;->setVisibility(I)V

    .line 160
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/g;->a:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    .line 161
    iget-object p1, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aj:Z

    .line 165
    iget-object p1, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/g;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3

    .line 201
    iget-object p1, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/g;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 205
    iget-object v0, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 207
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbf;->l(I)V

    .line 208
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    invoke-virtual {v1}, Lbf;->Y()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    if-eq v1, v2, :cond_1

    .line 209
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    invoke-virtual {v2}, Lbf;->F()I

    move-result v2

    invoke-virtual {v1, v2}, Lbf;->q(I)V

    .line 211
    :cond_1
    iget-object v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    invoke-virtual {v1}, Lbf;->Z()Lbf$a;

    move-result-object v1

    sget-object v2, Lbf$a;->FIXED:Lbf$a;

    if-eq v1, v2, :cond_2

    .line 212
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    invoke-virtual {v1}, Lbf;->G()I

    move-result v1

    invoke-virtual {p1, v1}, Lbf;->r(I)V

    .line 214
    :cond_2
    iget-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->av:Lbf;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lbf;->l(I)V

    return-void
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    return-object v0
.end method

.method public getEmptyVisibility()I
    .locals 1

    .line 106
    iget v0, p0, Landroidx/constraintlayout/widget/g;->c:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 125
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/g;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xdf

    .line 126
    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0xd2

    .line 130
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 131
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 132
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 136
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 140
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v5, "?"

    const/4 v6, 0x1

    .line 142
    invoke-virtual {v0, v5, v2, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 143
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-float/2addr v2, v6

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float/2addr v2, v6

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v3, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v3, v1

    .line 145
    invoke-virtual {p1, v5, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setContentId(I)V
    .locals 2

    .line 176
    iget v0, p0, Landroidx/constraintlayout/widget/g;->a:I

    if-ne v0, p1, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 183
    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aj:Z

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Landroidx/constraintlayout/widget/g;->b:Landroid/view/View;

    .line 187
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/widget/g;->a:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 189
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setEmptyVisibility(I)V
    .locals 0

    .line 97
    iput p1, p0, Landroidx/constraintlayout/widget/g;->c:I

    return-void
.end method

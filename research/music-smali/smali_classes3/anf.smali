.class public Lanf;
.super Ljava/lang/Object;
.source "RefreshContentWrapper.java"

# interfaces
.implements Lami;
.implements Lamr;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:I

.field protected g:Z

.field protected h:Z

.field protected i:Lanb;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lanf;->f:I

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lanf;->g:Z

    .line 50
    iput-boolean v0, p0, Lanf;->h:Z

    .line 51
    new-instance v0, Lanb;

    invoke-direct {v0}, Lanb;-><init>()V

    iput-object v0, p0, Lanf;->i:Lanb;

    .line 54
    iput-object p1, p0, Lanf;->c:Landroid/view/View;

    iput-object p1, p0, Lanf;->b:Landroid/view/View;

    iput-object p1, p0, Lanf;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 2

    .line 259
    iget-object v0, p0, Lanf;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lanf;->c:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_1
    iput p1, p0, Lanf;->f:I

    return-object p0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Landroid/view/View;
    .locals 1

    .line 129
    iget-object v0, p0, Lanf;->a:Landroid/view/View;

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 106
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 107
    check-cast p1, Landroid/view/ViewGroup;

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 109
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 112
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v2, v3, v4, v1}, Lane;->a(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    instance-of p1, v2, Landroidx/viewpager/widget/ViewPager;

    if-nez p1, :cond_0

    invoke-static {v2}, Lane;->c(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 114
    :cond_0
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 115
    invoke-virtual {p0, v2, p2, p3}, Lanf;->a(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 116
    iget p1, v1, Landroid/graphics/PointF;->x:F

    neg-float p1, p1

    iget p3, v1, Landroid/graphics/PointF;->y:F

    neg-float p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/PointF;->offset(FF)V

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object p3
.end method

.method protected a(Landroid/view/View;Z)Landroid/view/View;
    .locals 6

    .line 85
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 87
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 88
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 89
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    if-nez v2, :cond_3

    .line 90
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    if-nez p2, :cond_1

    if-eq v3, p1, :cond_2

    .line 92
    :cond_1
    invoke-static {v3}, Lane;->c(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_0

    .line 94
    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 95
    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    .line 96
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 97
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    return-object p1
.end method

.method public a(III)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    .line 142
    iget-object v4, p0, Lanf;->b:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    if-lez p1, :cond_0

    int-to-float v4, p1

    .line 146
    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    move p2, v0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    .line 148
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    move p2, v2

    :goto_0
    if-eq p3, v1, :cond_3

    .line 153
    iget-object v1, p0, Lanf;->b:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    if-gez p1, :cond_2

    int-to-float p2, p1

    .line 157
    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationY(F)V

    move p2, v0

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 159
    invoke-virtual {p3, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 164
    iget-object p2, p0, Lanf;->b:Landroid/view/View;

    int-to-float p3, p1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 166
    :cond_4
    iget-object p2, p0, Lanf;->b:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 168
    :goto_2
    iget-object p2, p0, Lanf;->d:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 169
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 171
    :cond_5
    iget-object p2, p0, Lanf;->e:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 172
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    return-void
.end method

.method public a(Laml;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 206
    iget-object v0, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lanf;->a(Landroid/view/View;Laml;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    .line 209
    :cond_0
    iput-object p2, p0, Lanf;->d:Landroid/view/View;

    .line 210
    iput-object p3, p0, Lanf;->e:Landroid/view/View;

    .line 211
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-interface {p1}, Laml;->getRefreshLayout()Lamm;

    move-result-object v1

    invoke-interface {v1}, Lamm;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 213
    invoke-interface {p1}, Laml;->getRefreshLayout()Lamm;

    move-result-object v2

    invoke-interface {v2}, Lamm;->getLayout()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    iget-object v2, p0, Lanf;->a:Landroid/view/View;

    const/4 v3, 0x0

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v2, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 216
    invoke-interface {p1}, Laml;->getRefreshLayout()Lamm;

    move-result-object p1

    invoke-interface {p1}, Lamm;->getLayout()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iput-object v0, p0, Lanf;->a:Landroid/view/View;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 219
    sget v1, Lamq$a;->srl_tag:I

    const-string v2, "fixed-top"

    invoke-virtual {p2, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 222
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 223
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 224
    invoke-static {p2}, Lane;->a(Landroid/view/View;)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 225
    new-instance v4, Landroid/widget/Space;

    iget-object v5, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 229
    sget p2, Lamq$a;->srl_tag:I

    const-string v1, "fixed-bottom"

    invoke-virtual {p3, p2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 230
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 231
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 232
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 233
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 234
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-static {p3}, Lane;->a(Landroid/view/View;)I

    move-result v4

    iput v4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 236
    new-instance v4, Landroid/widget/Space;

    iget-object v5, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/16 p2, 0x50

    .line 237
    iput p2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 238
    invoke-virtual {v0, p3, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public a(Lana;)V
    .locals 1

    .line 245
    instance-of v0, p1, Lanb;

    if-eqz v0, :cond_0

    .line 246
    check-cast p1, Lanb;

    iput-object p1, p0, Lanf;->i:Lanb;

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lanf;->i:Lanb;

    iput-object p1, v0, Lanb;->b:Lana;

    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 188
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 189
    iget-object p1, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    iget-object v1, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 190
    iget-object p1, p0, Lanf;->c:Landroid/view/View;

    iget-object v1, p0, Lanf;->a:Landroid/view/View;

    if-eq p1, v1, :cond_0

    .line 192
    invoke-virtual {p0, v1, v0, p1}, Lanf;->a(Landroid/view/View;Landroid/graphics/PointF;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lanf;->c:Landroid/view/View;

    .line 194
    :cond_0
    iget-object p1, p0, Lanf;->c:Landroid/view/View;

    iget-object v1, p0, Lanf;->a:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 197
    iget-object p1, p0, Lanf;->i:Lanb;

    const/4 v0, 0x0

    iput-object v0, p1, Lanb;->a:Landroid/graphics/PointF;

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lanf;->i:Lanb;

    iput-object v0, p1, Lanb;->a:Landroid/graphics/PointF;

    :goto_0
    return-void
.end method

.method protected a(Landroid/view/View;Laml;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 61
    instance-of v2, v1, Lfx;

    if-eqz v2, :cond_2

    instance-of v2, v1, Lft;

    if-nez v2, :cond_2

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 63
    :goto_1
    invoke-virtual {p0, p1, v2}, Lanf;->a(Landroid/view/View;Z)Landroid/view/View;

    move-result-object p1

    if-ne p1, v1, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    .line 73
    iput-object v1, p0, Lanf;->c:Landroid/view/View;

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    .line 68
    invoke-static {p1, p2, p0}, Land;->a(Landroid/view/View;Laml;Lamr;)V

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .line 254
    iget-object v0, p0, Lanf;->i:Lanb;

    iput-boolean p1, v0, Lanb;->c:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lanf;->g:Z

    .line 80
    iput-boolean p2, p0, Lanf;->h:Z

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 135
    iget-object v0, p0, Lanf;->c:Landroid/view/View;

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 178
    iget-boolean v0, p0, Lanf;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanf;->i:Lanb;

    iget-object v1, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lanb;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 183
    iget-boolean v0, p0, Lanf;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanf;->i:Lanb;

    iget-object v1, p0, Lanf;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lanb;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 270
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 272
    :try_start_0
    iget v0, p0, Lanf;->f:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lanf;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    .line 273
    iget-object v1, p0, Lanf;->c:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lanf;->c:Landroid/view/View;

    check-cast v1, Landroid/widget/AbsListView;

    float-to-int v0, v0

    invoke-static {v1, v0}, Lane;->a(Landroid/widget/AbsListView;I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v1, p0, Lanf;->c:Landroid/view/View;

    const/4 v2, 0x0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->scrollBy(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    :goto_0
    iput p1, p0, Lanf;->f:I

    return-void
.end method

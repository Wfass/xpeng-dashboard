.class Landroidx/transition/g;
.super Landroid/view/ViewGroup;
.source "GhostViewPort.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field private b:Landroid/graphics/Matrix;

.field private final c:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static a(Landroid/view/View;)Landroidx/transition/g;
    .locals 1

    .line 148
    sget v0, Landroidx/transition/l$a;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/g;

    return-object p0
.end method

.method static a(Landroid/view/View;Landroidx/transition/g;)V
    .locals 1

    .line 152
    sget v0, Landroidx/transition/l$a;->ghost_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 101
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 102
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/transition/g;->a(Landroid/view/View;Landroidx/transition/g;)V

    .line 104
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/g;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 106
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/transition/ae;->a(Landroid/view/View;I)V

    .line 107
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 114
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/g;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 115
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ae;->a(Landroid/view/View;I)V

    .line 116
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/g;->a(Landroid/view/View;Landroidx/transition/g;)V

    .line 117
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 120
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    .line 125
    invoke-static {p1, v0}, Landroidx/transition/c;->a(Landroid/graphics/Canvas;Z)V

    .line 126
    iget-object v0, p0, Landroidx/transition/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 131
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ae;->a(Landroid/view/View;I)V

    .line 132
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 133
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroidx/transition/ae;->a(Landroid/view/View;I)V

    .line 135
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/transition/g;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Landroidx/transition/g;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 136
    invoke-static {p1, v1}, Landroidx/transition/c;->a(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/g;->a(Landroid/view/View;)Landroidx/transition/g;

    move-result-object v0

    if-ne v0, p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    iget-object v0, p0, Landroidx/transition/g;->a:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/transition/ae;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

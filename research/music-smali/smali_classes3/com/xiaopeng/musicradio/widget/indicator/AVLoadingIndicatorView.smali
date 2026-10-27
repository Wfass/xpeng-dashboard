.class public Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;
.super Lcom/xiaopeng/xui/view/XView;
.source "AVLoadingIndicatorView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/lifecycle/a;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private e:Z

.field private f:Z

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;

.field private i:Lcom/xiaopeng/musicradio/widget/indicator/a;

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method private a(II)V
    .locals 3

    .line 416
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 417
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eqz v0, :cond_2

    .line 427
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/indicator/a;->getIntrinsicWidth()I

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/indicator/a;->getIntrinsicHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    add-int/lit8 p1, p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x0

    .line 444
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Lcom/xiaopeng/musicradio/widget/indicator/a;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    .line 506
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getDrawableState()[I

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/indicator/a;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/indicator/a;->setState([I)Z

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e:Z

    .line 348
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->f:Z

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eqz v1, :cond_2

    .line 350
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/indicator/a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 355
    :cond_1
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->l:Z

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/indicator/a;->start()V

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->postInvalidate()V

    :cond_3
    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 462
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 465
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 467
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->l:Z

    if-eqz p1, :cond_0

    instance-of p1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz p1, :cond_0

    .line 468
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    const/4 p1, 0x0

    .line 469
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->l:Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e:Z

    .line 366
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/indicator/a;->stop()V

    .line 368
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->l:Z

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->postInvalidate()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    .line 556
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->j:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->j:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/indicator/a;->a(I)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 501
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->drawableStateChanged()V

    .line 502
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e()V

    return-void
.end method

.method public getIndicator()Lcom/xiaopeng/musicradio/widget/indicator/a;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 396
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 398
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 399
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 401
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->invalidate(IIII)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 522
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onAttachedToWindow()V

    .line 526
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/base/c;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 514
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 515
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->d()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_CREATE:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_DESTROY:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 534
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->f:Z

    .line 536
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->b()V

    .line 537
    invoke-static {p0}, Lcom/xiaopeng/musicradio/commonui/base/c;->b(Landroid/view/View;)V

    .line 538
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->c()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 451
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onDraw(Landroid/graphics/Canvas;)V

    .line 452
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 479
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 482
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->a:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 483
    iget v3, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->c:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 485
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->a:I

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->b:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 486
    iget v3, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->c:I

    iget v4, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->d:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move v0, v2

    move v1, v0

    .line 489
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e()V

    .line 491
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 492
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 494
    invoke-static {v0, p1, v2}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result p1

    .line 495
    invoke-static {v1, p2, v2}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result p2

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;
    .end annotation

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPause "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AVLoadingIndicatorView"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->f:Z

    .line 85
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e:Z

    .line 86
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->b()V

    .line 87
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e:Z

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->f()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;
    .end annotation

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResume "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AVLoadingIndicatorView"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->f:Z

    .line 74
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->e:Z

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->a()V

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->f()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->a(II)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method

.method public onStop(Landroidx/lifecycle/n;)V
    .locals 0
    .annotation runtime Landroidx/lifecycle/t;
        a = .enum Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;
    .end annotation

    return-void
.end method

.method public setIndicator(Lcom/xiaopeng/musicradio/widget/indicator/a;)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/indicator/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eqz v0, :cond_1

    .line 224
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->k:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/indicator/a;->a(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/widget/indicator/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 229
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->postInvalidate()V

    :cond_3
    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .locals 3

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    .line 268
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".indicators"

    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/indicator/a;

    .line 278
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->setIndicator(Lcom/xiaopeng/musicradio/widget/indicator/a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    const-string p1, "AVLoadingIndicatorView"

    const-string v0, "Didn\'t find your class , check the name again !"

    .line 280
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->j:I

    .line 249
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->k:I

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/indicator/a;->a(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 376
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->setVisibility(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/indicator/AVLoadingIndicatorView;->i:Lcom/xiaopeng/musicradio/widget/indicator/a;

    if-eq p1, v0, :cond_1

    .line 340
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

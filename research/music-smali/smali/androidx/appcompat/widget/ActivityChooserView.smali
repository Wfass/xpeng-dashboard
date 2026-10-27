.class public Landroidx/appcompat/widget/ActivityChooserView;
.super Landroid/view/ViewGroup;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActivityChooserView$InnerLayout;,
        Landroidx/appcompat/widget/ActivityChooserView$a;,
        Landroidx/appcompat/widget/ActivityChooserView$b;
    }
.end annotation


# instance fields
.field final a:Landroidx/appcompat/widget/ActivityChooserView$a;

.field final b:Landroid/widget/FrameLayout;

.field final c:Landroid/widget/FrameLayout;

.field d:Lfi;

.field final e:Landroid/database/DataSetObserver;

.field f:Landroid/widget/PopupWindow$OnDismissListener;

.field g:Z

.field h:I

.field private final i:Landroidx/appcompat/widget/ActivityChooserView$b;

.field private final j:Landroid/view/View;

.field private final k:Landroid/widget/ImageView;

.field private final l:I

.field private final m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private n:Landroidx/appcompat/widget/ah;

.field private o:Z

.field private p:I


# virtual methods
.method a(I)V
    .locals 5

    .line 371
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/c;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 375
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 377
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->c:Landroid/widget/FrameLayout;

    .line 378
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 380
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActivityChooserView$a;->c()I

    move-result v3

    const v4, 0x7fffffff

    if-eq p1, v4, :cond_1

    add-int v4, p1, v0

    if-le v3, v4, :cond_1

    .line 384
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/ActivityChooserView$a;->a(Z)V

    .line 385
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    sub-int/2addr p1, v1

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ActivityChooserView$a;->a(I)V

    goto :goto_1

    .line 387
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/ActivityChooserView$a;->a(Z)V

    .line 388
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ActivityChooserView$a;->a(I)V

    .line 391
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ah;

    move-result-object p1

    .line 392
    invoke-virtual {p1}, Landroidx/appcompat/widget/ah;->e()Z

    move-result v3

    if-nez v3, :cond_5

    .line 393
    iget-boolean v3, p0, Landroidx/appcompat/widget/ActivityChooserView;->g:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 396
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0, v2, v2}, Landroidx/appcompat/widget/ActivityChooserView$a;->a(ZZ)V

    goto :goto_3

    .line 394
    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v3, v1, v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->a(ZZ)V

    .line 398
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->a()I

    move-result v0

    iget v3, p0, Landroidx/appcompat/widget/ActivityChooserView;->l:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 399
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ah;->h(I)V

    .line 400
    invoke-virtual {p1}, Landroidx/appcompat/widget/ah;->a_()V

    .line 401
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->d:Lfi;

    if-eqz v0, :cond_4

    .line 402
    invoke-virtual {v0, v1}, Lfi;->a(Z)V

    .line 404
    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/widget/ah;->g()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Le$h;->abc_activitychooserview_choose_application:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {p1}, Landroidx/appcompat/widget/ah;->g()Landroid/widget/ListView;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void

    .line 372
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No data model. Did you call #setDataModel?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 2

    .line 357
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->o:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->g:Z

    .line 361
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->h:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActivityChooserView;->a(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public b()Z
    .locals 2

    .line 416
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ah;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ah;->d()V

    .line 418
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .line 432
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getListPopupWindow()Landroidx/appcompat/widget/ah;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ah;->e()Z

    move-result v0

    return v0
.end method

.method public getDataModel()Landroidx/appcompat/widget/c;
    .locals 1

    .line 489
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/c;

    move-result-object v0

    return-object v0
.end method

.method getListPopupWindow()Landroidx/appcompat/widget/ah;
    .locals 2

    .line 533
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroidx/appcompat/widget/ah;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Landroidx/appcompat/widget/ah;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ah;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroidx/appcompat/widget/ah;

    .line 535
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroidx/appcompat/widget/ah;

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ah;->a(Landroid/widget/ListAdapter;)V

    .line 536
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroidx/appcompat/widget/ah;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ah;->b(Landroid/view/View;)V

    .line 537
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroidx/appcompat/widget/ah;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ah;->a(Z)V

    .line 538
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroidx/appcompat/widget/ah;

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->i:Landroidx/appcompat/widget/ActivityChooserView$b;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ah;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 539
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroidx/appcompat/widget/ah;

    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->i:Landroidx/appcompat/widget/ActivityChooserView$b;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ah;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 541
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->n:Landroidx/appcompat/widget/ah;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 437
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 438
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/c;->registerObserver(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 442
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->o:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 447
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 448
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActivityChooserView$a;->d()Landroidx/appcompat/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->e:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/c;->unregisterObserver(Ljava/lang/Object;)V

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 456
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    :cond_2
    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->o:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 478
    iget-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView;->j:Landroid/view/View;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 479
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 480
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 464
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->j:Landroid/view/View;

    .line 468
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 472
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroidx/appcompat/widget/ActivityChooserView;->measureChild(Landroid/view/View;II)V

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/ActivityChooserView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setActivityChooserModel(Landroidx/appcompat/widget/c;)V
    .locals 1

    .line 305
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->a:Landroidx/appcompat/widget/ActivityChooserView$a;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActivityChooserView$a;->a(Landroidx/appcompat/widget/c;)V

    .line 306
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->b()Z

    .line 308
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->a()Z

    :cond_0
    return-void
.end method

.method public setDefaultActionButtonContentDescription(I)V
    .locals 0

    .line 524
    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserView;->p:I

    return-void
.end method

.method public setExpandActivityOverflowButtonContentDescription(I)V
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 339
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInitialActivityCount(I)V
    .locals 0

    .line 510
    iput p1, p0, Landroidx/appcompat/widget/ActivityChooserView;->h:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 498
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView;->f:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setProvider(Lfi;)V
    .locals 0

    .line 348
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserView;->d:Lfi;

    return-void
.end method

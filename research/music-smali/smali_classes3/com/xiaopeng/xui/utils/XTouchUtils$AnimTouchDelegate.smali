.class Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;
.super Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;
.source "XTouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/utils/XTouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimTouchDelegate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent<",
        "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;",
        ">;"
    }
.end annotation


# instance fields
.field private mParamsArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/TouchDelegate;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            "Landroid/view/TouchDelegate;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;",
            ">;)V"
        }
    .end annotation

    .line 345
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegateParent;-><init>(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/TouchDelegate;Ljava/util/List;)V

    .line 342
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->mParamsArray:Landroid/util/SparseArray;

    .line 346
    invoke-direct {p0}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->initParamsArray()V

    return-void
.end method

.method private doAnim(ZLandroid/view/MotionEvent;Landroid/view/View;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/MotionEvent;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;",
            ">;)V"
        }
    .end annotation

    .line 389
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;

    .line 390
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getStartValue()F

    move-result v3

    .line 391
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getEndValue()F

    move-result v4

    const/4 v5, 0x2

    if-eqz p1, :cond_1

    .line 392
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimTouch()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 393
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getEndValue()F

    move-result v3

    .line 394
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getStartValue()F

    move-result v4

    .line 396
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 397
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTarget()Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 399
    :cond_2
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getType()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    if-nez v0, :cond_3

    .line 401
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 402
    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 404
    :cond_3
    invoke-direct {p0, v3, v4, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->getAnimation(FFLcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 405
    :cond_4
    invoke-virtual {v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getType()I

    move-result v6

    if-ne v6, v5, :cond_0

    if-nez v1, :cond_5

    .line 407
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 409
    :cond_5
    new-array v5, v8, [Landroid/animation/Animator;

    invoke-direct {p0, v3, v4, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->getAnimator(FFLcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;)Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_0

    .line 413
    :cond_6
    invoke-direct {p0, v0, p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->startAnimation(Landroid/view/animation/Animation;Landroid/view/View;)V

    .line 414
    invoke-direct {p0, v1, p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->startAnimator(Landroid/animation/Animator;Landroid/view/View;)V

    return-void
.end method

.method private getAnimation(FFLcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;)Landroid/view/animation/Animation;
    .locals 12

    .line 456
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 457
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimationType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 461
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    .line 464
    :cond_1
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimationType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 465
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v0

    move v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    .line 469
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 472
    :goto_0
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getDelay()I

    move-result p1

    if-lez p1, :cond_3

    .line 473
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getDelay()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 476
    :cond_3
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getDuration()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 478
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 479
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_4
    return-object v0
.end method

.method private getAnimator(FFLcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;)Landroid/animation/Animator;
    .locals 8

    .line 419
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimationType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 420
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 421
    new-array v4, v3, [Landroid/animation/Animator;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTarget()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v1, [F

    aput p1, v7, v2

    aput p2, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 422
    new-array v4, v3, [Landroid/animation/Animator;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTarget()Landroid/view/View;

    move-result-object v5

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-static {v5, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimationType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 425
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTarget()Landroid/view/View;

    move-result-object v0

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimationType()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 427
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTarget()Landroid/view/View;

    move-result-object v0

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTarget()Landroid/view/View;

    move-result-object v0

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 431
    :goto_0
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getDelay()I

    move-result p1

    if-lez p1, :cond_3

    .line 432
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getDelay()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 434
    :cond_3
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 435
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 437
    :cond_4
    invoke-virtual {p3}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getDuration()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-object v0
.end method

.method private initParamsArray()V
    .locals 5

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->mParamsArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->mParamsArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->mParamList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;

    .line 353
    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimTouch()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 354
    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->putParams(ILcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;)V

    .line 356
    :cond_1
    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->hasReverse()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getAnimTouch()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 357
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->putParams(ILcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private putParams(ILcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/xiaopeng/xui/utils/XTouchUtils$AnimationTouch;
        .end annotation
    .end param

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->mParamsArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 364
    invoke-virtual {p2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTarget()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-virtual {p2}, Lcom/xiaopeng/xui/utils/XTouchUtils$TouchParams;->getTarget()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startAnimation(Landroid/view/animation/Animation;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 490
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startAnimator(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->xui_touch_animtor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 446
    instance-of v1, v0, Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 447
    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 450
    :cond_1
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 451
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->xui_touch_animtor:I

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected doAnim(ZLandroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 375
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->mParamsArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 376
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 377
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->doAnim(ZLandroid/view/MotionEvent;Landroid/view/View;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 382
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XTouchUtils$AnimTouchDelegate;->mDelegateView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    return-void
.end method

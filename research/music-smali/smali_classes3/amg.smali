.class public Lamg;
.super Landroid/view/ViewGroup;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lamm;
.implements Lfx;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamg$c;,
        Lamg$a;,
        Lamg$b;
    }
.end annotation


# static fields
.field protected static aG:Lams;

.field protected static aH:Lamt;

.field protected static aI:Lamu;

.field protected static aJ:Landroid/view/ViewGroup$MarginLayoutParams;


# instance fields
.field protected A:[I

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Z

.field protected F:Z

.field protected G:Z

.field protected H:Z

.field protected I:Z

.field protected J:Z

.field protected K:Z

.field protected L:Z

.field protected M:Z

.field protected N:Z

.field protected O:Z

.field protected P:Z

.field protected Q:Z

.field protected R:Z

.field protected S:Z

.field protected T:Z

.field protected U:Z

.field protected V:Z

.field protected W:Lamx;

.field protected a:I

.field protected aA:I

.field protected aB:I

.field protected aC:Z

.field protected aD:Z

.field protected aE:Z

.field protected aF:Z

.field protected aK:Z

.field protected aL:Landroid/view/MotionEvent;

.field protected aM:Ljava/lang/Runnable;

.field protected aN:Landroid/animation/ValueAnimator;

.field protected aa:Lamv;

.field protected ab:Lamw;

.field protected ac:Lana;

.field protected ad:I

.field protected ae:Z

.field protected af:[I

.field protected ag:Lfw;

.field protected ah:Lga;

.field protected ai:I

.field protected aj:Lamn;

.field protected ak:I

.field protected al:Lamn;

.field protected am:I

.field protected an:I

.field protected ao:F

.field protected ap:F

.field protected aq:F

.field protected ar:Lamh;

.field protected as:Lamh;

.field protected at:Lami;

.field protected au:Landroid/graphics/Paint;

.field protected av:Landroid/os/Handler;

.field protected aw:Laml;

.field protected ax:Lamo;

.field protected ay:Lamo;

.field protected az:J

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:F

.field protected l:F

.field protected m:C

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:I

.field protected x:Landroid/widget/Scroller;

.field protected y:Landroid/view/VelocityTracker;

.field protected z:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 219
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sput-object v0, Lamg;->aJ:Landroid/view/ViewGroup$MarginLayoutParams;

    return-void
.end method

.method static synthetic a(Lamg;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lamg;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lamg;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lamg;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lamg;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lamg;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static setDefaultRefreshFooterCreator(Lams;)V
    .locals 0

    .line 3496
    sput-object p0, Lamg;->aG:Lams;

    return-void
.end method

.method public static setDefaultRefreshHeaderCreator(Lamt;)V
    .locals 0

    .line 3488
    sput-object p0, Lamg;->aH:Lamt;

    return-void
.end method

.method public static setDefaultRefreshInitializer(Lamu;)V
    .locals 0

    .line 3504
    sput-object p0, Lamg;->aI:Lamu;

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/Boolean;)Lamm;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 2951
    new-instance v1, Lamg$6;

    invoke-direct {v1, p0, v0, p3, p2}, Lamg$6;-><init>(Lamg;ILjava/lang/Boolean;Z)V

    if-lez p1, :cond_0

    .line 3041
    iget-object p2, p0, Lamg;->av:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3043
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public a(IZZ)Lamm;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shl-int/lit8 p1, p1, 0x10

    shr-int/lit8 p1, p1, 0x10

    .line 3094
    new-instance v1, Lamg$7;

    invoke-direct {v1, p0, v0, p3, p2}, Lamg$7;-><init>(Lamg;IZZ)V

    if-lez p1, :cond_0

    .line 3224
    iget-object p2, p0, Lamg;->av:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3226
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-object p0
.end method

.method public a(Lamj;)Lamm;
    .locals 1

    const/4 v0, 0x0

    .line 2589
    invoke-virtual {p0, p1, v0, v0}, Lamg;->a(Lamj;II)Lamm;

    move-result-object p1

    return-object p1
.end method

.method public a(Lamj;II)Lamm;
    .locals 2

    .line 2604
    iget-object v0, p0, Lamg;->as:Lamh;

    if-eqz v0, :cond_0

    .line 2605
    invoke-interface {v0}, Lamh;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2607
    :cond_0
    iput-object p1, p0, Lamg;->as:Lamh;

    const/4 v0, 0x0

    .line 2608
    iput-boolean v0, p0, Lamg;->aF:Z

    .line 2609
    iput v0, p0, Lamg;->aB:I

    .line 2610
    iput-boolean v0, p0, Lamg;->U:Z

    .line 2611
    iput-boolean v0, p0, Lamg;->aD:Z

    .line 2612
    sget-object v1, Lamn;->a:Lamn;

    iput-object v1, p0, Lamg;->al:Lamn;

    .line 2613
    iget-boolean v1, p0, Lamg;->V:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lamg;->C:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lamg;->C:Z

    if-nez p2, :cond_3

    const/4 p2, -0x1

    :cond_3
    if-nez p3, :cond_4

    const/4 p3, -0x2

    .line 2619
    :cond_4
    new-instance v1, Lamg$c;

    invoke-direct {v1, p2, p3}, Lamg$c;-><init>(II)V

    .line 2620
    invoke-interface {p1}, Lamj;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2621
    instance-of p2, p1, Lamg$c;

    if-eqz p2, :cond_5

    .line 2622
    move-object v1, p1

    check-cast v1, Lamg$c;

    .line 2624
    :cond_5
    iget-object p1, p0, Lamg;->as:Lamh;

    invoke-interface {p1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object p1

    iget-boolean p1, p1, Lamp;->h:Z

    if-eqz p1, :cond_6

    .line 2626
    iget-object p1, p0, Lamg;->as:Lamh;

    invoke-interface {p1}, Lamh;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 2628
    :cond_6
    iget-object p1, p0, Lamg;->as:Lamh;

    invoke-interface {p1}, Lamh;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2630
    :goto_2
    iget-object p1, p0, Lamg;->A:[I

    if-eqz p1, :cond_7

    iget-object p2, p0, Lamg;->as:Lamh;

    if-eqz p2, :cond_7

    .line 2631
    invoke-interface {p2, p1}, Lamh;->setPrimaryColors([I)V

    :cond_7
    return-object p0
.end method

.method public a(Lamk;)Lamm;
    .locals 1

    const/4 v0, 0x0

    .line 2537
    invoke-virtual {p0, p1, v0, v0}, Lamg;->a(Lamk;II)Lamm;

    move-result-object p1

    return-object p1
.end method

.method public a(Lamk;II)Lamm;
    .locals 2

    .line 2552
    iget-object v0, p0, Lamg;->ar:Lamh;

    if-eqz v0, :cond_0

    .line 2553
    invoke-interface {v0}, Lamh;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2555
    :cond_0
    iput-object p1, p0, Lamg;->ar:Lamh;

    const/4 v0, 0x0

    .line 2556
    iput v0, p0, Lamg;->aA:I

    .line 2557
    iput-boolean v0, p0, Lamg;->aC:Z

    .line 2558
    sget-object v1, Lamn;->a:Lamn;

    iput-object v1, p0, Lamg;->aj:Lamn;

    if-nez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    if-nez p3, :cond_2

    const/4 p3, -0x2

    .line 2564
    :cond_2
    new-instance v1, Lamg$c;

    invoke-direct {v1, p2, p3}, Lamg$c;-><init>(II)V

    .line 2565
    invoke-interface {p1}, Lamk;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2566
    instance-of p2, p1, Lamg$c;

    if-eqz p2, :cond_3

    .line 2567
    move-object v1, p1

    check-cast v1, Lamg$c;

    .line 2569
    :cond_3
    iget-object p1, p0, Lamg;->ar:Lamh;

    invoke-interface {p1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object p1

    iget-boolean p1, p1, Lamp;->h:Z

    if-eqz p1, :cond_4

    .line 2571
    iget-object p1, p0, Lamg;->ar:Lamh;

    invoke-interface {p1}, Lamh;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2573
    :cond_4
    iget-object p1, p0, Lamg;->ar:Lamh;

    invoke-interface {p1}, Lamh;->getView()Landroid/view/View;

    move-result-object p1

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2575
    :goto_0
    iget-object p1, p0, Lamg;->A:[I

    if-eqz p1, :cond_5

    iget-object p2, p0, Lamg;->ar:Lamh;

    if-eqz p2, :cond_5

    .line 2576
    invoke-interface {p2, p1}, Lamh;->setPrimaryColors([I)V

    :cond_5
    return-object p0
.end method

.method protected a(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
    .locals 4

    .line 1530
    iget v0, p0, Lamg;->b:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    .line 1531
    iget-object v0, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    .line 1532
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1533
    iget-object v0, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1534
    iput-object v1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    .line 1536
    :cond_0
    iput-object v1, p0, Lamg;->aM:Ljava/lang/Runnable;

    const/4 v0, 0x2

    .line 1537
    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lamg;->b:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    .line 1538
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1539
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1540
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    new-instance p3, Lamg$3;

    invoke-direct {p3, p0}, Lamg$3;-><init>(Lamg;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1564
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    new-instance p3, Lamg$4;

    invoke-direct {p3, p0}, Lamg$4;-><init>(Lamg;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1570
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1572
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1573
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    return-object p1

    :cond_1
    return-object v1
.end method

.method protected a()V
    .locals 4

    .line 1601
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->TwoLevel:Lamo;

    if-ne v0, v1, :cond_1

    .line 1603
    iget v0, p0, Lamg;->w:I

    const/16 v1, -0x3e8

    if-le v0, v1, :cond_0

    iget v0, p0, Lamg;->b:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 1604
    iget-object v0, p0, Lamg;->aw:Laml;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-interface {v0, v1}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1606
    iget v1, p0, Lamg;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 1608
    :cond_0
    iget-boolean v0, p0, Lamg;->n:Z

    if-eqz v0, :cond_f

    .line 1609
    iget-object v0, p0, Lamg;->aw:Laml;

    invoke-interface {v0}, Laml;->finishTwoLevel()Laml;

    goto/16 :goto_1

    .line 1611
    :cond_1
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Loading:Lamo;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lamg;->H:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lamg;->T:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lamg;->U:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lamg;->b:I

    if-gez v0, :cond_2

    iget-boolean v0, p0, Lamg;->C:Z

    .line 1612
    invoke-virtual {p0, v0}, Lamg;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 1618
    :cond_2
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Refreshing:Lamo;

    if-ne v0, v1, :cond_4

    .line 1619
    iget v0, p0, Lamg;->b:I

    iget v1, p0, Lamg;->ai:I

    if-le v0, v1, :cond_3

    .line 1620
    iget-object v0, p0, Lamg;->aw:Laml;

    invoke-interface {v0, v1}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    :cond_3
    if-gez v0, :cond_f

    .line 1622
    iget-object v0, p0, Lamg;->aw:Laml;

    invoke-interface {v0, v2}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto/16 :goto_1

    .line 1624
    :cond_4
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->PullDownToRefresh:Lamo;

    if-ne v0, v1, :cond_5

    .line 1625
    iget-object v0, p0, Lamg;->aw:Laml;

    sget-object v1, Lamo;->PullDownCanceled:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    goto/16 :goto_1

    .line 1626
    :cond_5
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->PullUpToLoad:Lamo;

    if-ne v0, v1, :cond_6

    .line 1627
    iget-object v0, p0, Lamg;->aw:Laml;

    sget-object v1, Lamo;->PullUpCanceled:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    goto/16 :goto_1

    .line 1628
    :cond_6
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->ReleaseToRefresh:Lamo;

    if-ne v0, v1, :cond_7

    .line 1629
    iget-object v0, p0, Lamg;->aw:Laml;

    sget-object v1, Lamo;->Refreshing:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    goto/16 :goto_1

    .line 1630
    :cond_7
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->ReleaseToLoad:Lamo;

    if-ne v0, v1, :cond_8

    .line 1631
    iget-object v0, p0, Lamg;->aw:Laml;

    sget-object v1, Lamo;->Loading:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    goto :goto_1

    .line 1632
    :cond_8
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->ReleaseToTwoLevel:Lamo;

    if-ne v0, v1, :cond_9

    .line 1633
    iget-object v0, p0, Lamg;->aw:Laml;

    sget-object v1, Lamo;->TwoLevelReleased:Lamo;

    invoke-interface {v0, v1}, Laml;->setState(Lamo;)Laml;

    goto :goto_1

    .line 1634
    :cond_9
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->RefreshReleased:Lamo;

    if-ne v0, v1, :cond_a

    .line 1635
    iget-object v0, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f

    .line 1636
    iget-object v0, p0, Lamg;->aw:Laml;

    iget v1, p0, Lamg;->ai:I

    invoke-interface {v0, v1}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1638
    :cond_a
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->LoadReleased:Lamo;

    if-ne v0, v1, :cond_b

    .line 1639
    iget-object v0, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f

    .line 1640
    iget-object v0, p0, Lamg;->aw:Laml;

    iget v1, p0, Lamg;->ak:I

    neg-int v1, v1

    invoke-interface {v0, v1}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1642
    :cond_b
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->LoadFinish:Lamo;

    if-ne v0, v1, :cond_c

    goto :goto_1

    .line 1648
    :cond_c
    iget v0, p0, Lamg;->b:I

    if-eqz v0, :cond_f

    .line 1649
    iget-object v0, p0, Lamg;->aw:Laml;

    invoke-interface {v0, v2}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 1613
    :cond_d
    :goto_0
    iget v0, p0, Lamg;->b:I

    iget v1, p0, Lamg;->ak:I

    neg-int v3, v1

    if-ge v0, v3, :cond_e

    .line 1614
    iget-object v0, p0, Lamg;->aw:Laml;

    neg-int v1, v1

    invoke-interface {v0, v1}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_e
    if-lez v0, :cond_f

    .line 1616
    iget-object v0, p0, Lamg;->aw:Laml;

    invoke-interface {v0, v2}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_f
    :goto_1
    return-void
.end method

.method protected a(Lamo;)V
    .locals 4

    .line 1177
    iget-object v0, p0, Lamg;->ax:Lamo;

    if-eq v0, p1, :cond_3

    .line 1179
    iput-object p1, p0, Lamg;->ax:Lamo;

    .line 1180
    iput-object p1, p0, Lamg;->ay:Lamo;

    .line 1181
    iget-object v1, p0, Lamg;->ar:Lamh;

    .line 1182
    iget-object v2, p0, Lamg;->as:Lamh;

    .line 1183
    iget-object v3, p0, Lamg;->ab:Lamw;

    if-eqz v1, :cond_0

    .line 1185
    invoke-interface {v1, p0, v0, p1}, Lamz;->a(Lamm;Lamo;Lamo;)V

    :cond_0
    if-eqz v2, :cond_1

    .line 1188
    invoke-interface {v2, p0, v0, p1}, Lamz;->a(Lamm;Lamo;Lamo;)V

    :cond_1
    if-eqz v3, :cond_2

    .line 1191
    invoke-interface {v3, p0, v0, p1}, Lamz;->a(Lamm;Lamo;Lamo;)V

    .line 1193
    :cond_2
    sget-object v0, Lamo;->LoadFinish:Lamo;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    .line 1194
    iput-boolean p1, p0, Lamg;->aF:Z

    goto :goto_0

    .line 1196
    :cond_3
    iget-object p1, p0, Lamg;->ay:Lamo;

    if-eq p1, v0, :cond_4

    .line 1200
    iput-object v0, p0, Lamg;->ay:Lamo;

    :cond_4
    :goto_0
    return-void
.end method

.method protected a(F)Z
    .locals 12

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 1097
    iget p1, p0, Lamg;->w:I

    int-to-float p1, p1

    .line 1110
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lamg;->u:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_9

    .line 1111
    iget v1, p0, Lamg;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    .line 1118
    iget-object v1, p0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->Refreshing:Lamo;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->Loading:Lamo;

    if-eq v1, v3, :cond_2

    iget v1, p0, Lamg;->b:I

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lamg;->T:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1121
    :cond_1
    iget-object v1, p0, Lamg;->ax:Lamo;

    iget-boolean v1, v1, Lamo;->isReleaseToOpening:Z

    if-eqz v1, :cond_3

    return v4

    .line 1119
    :cond_2
    :goto_0
    new-instance v0, Lamg$b;

    invoke-direct {v0, p0, p1}, Lamg$b;-><init>(Lamg;F)V

    invoke-virtual {v0}, Lamg$b;->a()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lamg;->aM:Ljava/lang/Runnable;

    return v4

    :cond_3
    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 1125
    iget-boolean v1, p0, Lamg;->J:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lamg;->C:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lamg;->K:Z

    if-nez v1, :cond_8

    :cond_4
    iget-object v1, p0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->Loading:Lamo;

    if-ne v1, v3, :cond_5

    iget v1, p0, Lamg;->b:I

    if-gez v1, :cond_8

    :cond_5
    iget-boolean v1, p0, Lamg;->L:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lamg;->C:Z

    invoke-virtual {p0, v1}, Lamg;->a(Z)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_6
    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lamg;->J:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lamg;->B:Z

    if-nez v0, :cond_8

    :cond_7
    iget-boolean v0, p0, Lamg;->K:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Refreshing:Lamo;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lamg;->b:I

    if-gtz v0, :cond_9

    .line 1134
    :cond_8
    iput-boolean v2, p0, Lamg;->aK:Z

    .line 1135
    iget-object v3, p0, Lamg;->x:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-float p1, p1

    float-to-int v7, p1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, -0x7fffffff

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1136
    iget-object p1, p0, Lamg;->x:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1138
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return v2
.end method

.method protected a(I)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_5

    .line 1151
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1152
    iget-object p1, p0, Lamg;->ax:Lamo;

    iget-boolean p1, p1, Lamo;->isFinishing:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->TwoLevelReleased:Lamo;

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->RefreshReleased:Lamo;

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->LoadReleased:Lamo;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 1155
    :cond_0
    iget-object p1, p0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->PullDownCanceled:Lamo;

    if-ne p1, v2, :cond_1

    .line 1156
    iget-object p1, p0, Lamg;->aw:Laml;

    sget-object v2, Lamo;->PullDownToRefresh:Lamo;

    invoke-interface {p1, v2}, Laml;->setState(Lamo;)Laml;

    goto :goto_0

    .line 1157
    :cond_1
    iget-object p1, p0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->PullUpCanceled:Lamo;

    if-ne p1, v2, :cond_2

    .line 1158
    iget-object p1, p0, Lamg;->aw:Laml;

    sget-object v2, Lamo;->PullUpToLoad:Lamo;

    invoke-interface {p1, v2}, Laml;->setState(Lamo;)Laml;

    .line 1160
    :cond_2
    :goto_0
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1161
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1162
    iput-object v1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 1164
    :cond_4
    :goto_2
    iput-object v1, p0, Lamg;->aM:Ljava/lang/Runnable;

    .line 1166
    :cond_5
    iget-object p1, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method protected a(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1385
    iget-boolean p1, p0, Lamg;->M:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected a(ZLamh;)Z
    .locals 0

    if-nez p1, :cond_1

    .line 1375
    iget-boolean p1, p0, Lamg;->M:Z

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object p1

    sget-object p2, Lamp;->c:Lamp;

    if-ne p1, p2, :cond_0

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

.method public b()Lamm;
    .locals 4

    .line 3055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lamg;->az:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x12c

    rsub-int v0, v0, 0x12c

    const/4 v2, 0x0

    .line 3056
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lamg;->a(IZLjava/lang/Boolean;)Lamm;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lamm;
    .locals 2

    .line 2919
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lamg;->a(IZLjava/lang/Boolean;)Lamm;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lamm;
    .locals 2

    .line 2854
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Refreshing:Lamo;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 2855
    invoke-virtual {p0}, Lamg;->b()Lamm;

    goto/16 :goto_0

    .line 2856
    :cond_0
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Loading:Lamo;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 2857
    invoke-virtual {p0}, Lamg;->c()Lamm;

    goto :goto_0

    .line 2858
    :cond_1
    iget-boolean v0, p0, Lamg;->T:Z

    if-eq v0, p1, :cond_3

    .line 2859
    iput-boolean p1, p0, Lamg;->T:Z

    .line 2860
    iget-object v0, p0, Lamg;->as:Lamh;

    instance-of v1, v0, Lamj;

    if-eqz v1, :cond_3

    .line 2861
    check-cast v0, Lamj;

    invoke-interface {v0, p1}, Lamj;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2862
    iput-boolean p1, p0, Lamg;->U:Z

    .line 2863
    iget-boolean p1, p0, Lamg;->T:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lamg;->H:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lamg;->b:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lamg;->as:Lamh;

    .line 2864
    invoke-interface {p1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object p1

    sget-object v0, Lamp;->a:Lamp;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lamg;->C:Z

    .line 2865
    invoke-virtual {p0, p1}, Lamg;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lamg;->B:Z

    iget-object v0, p0, Lamg;->ar:Lamh;

    .line 2866
    invoke-virtual {p0, p1, v0}, Lamg;->a(ZLamh;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2867
    iget-object p1, p0, Lamg;->as:Lamh;

    invoke-interface {p1}, Lamh;->getView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lamg;->b:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 2870
    iput-boolean p1, p0, Lamg;->U:Z

    .line 2871
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Footer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lamg;->as:Lamh;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NoMoreData is not supported.(\u4e0d\u652f\u6301NoMoreData\uff0c\u8bf7\u4f7f\u7528[ClassicsFooter]\u6216\u8005[\u81ea\u5b9a\u4e49Footer\u5e76\u5b9e\u73b0setNoMoreData\u65b9\u6cd5\u4e14\u8fd4\u56detrue])"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2872
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method protected b(F)V
    .locals 3

    .line 1583
    iget-object v0, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 1584
    iget-object v1, p0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->Refreshing:Lamo;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->TwoLevel:Lamo;

    if-ne v1, v2, :cond_1

    .line 1585
    :cond_0
    new-instance v0, Lamg$a;

    iget v1, p0, Lamg;->ai:I

    invoke-direct {v0, p0, p1, v1}, Lamg$a;-><init>(Lamg;FI)V

    iput-object v0, p0, Lamg;->aM:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    .line 1586
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Loading:Lamo;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lamg;->H:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lamg;->T:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lamg;->U:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lamg;->C:Z

    .line 1587
    invoke-virtual {p0, v0}, Lamg;->a(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lamg;->L:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lamg;->T:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lamg;->C:Z

    .line 1588
    invoke-virtual {p0, v0}, Lamg;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Refreshing:Lamo;

    if-eq v0, v1, :cond_4

    .line 1589
    :cond_3
    new-instance v0, Lamg$a;

    iget v1, p0, Lamg;->ak:I

    neg-int v1, v1

    invoke-direct {v0, p0, p1, v1}, Lamg$a;-><init>(Lamg;FI)V

    iput-object v0, p0, Lamg;->aM:Ljava/lang/Runnable;

    goto :goto_0

    .line 1590
    :cond_4
    iget v0, p0, Lamg;->b:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lamg;->J:Z

    if-eqz v0, :cond_5

    .line 1591
    new-instance v0, Lamg$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lamg$a;-><init>(Lamg;FI)V

    iput-object v0, p0, Lamg;->aM:Ljava/lang/Runnable;

    :cond_5
    :goto_0
    return-void
.end method

.method public c()Lamm;
    .locals 4

    .line 3238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lamg;->az:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x12c

    rsub-int v0, v0, 0x12c

    const/4 v2, 0x0

    .line 3239
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lamg;->a(IZZ)Lamm;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lamm;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3067
    invoke-virtual {p0, p1, v0, v1}, Lamg;->a(IZZ)Lamm;

    move-result-object p1

    return-object p1
.end method

.method protected c(F)V
    .locals 16

    move-object/from16 v0, p0

    .line 1659
    iget-boolean v1, v0, Lamg;->ae:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lamg;->P:Z

    if-nez v1, :cond_0

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    .line 1660
    iget-object v1, v0, Lamg;->at:Lami;

    invoke-interface {v1}, Lami;->d()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 1687
    :goto_0
    iget v3, v0, Lamg;->g:I

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    sget v3, Lamq$a;->srl_tag:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget v3, v0, Lamg;->k:F

    iget v5, v0, Lamg;->g:I

    int-to-float v6, v5

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v6, v7

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    iget v3, v0, Lamg;->j:F

    int-to-float v5, v5

    const/high16 v6, 0x41800000    # 16.0f

    div-float/2addr v5, v6

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    const-string/jumbo v3, "\u4f60\u8fd9\u4e48\u6b7b\u62c9\uff0c\u81e3\u59be\u505a\u4e0d\u5230\u554a\uff01"

    .line 1689
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1690
    sget v5, Lamq$a;->srl_tag:I

    invoke-virtual {v0, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1692
    :cond_1
    iget-object v3, v0, Lamg;->ax:Lamo;

    sget-object v5, Lamo;->TwoLevel:Lamo;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    .line 1693
    iget-object v3, v0, Lamg;->aw:Laml;

    float-to-int v5, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v3, v5, v6}, Laml;->moveSpinner(IZ)Laml;

    goto/16 :goto_3

    .line 1694
    :cond_2
    iget-object v3, v0, Lamg;->ax:Lamo;

    sget-object v5, Lamo;->Refreshing:Lamo;

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const/high16 v11, 0x41200000    # 10.0f

    if-ne v3, v5, :cond_6

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_6

    .line 1695
    iget v3, v0, Lamg;->ai:I

    int-to-float v5, v3

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    .line 1696
    iget-object v3, v0, Lamg;->aw:Laml;

    float-to-int v5, v1

    invoke-interface {v3, v5, v6}, Laml;->moveSpinner(IZ)Laml;

    goto/16 :goto_3

    .line 1698
    :cond_3
    iget v5, v0, Lamg;->ao:F

    cmpg-float v11, v5, v11

    if-gez v11, :cond_4

    int-to-float v3, v3

    mul-float/2addr v5, v3

    .line 1699
    :cond_4
    iget v3, v0, Lamg;->ai:I

    int-to-float v3, v3

    sub-float/2addr v5, v3

    float-to-double v14, v5

    .line 1700
    iget v3, v0, Lamg;->g:I

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, v0, Lamg;->ai:I

    sub-int/2addr v3, v5

    int-to-double v12, v3

    int-to-float v3, v5

    sub-float v3, v1, v3

    .line 1701
    iget v5, v0, Lamg;->l:F

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-double v4, v3

    neg-double v2, v4

    cmpl-double v7, v12, v7

    if-nez v7, :cond_5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :cond_5
    div-double/2addr v2, v12

    .line 1702
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double v12, v7, v2

    mul-double/2addr v14, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1703
    iget-object v4, v0, Lamg;->aw:Laml;

    double-to-int v2, v2

    iget v3, v0, Lamg;->ai:I

    add-int/2addr v2, v3

    invoke-interface {v4, v2, v6}, Laml;->moveSpinner(IZ)Laml;

    goto/16 :goto_3

    :cond_6
    cmpg-float v3, v1, v2

    if-gez v3, :cond_c

    .line 1705
    iget-object v2, v0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->Loading:Lamo;

    if-eq v2, v3, :cond_8

    iget-boolean v2, v0, Lamg;->H:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lamg;->T:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lamg;->U:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lamg;->C:Z

    .line 1706
    invoke-virtual {v0, v2}, Lamg;->a(Z)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-boolean v2, v0, Lamg;->L:Z

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lamg;->T:Z

    if-nez v2, :cond_c

    iget-boolean v2, v0, Lamg;->C:Z

    .line 1707
    invoke-virtual {v0, v2}, Lamg;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1708
    :cond_8
    iget v2, v0, Lamg;->ak:I

    neg-int v3, v2

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_9

    .line 1709
    iget-object v2, v0, Lamg;->aw:Laml;

    float-to-int v3, v1

    invoke-interface {v2, v3, v6}, Laml;->moveSpinner(IZ)Laml;

    goto/16 :goto_3

    .line 1711
    :cond_9
    iget v3, v0, Lamg;->ap:F

    cmpg-float v4, v3, v11

    if-gez v4, :cond_a

    int-to-float v2, v2

    mul-float/2addr v3, v2

    .line 1712
    :cond_a
    iget v2, v0, Lamg;->ak:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    float-to-double v2, v3

    .line 1713
    iget v4, v0, Lamg;->g:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Lamg;->ak:I

    sub-int/2addr v4, v5

    int-to-double v12, v4

    int-to-float v4, v5

    add-float/2addr v4, v1

    .line 1714
    iget v5, v0, Lamg;->l:F

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    neg-double v14, v4

    cmpl-double v7, v12, v7

    if-nez v7, :cond_b

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :cond_b
    div-double/2addr v14, v12

    .line 1715
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v12, v9, v7

    mul-double/2addr v2, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1716
    iget-object v4, v0, Lamg;->aw:Laml;

    double-to-int v2, v2

    iget v3, v0, Lamg;->ak:I

    sub-int/2addr v2, v3

    invoke-interface {v4, v2, v6}, Laml;->moveSpinner(IZ)Laml;

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_f

    .line 1719
    iget v2, v0, Lamg;->ao:F

    cmpg-float v3, v2, v11

    if-gez v3, :cond_d

    iget v3, v0, Lamg;->ai:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    goto :goto_1

    :cond_d
    float-to-double v2, v2

    .line 1720
    :goto_1
    iget v4, v0, Lamg;->g:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v12, v4

    .line 1721
    iget v4, v0, Lamg;->l:F

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-double v4, v4

    neg-double v14, v4

    cmpl-double v7, v12, v7

    if-nez v7, :cond_e

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :cond_e
    div-double/2addr v14, v12

    .line 1722
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v12, v9, v7

    mul-double/2addr v2, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 1723
    iget-object v4, v0, Lamg;->aw:Laml;

    double-to-int v2, v2

    invoke-interface {v4, v2, v6}, Laml;->moveSpinner(IZ)Laml;

    goto :goto_3

    .line 1725
    :cond_f
    iget v2, v0, Lamg;->ap:F

    cmpg-float v3, v2, v11

    if-gez v3, :cond_10

    iget v3, v0, Lamg;->ak:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-double v2, v3

    goto :goto_2

    :cond_10
    float-to-double v2, v2

    .line 1726
    :goto_2
    iget v4, v0, Lamg;->g:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v12, v4

    .line 1727
    iget v4, v0, Lamg;->l:F

    mul-float/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    neg-float v4, v4

    float-to-double v4, v4

    neg-double v14, v4

    cmpl-double v7, v12, v7

    if-nez v7, :cond_11

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :cond_11
    div-double/2addr v14, v12

    .line 1728
    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v12, v9, v7

    mul-double/2addr v2, v12

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    neg-double v2, v2

    .line 1729
    iget-object v4, v0, Lamg;->aw:Laml;

    double-to-int v2, v2

    invoke-interface {v4, v2, v6}, Laml;->moveSpinner(IZ)Laml;

    .line 1731
    :goto_3
    iget-boolean v2, v0, Lamg;->L:Z

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lamg;->T:Z

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lamg;->C:Z

    invoke-virtual {v0, v2}, Lamg;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_13

    iget-object v1, v0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->Refreshing:Lamo;

    if-eq v1, v2, :cond_13

    iget-object v1, v0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->Loading:Lamo;

    if-eq v1, v2, :cond_13

    iget-object v1, v0, Lamg;->ax:Lamo;

    sget-object v2, Lamo;->LoadFinish:Lamo;

    if-eq v1, v2, :cond_13

    .line 1735
    iget-boolean v1, v0, Lamg;->S:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 1736
    iput-object v1, v0, Lamg;->aM:Ljava/lang/Runnable;

    .line 1737
    iget-object v1, v0, Lamg;->aw:Laml;

    iget v2, v0, Lamg;->ak:I

    neg-int v2, v2

    invoke-interface {v1, v2}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    :cond_12
    const/4 v1, 0x0

    .line 1739
    invoke-virtual {v0, v1}, Lamg;->setStateDirectLoading(Z)V

    .line 1743
    iget-object v1, v0, Lamg;->av:Landroid/os/Handler;

    new-instance v2, Lamg$5;

    invoke-direct {v2, v0}, Lamg$5;-><init>(Lamg;)V

    iget v3, v0, Lamg;->f:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .line 846
    iget-object v0, p0, Lamg;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 847
    iget-object v0, p0, Lamg;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 848
    iget-object v0, p0, Lamg;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 849
    iget-boolean v2, p0, Lamg;->B:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lamg;->K:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lamg;->at:Lami;

    invoke-interface {v2}, Lami;->c()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-lez v0, :cond_6

    iget-boolean v2, p0, Lamg;->C:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lamg;->K:Z

    if-eqz v2, :cond_6

    :cond_2
    iget-object v2, p0, Lamg;->at:Lami;

    .line 850
    invoke-interface {v2}, Lami;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 851
    :cond_3
    iget-boolean v2, p0, Lamg;->aK:Z

    if-eqz v2, :cond_5

    if-lez v0, :cond_4

    .line 853
    iget-object v0, p0, Lamg;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lamg;->x:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    .line 854
    :goto_0
    invoke-virtual {p0, v0}, Lamg;->b(F)V

    .line 856
    :cond_5
    iget-object v0, p0, Lamg;->x:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 858
    :cond_6
    iput-boolean v1, p0, Lamg;->aK:Z

    .line 860
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 882
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v2, 0x6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v6, v2, :cond_0

    move v3, v11

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    if-eqz v3, :cond_1

    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 888
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v7, 0x0

    move v9, v7

    move v12, v9

    move v8, v10

    :goto_2
    if-ge v8, v5, :cond_3

    if-ne v4, v8, :cond_2

    goto :goto_3

    .line 891
    :cond_2
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    add-float/2addr v9, v13

    .line 892
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v12, v13

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    int-to-float v3, v5

    div-float/2addr v9, v3

    div-float v8, v12, v3

    if-eq v6, v2, :cond_5

    const/4 v2, 0x5

    if-ne v6, v2, :cond_6

    .line 897
    :cond_5
    iget-boolean v2, v0, Lamg;->n:Z

    if-eqz v2, :cond_6

    .line 899
    iget v2, v0, Lamg;->i:F

    iget v3, v0, Lamg;->k:F

    sub-float v3, v8, v3

    add-float/2addr v2, v3

    iput v2, v0, Lamg;->i:F

    .line 901
    :cond_6
    iput v9, v0, Lamg;->j:F

    .line 902
    iput v8, v0, Lamg;->k:F

    .line 911
    iget-boolean v2, v0, Lamg;->ae:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_a

    .line 912
    iget v2, v0, Lamg;->ad:I

    .line 913
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v6, v3, :cond_9

    .line 915
    iget v3, v0, Lamg;->ad:I

    if-ne v2, v3, :cond_9

    .line 916
    iget v2, v0, Lamg;->j:F

    float-to-int v2, v2

    .line 917
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 918
    iget v4, v0, Lamg;->j:F

    if-nez v3, :cond_7

    goto :goto_4

    :cond_7
    move v11, v3

    :goto_4
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 919
    iget-boolean v5, v0, Lamg;->B:Z

    invoke-virtual {v0, v5}, Lamg;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, v0, Lamg;->b:I

    if-lez v5, :cond_8

    iget-object v5, v0, Lamg;->ar:Lamh;

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lamh;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 920
    iget-object v5, v0, Lamg;->ar:Lamh;

    invoke-interface {v5, v4, v2, v3}, Lamh;->a(FII)V

    goto :goto_5

    .line 921
    :cond_8
    iget-boolean v5, v0, Lamg;->C:Z

    invoke-virtual {v0, v5}, Lamg;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lamg;->b:I

    if-gez v5, :cond_9

    iget-object v5, v0, Lamg;->as:Lamh;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Lamh;->a()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 922
    iget-object v5, v0, Lamg;->as:Lamh;

    invoke-interface {v5, v4, v2, v3}, Lamh;->a(FII)V

    :cond_9
    :goto_5
    return v1

    .line 927
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-boolean v2, v0, Lamg;->B:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lamg;->C:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lamg;->K:Z

    if-eqz v2, :cond_37

    :cond_b
    iget-boolean v2, v0, Lamg;->aC:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Lamg;->ax:Lamo;

    iget-boolean v2, v2, Lamo;->isOpening:Z

    if-nez v2, :cond_c

    iget-object v2, v0, Lamg;->ax:Lamo;

    iget-boolean v2, v2, Lamo;->isFinishing:Z

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, v0, Lamg;->ax:Lamo;

    iget-boolean v2, v2, Lamo;->isHeader:Z

    if-nez v2, :cond_37

    :cond_d
    iget-boolean v2, v0, Lamg;->aD:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lamg;->ax:Lamo;

    iget-boolean v2, v2, Lamo;->isOpening:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lamg;->ax:Lamo;

    iget-boolean v2, v2, Lamo;->isFinishing:Z

    if-eqz v2, :cond_f

    :cond_e
    iget-object v2, v0, Lamg;->ax:Lamo;

    iget-boolean v2, v2, Lamo;->isFooter:Z

    if-eqz v2, :cond_f

    goto/16 :goto_f

    .line 934
    :cond_f
    invoke-virtual {v0, v6}, Lamg;->a(I)Z

    move-result v2

    if-nez v2, :cond_36

    iget-object v2, v0, Lamg;->ax:Lamo;

    iget-boolean v2, v2, Lamo;->isFinishing:Z

    if-nez v2, :cond_36

    iget-object v2, v0, Lamg;->ax:Lamo;

    sget-object v4, Lamo;->Loading:Lamo;

    if-ne v2, v4, :cond_10

    iget-boolean v2, v0, Lamg;->S:Z

    if-nez v2, :cond_36

    :cond_10
    iget-object v2, v0, Lamg;->ax:Lamo;

    sget-object v4, Lamo;->Refreshing:Lamo;

    if-ne v2, v4, :cond_11

    iget-boolean v2, v0, Lamg;->R:Z

    if-eqz v2, :cond_11

    goto/16 :goto_e

    :cond_11
    const/16 v2, 0x68

    if-eqz v6, :cond_33

    const/4 v4, 0x0

    if-eq v6, v11, :cond_2f

    const/4 v5, 0x3

    if-eq v6, v3, :cond_12

    if-eq v6, v5, :cond_30

    goto/16 :goto_d

    .line 974
    :cond_12
    iget v3, v0, Lamg;->h:F

    sub-float/2addr v9, v3

    .line 975
    iget v3, v0, Lamg;->i:F

    sub-float v3, v8, v3

    .line 976
    iget-object v6, v0, Lamg;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 977
    iget-boolean v6, v0, Lamg;->n:Z

    if-nez v6, :cond_1f

    iget-boolean v6, v0, Lamg;->p:Z

    if-nez v6, :cond_1f

    iget-char v6, v0, Lamg;->m:C

    if-eq v6, v2, :cond_1f

    iget-object v12, v0, Lamg;->at:Lami;

    if-eqz v12, :cond_1f

    const/16 v12, 0x76

    if-eq v6, v12, :cond_14

    .line 978
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v13, v0, Lamg;->a:I

    int-to-float v13, v13

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpg-float v6, v6, v13

    if-gez v6, :cond_13

    goto :goto_6

    .line 1001
    :cond_13
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v13, v0, Lamg;->a:I

    int-to-float v13, v13

    cmpl-float v6, v6, v13

    if-ltz v6, :cond_1f

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v6, v6, v13

    if-lez v6, :cond_1f

    iget-char v6, v0, Lamg;->m:C

    if-eq v6, v12, :cond_1f

    .line 1002
    iput-char v2, v0, Lamg;->m:C

    goto/16 :goto_a

    .line 979
    :cond_14
    :goto_6
    iput-char v12, v0, Lamg;->m:C

    cmpl-float v2, v3, v7

    if-lez v2, :cond_17

    .line 980
    iget v2, v0, Lamg;->b:I

    if-ltz v2, :cond_16

    iget-boolean v2, v0, Lamg;->K:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lamg;->B:Z

    if-eqz v2, :cond_17

    :cond_15
    iget-object v2, v0, Lamg;->at:Lami;

    invoke-interface {v2}, Lami;->c()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 981
    :cond_16
    iput-boolean v11, v0, Lamg;->n:Z

    .line 982
    iget v2, v0, Lamg;->a:I

    int-to-float v2, v2

    sub-float v2, v8, v2

    iput v2, v0, Lamg;->i:F

    goto :goto_7

    :cond_17
    cmpg-float v2, v3, v7

    if-gez v2, :cond_1b

    .line 983
    iget v2, v0, Lamg;->b:I

    if-gtz v2, :cond_1a

    iget-boolean v2, v0, Lamg;->K:Z

    if-nez v2, :cond_18

    iget-boolean v2, v0, Lamg;->C:Z

    if-eqz v2, :cond_1b

    :cond_18
    iget-object v2, v0, Lamg;->ax:Lamo;

    sget-object v6, Lamo;->Loading:Lamo;

    if-ne v2, v6, :cond_19

    iget-boolean v2, v0, Lamg;->aF:Z

    if-nez v2, :cond_1a

    :cond_19
    iget-object v2, v0, Lamg;->at:Lami;

    invoke-interface {v2}, Lami;->d()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 984
    :cond_1a
    iput-boolean v11, v0, Lamg;->n:Z

    .line 985
    iget v2, v0, Lamg;->a:I

    int-to-float v2, v2

    add-float/2addr v2, v8

    iput v2, v0, Lamg;->i:F

    .line 987
    :cond_1b
    :goto_7
    iget-boolean v2, v0, Lamg;->n:Z

    if-eqz v2, :cond_1f

    .line 988
    iget v2, v0, Lamg;->i:F

    sub-float v3, v8, v2

    .line 989
    iget-boolean v2, v0, Lamg;->o:Z

    if-eqz v2, :cond_1c

    .line 990
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 991
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 993
    :cond_1c
    iget-object v2, v0, Lamg;->aw:Laml;

    iget v6, v0, Lamg;->b:I

    if-gtz v6, :cond_1e

    if-nez v6, :cond_1d

    cmpl-float v6, v3, v7

    if-lez v6, :cond_1d

    goto :goto_8

    :cond_1d
    sget-object v6, Lamo;->PullUpToLoad:Lamo;

    goto :goto_9

    :cond_1e
    :goto_8
    sget-object v6, Lamo;->PullDownToRefresh:Lamo;

    :goto_9
    invoke-interface {v2, v6}, Laml;->setState(Lamo;)Laml;

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 995
    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1f

    .line 998
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1005
    :cond_1f
    :goto_a
    iget-boolean v2, v0, Lamg;->n:Z

    if-eqz v2, :cond_2e

    float-to-int v2, v3

    .line 1006
    iget v6, v0, Lamg;->d:I

    add-int/2addr v2, v6

    .line 1007
    iget-object v6, v0, Lamg;->ay:Lamo;

    iget-boolean v6, v6, Lamo;->isHeader:Z

    if-eqz v6, :cond_20

    if-ltz v2, :cond_21

    iget v6, v0, Lamg;->c:I

    if-ltz v6, :cond_21

    :cond_20
    iget-object v6, v0, Lamg;->ay:Lamo;

    iget-boolean v6, v6, Lamo;->isFooter:Z

    if-eqz v6, :cond_2d

    if-gtz v2, :cond_21

    iget v6, v0, Lamg;->c:I

    if-lez v6, :cond_2d

    .line 1008
    :cond_21
    iput v2, v0, Lamg;->c:I

    .line 1009
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    .line 1010
    iget-object v1, v0, Lamg;->aL:Landroid/view/MotionEvent;

    if-nez v1, :cond_22

    const/16 v16, 0x0

    .line 1011
    iget v1, v0, Lamg;->h:F

    add-float v17, v1, v9

    iget v1, v0, Lamg;->i:F

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    move/from16 v18, v1

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lamg;->aL:Landroid/view/MotionEvent;

    .line 1012
    iget-object v1, v0, Lamg;->aL:Landroid/view/MotionEvent;

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_22
    const/16 v16, 0x2

    .line 1014
    iget v1, v0, Lamg;->h:F

    add-float v17, v1, v9

    iget v1, v0, Lamg;->i:F

    int-to-float v6, v2

    add-float v18, v1, v6

    const/16 v19, 0x0

    move-wide/from16 v12, v20

    move-wide/from16 v14, v20

    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1015
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1016
    iget-boolean v6, v0, Lamg;->aF:Z

    if-eqz v6, :cond_23

    iget v6, v0, Lamg;->a:I

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_23

    iget v3, v0, Lamg;->b:I

    if-gez v3, :cond_23

    .line 1017
    iput-boolean v10, v0, Lamg;->aF:Z

    :cond_23
    if-lez v2, :cond_25

    .line 1019
    iget-boolean v3, v0, Lamg;->K:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Lamg;->B:Z

    if-eqz v3, :cond_25

    :cond_24
    iget-object v3, v0, Lamg;->at:Lami;

    invoke-interface {v3}, Lami;->c()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1020
    iput v8, v0, Lamg;->k:F

    iput v8, v0, Lamg;->i:F

    .line 1021
    iput v10, v0, Lamg;->d:I

    .line 1022
    iget-object v2, v0, Lamg;->aw:Laml;

    sget-object v3, Lamo;->PullDownToRefresh:Lamo;

    invoke-interface {v2, v3}, Laml;->setState(Lamo;)Laml;

    :goto_b
    move v2, v10

    goto :goto_c

    :cond_25
    if-gez v2, :cond_27

    .line 1023
    iget-boolean v3, v0, Lamg;->K:Z

    if-nez v3, :cond_26

    iget-boolean v3, v0, Lamg;->C:Z

    if-eqz v3, :cond_27

    :cond_26
    iget-object v3, v0, Lamg;->at:Lami;

    invoke-interface {v3}, Lami;->d()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1024
    iput v8, v0, Lamg;->k:F

    iput v8, v0, Lamg;->i:F

    .line 1025
    iput v10, v0, Lamg;->d:I

    .line 1026
    iget-object v2, v0, Lamg;->aw:Laml;

    sget-object v3, Lamo;->PullUpToLoad:Lamo;

    invoke-interface {v2, v3}, Laml;->setState(Lamo;)Laml;

    goto :goto_b

    .line 1028
    :cond_27
    :goto_c
    iget-object v3, v0, Lamg;->ay:Lamo;

    iget-boolean v3, v3, Lamo;->isHeader:Z

    if-eqz v3, :cond_28

    if-ltz v2, :cond_29

    :cond_28
    iget-object v3, v0, Lamg;->ay:Lamo;

    iget-boolean v3, v3, Lamo;->isFooter:Z

    if-eqz v3, :cond_2b

    if-lez v2, :cond_2b

    .line 1029
    :cond_29
    iget v1, v0, Lamg;->b:I

    if-eqz v1, :cond_2a

    .line 1030
    invoke-virtual {v0, v7}, Lamg;->c(F)V

    :cond_2a
    return v11

    .line 1033
    :cond_2b
    iget-object v3, v0, Lamg;->aL:Landroid/view/MotionEvent;

    if-eqz v3, :cond_2c

    .line 1034
    iput-object v4, v0, Lamg;->aL:Landroid/view/MotionEvent;

    .line 1035
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1036
    invoke-super {v0, v1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1038
    :cond_2c
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2d
    int-to-float v1, v2

    .line 1040
    invoke-virtual {v0, v1}, Lamg;->c(F)V

    return v11

    .line 1042
    :cond_2e
    iget-boolean v2, v0, Lamg;->aF:Z

    if-eqz v2, :cond_32

    iget v2, v0, Lamg;->a:I

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_32

    iget v2, v0, Lamg;->b:I

    if-gez v2, :cond_32

    .line 1043
    iput-boolean v10, v0, Lamg;->aF:Z

    goto :goto_d

    .line 1047
    :cond_2f
    iget-object v2, v0, Lamg;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1048
    iget-object v2, v0, Lamg;->y:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v5, v0, Lamg;->v:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1049
    iget-object v2, v0, Lamg;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lamg;->w:I

    .line 1050
    invoke-virtual {v0, v7}, Lamg;->a(F)Z

    .line 1052
    :cond_30
    iget-object v2, v0, Lamg;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    const/16 v2, 0x6e

    .line 1053
    iput-char v2, v0, Lamg;->m:C

    .line 1054
    iget-object v2, v0, Lamg;->aL:Landroid/view/MotionEvent;

    if-eqz v2, :cond_31

    .line 1055
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1056
    iput-object v4, v0, Lamg;->aL:Landroid/view/MotionEvent;

    .line 1057
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 1058
    iget v7, v0, Lamg;->h:F

    const/4 v9, 0x0

    move-wide v2, v4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1059
    invoke-super {v0, v2}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1060
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 1062
    :cond_31
    invoke-virtual/range {p0 .. p0}, Lamg;->a()V

    .line 1063
    iget-boolean v2, v0, Lamg;->n:Z

    if-eqz v2, :cond_32

    .line 1064
    iput-boolean v10, v0, Lamg;->n:Z

    return v11

    .line 1070
    :cond_32
    :goto_d
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 950
    :cond_33
    iput v10, v0, Lamg;->w:I

    .line 951
    iget-object v3, v0, Lamg;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 952
    iget-object v3, v0, Lamg;->x:Landroid/widget/Scroller;

    invoke-virtual {v3, v11}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 956
    iput v9, v0, Lamg;->h:F

    .line 957
    iput v8, v0, Lamg;->i:F

    .line 958
    iput v10, v0, Lamg;->c:I

    .line 959
    iget v3, v0, Lamg;->b:I

    iput v3, v0, Lamg;->d:I

    .line 960
    iput-boolean v10, v0, Lamg;->n:Z

    .line 961
    iput-boolean v10, v0, Lamg;->p:Z

    .line 963
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, v0, Lamg;->o:Z

    .line 964
    iget-object v3, v0, Lamg;->ax:Lamo;

    sget-object v4, Lamo;->TwoLevel:Lamo;

    if-ne v3, v4, :cond_34

    iget v3, v0, Lamg;->i:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, v0, Lamg;->aq:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_34

    .line 965
    iput-char v2, v0, Lamg;->m:C

    .line 966
    iget-boolean v1, v0, Lamg;->o:Z

    return v1

    .line 968
    :cond_34
    iget-object v2, v0, Lamg;->at:Lami;

    if-eqz v2, :cond_35

    .line 970
    invoke-interface {v2, v1}, Lami;->a(Landroid/view/MotionEvent;)V

    :cond_35
    return v11

    :cond_36
    :goto_e
    return v10

    .line 931
    :cond_37
    :goto_f
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 770
    iget-object v0, p0, Lamg;->at:Lami;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lami;->a()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 771
    :goto_0
    iget-object v1, p0, Lamg;->ar:Lamh;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lamh;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_8

    .line 772
    iget-boolean v1, p0, Lamg;->B:Z

    invoke-virtual {p0, v1}, Lamg;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lamg;->I:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_8

    .line 776
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iget v3, p0, Lamg;->b:I

    add-int/2addr v1, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 777
    iget v3, p0, Lamg;->aA:I

    if-eqz v3, :cond_4

    iget-object v4, p0, Lamg;->au:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 778
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    iget-object v3, p0, Lamg;->ar:Lamh;

    invoke-interface {v3}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v3

    iget-boolean v3, v3, Lamp;->i:Z

    if-eqz v3, :cond_2

    .line 780
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_1

    .line 781
    :cond_2
    iget-object v3, p0, Lamg;->ar:Lamh;

    invoke-interface {v3}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v3

    sget-object v4, Lamp;->a:Lamp;

    if-ne v3, v4, :cond_3

    .line 782
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v3, p0, Lamg;->b:I

    add-int/2addr v1, v3

    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 784
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    int-to-float v7, v1

    iget-object v8, p0, Lamg;->au:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 792
    :cond_4
    iget-boolean v3, p0, Lamg;->D:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lamg;->ar:Lamh;

    invoke-interface {v3}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v3

    sget-object v4, Lamp;->c:Lamp;

    if-eq v3, v4, :cond_6

    :cond_5
    iget-object v3, p0, Lamg;->ar:Lamh;

    invoke-interface {v3}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v3

    iget-boolean v3, v3, Lamp;->i:Z

    if-eqz v3, :cond_8

    .line 793
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 794
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 795
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 796
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_7
    :goto_2
    return v2

    .line 801
    :cond_8
    iget-object v1, p0, Lamg;->as:Lamh;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lamh;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p2, :cond_10

    .line 802
    iget-boolean v1, p0, Lamg;->C:Z

    invoke-virtual {p0, v1}, Lamg;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lamg;->I:Z

    if-nez v1, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_4

    :cond_9
    if-eqz v0, :cond_10

    .line 806
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lamg;->b:I

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 807
    iget v1, p0, Lamg;->aB:I

    if-eqz v1, :cond_c

    iget-object v2, p0, Lamg;->au:Landroid/graphics/Paint;

    if-eqz v2, :cond_c

    .line 808
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 809
    iget-object v1, p0, Lamg;->as:Lamh;

    invoke-interface {v1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v1

    iget-boolean v1, v1, Lamp;->i:Z

    if-eqz v1, :cond_a

    .line 810
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_3

    .line 811
    :cond_a
    iget-object v1, p0, Lamg;->as:Lamh;

    invoke-interface {v1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v1

    sget-object v2, Lamp;->a:Lamp;

    if-ne v1, v2, :cond_b

    .line 812
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lamg;->b:I

    add-int/2addr v0, v1

    :cond_b
    :goto_3
    const/4 v2, 0x0

    int-to-float v3, v0

    .line 814
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lamg;->au:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 822
    :cond_c
    iget-boolean v1, p0, Lamg;->E:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lamg;->as:Lamh;

    invoke-interface {v1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v1

    sget-object v2, Lamp;->c:Lamp;

    if-eq v1, v2, :cond_e

    :cond_d
    iget-object v1, p0, Lamg;->as:Lamh;

    invoke-interface {v1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v1

    iget-boolean v1, v1, Lamp;->i:Z

    if-eqz v1, :cond_10

    .line 823
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 824
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 825
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 826
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    :cond_f
    :goto_4
    return v2

    .line 832
    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1779
    new-instance v0, Lamg$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lamg$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 0

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1816
    iget-object v0, p0, Lamg;->ah:Lga;

    invoke-virtual {v0}, Lga;->a()I

    move-result v0

    return v0
.end method

.method public getRefreshFooter()Lamj;
    .locals 2

    .line 2705
    iget-object v0, p0, Lamg;->as:Lamh;

    instance-of v1, v0, Lamj;

    if-eqz v1, :cond_0

    check-cast v0, Lamj;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRefreshHeader()Lamk;
    .locals 2

    .line 2716
    iget-object v0, p0, Lamg;->ar:Lamh;

    instance-of v1, v0, Lamk;

    if-eqz v1, :cond_0

    check-cast v0, Lamk;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getState()Lamo;
    .locals 1

    .line 2727
    iget-object v0, p0, Lamg;->ax:Lamo;

    return-object v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1942
    iget-boolean v0, p0, Lamg;->Q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lamg;->K:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lamg;->B:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lamg;->C:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 380
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 381
    iput-boolean v0, p0, Lamg;->aE:Z

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_c

    .line 386
    iget-object v1, p0, Lamg;->ar:Lamh;

    if-nez v1, :cond_1

    .line 387
    sget-object v1, Lamg;->aH:Lamt;

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lamt;->a(Landroid/content/Context;Lamm;)Lamk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {p0, v1}, Lamg;->a(Lamk;)Lamm;

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultRefreshHeaderCreator can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    :goto_0
    iget-object v1, p0, Lamg;->as:Lamh;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 397
    sget-object v0, Lamg;->aG:Lams;

    if-eqz v0, :cond_6

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lams;->a(Landroid/content/Context;Lamm;)Lamj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {p0, v0}, Lamg;->a(Lamj;)Lamm;

    goto :goto_2

    .line 401
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultRefreshFooterCreator can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_3
    iget-boolean v1, p0, Lamg;->C:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lamg;->V:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :cond_5
    :goto_1
    iput-boolean v0, p0, Lamg;->C:Z

    .line 409
    :cond_6
    :goto_2
    iget-object v0, p0, Lamg;->at:Lami;

    if-nez v0, :cond_a

    .line 410
    invoke-virtual {p0}, Lamg;->getChildCount()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_a

    .line 411
    invoke-virtual {p0, v1}, Lamg;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 412
    iget-object v4, p0, Lamg;->ar:Lamh;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lamh;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_9

    :cond_7
    iget-object v4, p0, Lamg;->as:Lamh;

    if-eqz v4, :cond_8

    .line 413
    invoke-interface {v4}, Lamh;->getView()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_9

    .line 414
    :cond_8
    new-instance v4, Lanf;

    invoke-direct {v4, v3}, Lanf;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lamg;->at:Lami;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 418
    :cond_a
    iget-object v0, p0, Lamg;->at:Lami;

    if-nez v0, :cond_b

    const/high16 v0, 0x41a00000    # 20.0f

    .line 419
    invoke-static {v0}, Lane;->a(F)I

    move-result v1

    .line 420
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, -0x9a00

    .line 421
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x11

    .line 422
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 423
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 424
    sget v0, Lamq$b;->srl_content_empty:I

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 425
    new-instance v0, Lamg$c;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v4}, Lamg$c;-><init>(II)V

    invoke-super {p0, v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 426
    new-instance v0, Lanf;

    invoke-direct {v0, v3}, Lanf;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lamg;->at:Lami;

    .line 427
    iget-object v0, p0, Lamg;->at:Lami;

    invoke-interface {v0}, Lami;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 430
    :cond_b
    iget v0, p0, Lamg;->q:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 431
    iget v1, p0, Lamg;->r:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 433
    iget-object v3, p0, Lamg;->at:Lami;

    iget-object v4, p0, Lamg;->ac:Lana;

    invoke-interface {v3, v4}, Lami;->a(Lana;)V

    .line 434
    iget-object v3, p0, Lamg;->at:Lami;

    iget-boolean v4, p0, Lamg;->P:Z

    invoke-interface {v3, v4}, Lami;->a(Z)V

    .line 435
    iget-object v3, p0, Lamg;->at:Lami;

    iget-object v4, p0, Lamg;->aw:Laml;

    invoke-interface {v3, v4, v0, v1}, Lami;->a(Laml;Landroid/view/View;Landroid/view/View;)V

    .line 437
    iget v0, p0, Lamg;->b:I

    if-eqz v0, :cond_c

    .line 438
    sget-object v0, Lamo;->None:Lamo;

    invoke-virtual {p0, v0}, Lamg;->a(Lamo;)V

    .line 439
    iget-object v0, p0, Lamg;->at:Lami;

    iput v2, p0, Lamg;->b:I

    iget v1, p0, Lamg;->s:I

    iget v3, p0, Lamg;->t:I

    invoke-interface {v0, v2, v1, v3}, Lami;->a(III)V

    .line 444
    :cond_c
    iget-object v0, p0, Lamg;->A:[I

    if-eqz v0, :cond_e

    .line 445
    iget-object v1, p0, Lamg;->ar:Lamh;

    if-eqz v1, :cond_d

    .line 446
    invoke-interface {v1, v0}, Lamh;->setPrimaryColors([I)V

    .line 448
    :cond_d
    iget-object v0, p0, Lamg;->as:Lamh;

    if-eqz v0, :cond_e

    .line 449
    iget-object v1, p0, Lamg;->A:[I

    invoke-interface {v0, v1}, Lamh;->setPrimaryColors([I)V

    .line 454
    :cond_e
    iget-object v0, p0, Lamg;->at:Lami;

    if-eqz v0, :cond_f

    .line 455
    invoke-interface {v0}, Lami;->a()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 457
    :cond_f
    iget-object v0, p0, Lamg;->ar:Lamh;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v0

    iget-boolean v0, v0, Lamp;->h:Z

    if-eqz v0, :cond_10

    .line 458
    iget-object v0, p0, Lamg;->ar:Lamh;

    invoke-interface {v0}, Lamh;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 460
    :cond_10
    iget-object v0, p0, Lamg;->as:Lamh;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v0

    iget-boolean v0, v0, Lamp;->h:Z

    if-eqz v0, :cond_11

    .line 461
    iget-object v0, p0, Lamg;->as:Lamh;

    invoke-interface {v0}, Lamh;->getView()Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .line 716
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 717
    iput-boolean v0, p0, Lamg;->aE:Z

    const/4 v1, 0x1

    .line 718
    iput-boolean v1, p0, Lamg;->V:Z

    const/4 v2, 0x0

    .line 719
    iput-object v2, p0, Lamg;->aM:Ljava/lang/Runnable;

    .line 720
    iget-object v3, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 722
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 723
    iget-object v3, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 724
    iget-object v3, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 725
    iget-object v3, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 726
    iput-object v2, p0, Lamg;->aN:Landroid/animation/ValueAnimator;

    .line 734
    :cond_0
    iget-object v3, p0, Lamg;->ar:Lamh;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lamg;->ax:Lamo;

    sget-object v4, Lamo;->Refreshing:Lamo;

    if-ne v3, v4, :cond_1

    .line 735
    iget-object v3, p0, Lamg;->ar:Lamh;

    invoke-interface {v3, p0, v0}, Lamh;->a(Lamm;Z)I

    .line 737
    :cond_1
    iget-object v3, p0, Lamg;->as:Lamh;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lamg;->ax:Lamo;

    sget-object v4, Lamo;->Loading:Lamo;

    if-ne v3, v4, :cond_2

    .line 738
    iget-object v3, p0, Lamg;->as:Lamh;

    invoke-interface {v3, p0, v0}, Lamh;->a(Lamm;Z)I

    .line 740
    :cond_2
    iget v3, p0, Lamg;->b:I

    if-eqz v3, :cond_3

    .line 741
    iget-object v3, p0, Lamg;->aw:Laml;

    invoke-interface {v3, v0, v1}, Laml;->moveSpinner(IZ)Laml;

    .line 743
    :cond_3
    iget-object v1, p0, Lamg;->ax:Lamo;

    sget-object v3, Lamo;->None:Lamo;

    if-eq v1, v3, :cond_4

    .line 744
    sget-object v1, Lamo;->None:Lamo;

    invoke-virtual {p0, v1}, Lamg;->a(Lamo;)V

    .line 746
    :cond_4
    iget-object v1, p0, Lamg;->av:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 747
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 756
    :cond_5
    iput-boolean v0, p0, Lamg;->aF:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 11

    .line 326
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 327
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_11

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_4

    .line 335
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 336
    invoke-static {v9}, Lane;->c(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lt v6, v7, :cond_0

    if-ne v4, v8, :cond_1

    :cond_0
    move v5, v4

    move v6, v7

    goto :goto_2

    .line 339
    :cond_1
    instance-of v7, v9, Lamh;

    if-nez v7, :cond_3

    if-ge v6, v8, :cond_3

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    move v5, v4

    move v6, v8

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-ltz v5, :cond_7

    .line 348
    new-instance v4, Lanf;

    invoke-super {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v4, v6}, Lanf;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lamg;->at:Lami;

    if-ne v5, v8, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    move v1, v3

    goto :goto_4

    :cond_6
    if-ne v0, v7, :cond_7

    move v1, v2

    move v7, v8

    goto :goto_4

    :cond_7
    move v1, v2

    move v7, v1

    :goto_4
    move v4, v3

    :goto_5
    if-ge v4, v0, :cond_10

    .line 360
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eq v4, v1, :cond_d

    if-eq v4, v7, :cond_8

    if-ne v1, v2, :cond_8

    .line 361
    iget-object v6, p0, Lamg;->ar:Lamh;

    if-nez v6, :cond_8

    instance-of v6, v5, Lamk;

    if-eqz v6, :cond_8

    goto :goto_9

    :cond_8
    if-eq v4, v7, :cond_9

    if-ne v7, v2, :cond_f

    .line 363
    instance-of v6, v5, Lamj;

    if-eqz v6, :cond_f

    .line 364
    :cond_9
    iget-boolean v6, p0, Lamg;->C:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lamg;->V:Z

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    move v6, v3

    goto :goto_7

    :cond_b
    :goto_6
    move v6, v8

    :goto_7
    iput-boolean v6, p0, Lamg;->C:Z

    .line 365
    instance-of v6, v5, Lamj;

    if-eqz v6, :cond_c

    check-cast v5, Lamj;

    goto :goto_8

    :cond_c
    new-instance v6, Lang;

    invoke-direct {v6, v5}, Lang;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_8
    iput-object v5, p0, Lamg;->as:Lamh;

    goto :goto_b

    .line 362
    :cond_d
    :goto_9
    instance-of v6, v5, Lamk;

    if-eqz v6, :cond_e

    check-cast v5, Lamk;

    goto :goto_a

    :cond_e
    new-instance v6, Lanh;

    invoke-direct {v6, v5}, Lanh;-><init>(Landroid/view/View;)V

    move-object v5, v6

    :goto_a
    iput-object v5, p0, Lamg;->ar:Lamh;

    :cond_f
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_10
    return-void

    .line 329
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u6700\u591a\u53ea\u652f\u63013\u4e2a\u5b50View\uff0cMost only support three sub view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 626
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 627
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    .line 628
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 630
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_13

    .line 631
    invoke-super {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_12

    sget v1, Lamq$a;->srl_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "GONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_c

    .line 637
    :cond_0
    iget-object v1, p0, Lamg;->at:Lami;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lami;->a()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_4

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lamg;->I:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lamg;->B:Z

    invoke-virtual {p0, v1}, Lamg;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lamg;->ar:Lamh;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, p4

    .line 639
    :goto_1
    iget-object v3, p0, Lamg;->at:Lami;

    invoke-interface {v3}, Lami;->a()Landroid/view/View;

    move-result-object v3

    .line 640
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 641
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v4, Lamg;->aJ:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 642
    :goto_2
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, p1

    .line 643
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p2

    .line 644
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 645
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-eqz v1, :cond_3

    .line 646
    iget-boolean v1, p0, Lamg;->F:Z

    iget-object v8, p0, Lamg;->ar:Lamh;

    invoke-virtual {p0, v1, v8}, Lamg;->a(ZLamh;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 647
    iget v1, p0, Lamg;->ai:I

    add-int/2addr v4, v1

    add-int/2addr v7, v1

    .line 651
    :cond_3
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 653
    :cond_4
    iget-object v1, p0, Lamg;->ar:Lamh;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lamh;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_8

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lamg;->I:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lamg;->B:Z

    invoke-virtual {p0, v1}, Lamg;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, p4

    .line 655
    :goto_3
    iget-object v3, p0, Lamg;->ar:Lamh;

    invoke-interface {v3}, Lamh;->getView()Landroid/view/View;

    move-result-object v3

    .line 656
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 657
    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_6

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    sget-object v4, Lamg;->aJ:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 658
    :goto_4
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 659
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lamg;->am:I

    add-int/2addr v4, v6

    .line 660
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 661
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v4

    if-nez v1, :cond_7

    .line 663
    iget-object v1, p0, Lamg;->ar:Lamh;

    invoke-interface {v1}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v1

    sget-object v8, Lamp;->a:Lamp;

    if-ne v1, v8, :cond_7

    .line 664
    iget v1, p0, Lamg;->ai:I

    sub-int/2addr v4, v1

    sub-int/2addr v7, v1

    .line 673
    :cond_7
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 675
    :cond_8
    iget-object v1, p0, Lamg;->as:Lamh;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lamh;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v1, v0, :cond_12

    .line 676
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lamg;->I:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lamg;->C:Z

    invoke-virtual {p0, v0}, Lamg;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    move v2, p4

    .line 677
    :goto_5
    iget-object v0, p0, Lamg;->as:Lamh;

    invoke-interface {v0}, Lamh;->getView()Landroid/view/View;

    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 679
    instance-of v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_a
    sget-object v1, Lamg;->aJ:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 680
    :goto_6
    iget-object v3, p0, Lamg;->as:Lamh;

    invoke-interface {v3}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v3

    .line 681
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 682
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lamg;->an:I

    sub-int/2addr v5, v6

    .line 683
    iget-boolean v6, p0, Lamg;->T:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lamg;->U:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lamg;->H:Z

    if-eqz v6, :cond_c

    iget-object v6, p0, Lamg;->at:Lami;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lamg;->as:Lamh;

    .line 684
    invoke-interface {v6}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v6

    sget-object v7, Lamp;->a:Lamp;

    if-ne v6, v7, :cond_c

    iget-boolean v6, p0, Lamg;->C:Z

    .line 685
    invoke-virtual {p0, v6}, Lamg;->a(Z)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 686
    iget-object v5, p0, Lamg;->at:Lami;

    invoke-interface {v5}, Lami;->a()Landroid/view/View;

    move-result-object v5

    .line 687
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 688
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_b

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_b
    move v6, p4

    :goto_7
    add-int v7, p2, p2

    add-int/2addr v7, v6

    .line 689
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v7

    .line 692
    :cond_c
    sget-object v6, Lamp;->e:Lamp;

    if-ne v3, v6, :cond_d

    .line 693
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lamg;->an:I

    sub-int v5, v1, v2

    goto :goto_b

    :cond_d
    if-nez v2, :cond_10

    .line 694
    sget-object v1, Lamp;->d:Lamp;

    if-eq v3, v1, :cond_10

    sget-object v1, Lamp;->c:Lamp;

    if-ne v3, v1, :cond_e

    goto :goto_9

    .line 698
    :cond_e
    iget-boolean v1, v3, Lamp;->i:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lamg;->b:I

    if-gez v1, :cond_11

    .line 699
    iget-boolean v1, p0, Lamg;->C:Z

    invoke-virtual {p0, v1}, Lamg;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lamg;->b:I

    neg-int v1, v1

    goto :goto_8

    :cond_f
    move v1, p4

    :goto_8
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_a

    .line 697
    :cond_10
    :goto_9
    iget v1, p0, Lamg;->ak:I

    :goto_a
    sub-int/2addr v5, v1

    .line 702
    :cond_11
    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v4

    .line 703
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v5

    .line 704
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_12
    :goto_c
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_0

    :cond_13
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lamg;->I:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 481
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    if-ge v7, v6, :cond_22

    .line 482
    invoke-super {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 484
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_21

    sget v11, Lamq$a;->srl_tag:I

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "GONE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_12

    .line 488
    :cond_1
    iget-object v11, v0, Lamg;->ar:Lamh;

    if-eqz v11, :cond_e

    invoke-interface {v11}, Lamh;->getView()Landroid/view/View;

    move-result-object v11

    if-ne v11, v10, :cond_e

    .line 489
    iget-object v11, v0, Lamg;->ar:Lamh;

    invoke-interface {v11}, Lamh;->getView()Landroid/view/View;

    move-result-object v11

    .line 490
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 491
    instance-of v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v14, :cond_2

    move-object v14, v12

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_2
    sget-object v14, Lamg;->aJ:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 492
    :goto_2
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v13

    iget v13, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v4, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 493
    iget v13, v0, Lamg;->ai:I

    .line 495
    iget-object v5, v0, Lamg;->aj:Lamn;

    iget v5, v5, Lamn;->m:I

    sget-object v15, Lamn;->g:Lamn;

    iget v15, v15, Lamn;->m:I

    if-ge v5, v15, :cond_7

    .line 496
    iget v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_4

    .line 497
    iget v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v13

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v13

    .line 498
    iget-object v13, v0, Lamg;->aj:Lamn;

    sget-object v15, Lamn;->e:Lamn;

    invoke-virtual {v13, v15}, Lamn;->a(Lamn;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 499
    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    iget v13, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v13

    iput v12, v0, Lamg;->ai:I

    .line 500
    sget-object v12, Lamn;->e:Lamn;

    iput-object v12, v0, Lamg;->aj:Lamn;

    :cond_3
    move v13, v5

    goto :goto_3

    .line 502
    :cond_4
    iget v5, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v12, -0x2

    if-ne v5, v12, :cond_7

    iget-object v5, v0, Lamg;->ar:Lamh;

    invoke-interface {v5}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v5

    sget-object v12, Lamp;->e:Lamp;

    if-ne v5, v12, :cond_5

    iget-object v5, v0, Lamg;->aj:Lamn;

    iget-boolean v5, v5, Lamn;->n:Z

    if-nez v5, :cond_7

    .line 503
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v12

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v12

    const/4 v12, 0x0

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v12, -0x80000000

    .line 504
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v11, v4, v15}, Landroid/view/View;->measure(II)V

    .line 505
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-lez v12, :cond_7

    if-eq v12, v5, :cond_6

    .line 508
    iget-object v5, v0, Lamg;->aj:Lamn;

    sget-object v13, Lamn;->c:Lamn;

    invoke-virtual {v5, v13}, Lamn;->a(Lamn;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 509
    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v5

    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v12, v5

    iput v12, v0, Lamg;->ai:I

    .line 510
    sget-object v5, Lamn;->c:Lamn;

    iput-object v5, v0, Lamg;->aj:Lamn;

    :cond_6
    const/4 v13, -0x1

    .line 516
    :cond_7
    :goto_3
    iget-object v5, v0, Lamg;->ar:Lamh;

    invoke-interface {v5}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v5

    sget-object v12, Lamp;->e:Lamp;

    if-ne v5, v12, :cond_8

    .line 517
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    const/4 v5, -0x1

    const/4 v12, 0x0

    goto :goto_6

    .line 518
    :cond_8
    iget-object v5, v0, Lamg;->ar:Lamh;

    invoke-interface {v5}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v5

    iget-boolean v5, v5, Lamp;->i:Z

    if-eqz v5, :cond_a

    if-nez v3, :cond_a

    .line 519
    iget-boolean v5, v0, Lamg;->B:Z

    invoke-virtual {v0, v5}, Lamg;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v0, Lamg;->b:I

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    const/4 v12, 0x0

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    :goto_5
    const/4 v5, -0x1

    :goto_6
    if-eq v13, v5, :cond_b

    .line 523
    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v13, v5

    iget v5, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v13, v5

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/view/View;->measure(II)V

    .line 526
    :cond_b
    iget-object v4, v0, Lamg;->aj:Lamn;

    iget-boolean v4, v4, Lamn;->n:Z

    if-nez v4, :cond_d

    .line 527
    iget v4, v0, Lamg;->ao:F

    const/high16 v5, 0x41200000    # 10.0f

    cmpg-float v12, v4, v5

    if-gez v12, :cond_c

    iget v5, v0, Lamg;->ai:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    .line 528
    :cond_c
    iget-object v5, v0, Lamg;->aj:Lamn;

    invoke-virtual {v5}, Lamn;->b()Lamn;

    move-result-object v5

    iput-object v5, v0, Lamg;->aj:Lamn;

    .line 529
    iget-object v5, v0, Lamg;->ar:Lamh;

    iget-object v12, v0, Lamg;->aw:Laml;

    iget v13, v0, Lamg;->ai:I

    float-to-int v4, v4

    invoke-interface {v5, v12, v13, v4}, Lamh;->a(Laml;II)V

    :cond_d
    if-eqz v3, :cond_e

    .line 532
    iget-boolean v4, v0, Lamg;->B:Z

    invoke-virtual {v0, v4}, Lamg;->a(Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 533
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v8, v4

    .line 534
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v9, v4

    .line 538
    :cond_e
    iget-object v4, v0, Lamg;->as:Lamh;

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Lamh;->getView()Landroid/view/View;

    move-result-object v4

    if-ne v4, v10, :cond_1a

    .line 539
    iget-object v4, v0, Lamg;->as:Lamh;

    invoke-interface {v4}, Lamh;->getView()Landroid/view/View;

    move-result-object v4

    .line 540
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 541
    instance-of v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_f

    move-object v11, v5

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_7

    :cond_f
    sget-object v11, Lamg;->aJ:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 542
    :goto_7
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    iget v13, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v12, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v12

    .line 543
    iget v13, v0, Lamg;->ak:I

    .line 545
    iget-object v14, v0, Lamg;->al:Lamn;

    iget v14, v14, Lamn;->m:I

    sget-object v15, Lamn;->g:Lamn;

    iget v15, v15, Lamn;->m:I

    if-ge v14, v15, :cond_13

    .line 546
    iget v14, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v14, :cond_10

    .line 547
    iget v13, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 548
    iget-object v14, v0, Lamg;->al:Lamn;

    sget-object v15, Lamn;->e:Lamn;

    invoke-virtual {v14, v15}, Lamn;->a(Lamn;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 549
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v14

    iput v5, v0, Lamg;->ak:I

    .line 550
    sget-object v5, Lamn;->e:Lamn;

    iput-object v5, v0, Lamg;->al:Lamn;

    goto :goto_8

    .line 552
    :cond_10
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v14, -0x2

    if-ne v5, v14, :cond_13

    iget-object v5, v0, Lamg;->as:Lamh;

    invoke-interface {v5}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v5

    sget-object v14, Lamp;->e:Lamp;

    if-ne v5, v14, :cond_11

    iget-object v5, v0, Lamg;->al:Lamn;

    iget-boolean v5, v5, Lamn;->n:Z

    if-nez v5, :cond_13

    .line 553
    :cond_11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v14

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v14

    const/4 v14, 0x0

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v14, -0x80000000

    .line 554
    invoke-static {v5, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v4, v12, v14}, Landroid/view/View;->measure(II)V

    .line 555
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-lez v14, :cond_13

    if-eq v14, v5, :cond_12

    .line 558
    iget-object v5, v0, Lamg;->al:Lamn;

    sget-object v13, Lamn;->c:Lamn;

    invoke-virtual {v5, v13}, Lamn;->a(Lamn;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 559
    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v5

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v5

    iput v14, v0, Lamg;->ak:I

    .line 560
    sget-object v5, Lamn;->c:Lamn;

    iput-object v5, v0, Lamg;->al:Lamn;

    :cond_12
    const/4 v13, -0x1

    .line 566
    :cond_13
    :goto_8
    iget-object v5, v0, Lamg;->as:Lamh;

    invoke-interface {v5}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v5

    sget-object v14, Lamp;->e:Lamp;

    if-ne v5, v14, :cond_14

    .line 567
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    const/4 v5, -0x1

    const/4 v14, 0x0

    goto :goto_b

    .line 568
    :cond_14
    iget-object v5, v0, Lamg;->as:Lamh;

    invoke-interface {v5}, Lamh;->getSpinnerStyle()Lamp;

    move-result-object v5

    iget-boolean v5, v5, Lamp;->i:Z

    if-eqz v5, :cond_16

    if-nez v3, :cond_16

    .line 569
    iget-boolean v5, v0, Lamg;->C:Z

    invoke-virtual {v0, v5}, Lamg;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_15

    iget v5, v0, Lamg;->b:I

    neg-int v5, v5

    goto :goto_9

    :cond_15
    const/4 v5, 0x0

    :goto_9
    const/4 v14, 0x0

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_a

    :cond_16
    const/4 v14, 0x0

    :goto_a
    const/4 v5, -0x1

    :goto_b
    if-eq v13, v5, :cond_17

    .line 573
    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v13, v5

    iget v5, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v12, v5}, Landroid/view/View;->measure(II)V

    .line 576
    :cond_17
    iget-object v5, v0, Lamg;->al:Lamn;

    iget-boolean v5, v5, Lamn;->n:Z

    if-nez v5, :cond_19

    .line 577
    iget v5, v0, Lamg;->ap:F

    const/high16 v11, 0x41200000    # 10.0f

    cmpg-float v11, v5, v11

    if-gez v11, :cond_18

    iget v11, v0, Lamg;->ak:I

    int-to-float v11, v11

    mul-float/2addr v5, v11

    .line 578
    :cond_18
    iget-object v11, v0, Lamg;->al:Lamn;

    invoke-virtual {v11}, Lamn;->b()Lamn;

    move-result-object v11

    iput-object v11, v0, Lamg;->al:Lamn;

    .line 579
    iget-object v11, v0, Lamg;->as:Lamh;

    iget-object v12, v0, Lamg;->aw:Laml;

    iget v13, v0, Lamg;->ak:I

    float-to-int v5, v5

    invoke-interface {v11, v12, v13, v5}, Lamh;->a(Laml;II)V

    :cond_19
    if-eqz v3, :cond_1b

    .line 582
    iget-boolean v5, v0, Lamg;->C:Z

    invoke-virtual {v0, v5}, Lamg;->a(Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 583
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v8, v5

    .line 584
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v9, v4

    goto :goto_c

    :cond_1a
    const/4 v14, 0x0

    .line 588
    :cond_1b
    :goto_c
    iget-object v4, v0, Lamg;->at:Lami;

    if-eqz v4, :cond_21

    invoke-interface {v4}, Lami;->a()Landroid/view/View;

    move-result-object v4

    if-ne v4, v10, :cond_21

    .line 589
    iget-object v4, v0, Lamg;->at:Lami;

    invoke-interface {v4}, Lami;->a()Landroid/view/View;

    move-result-object v4

    .line 590
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 591
    instance-of v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_1c

    move-object v10, v5

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_d

    :cond_1c
    sget-object v10, Lamg;->aJ:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 592
    :goto_d
    iget-object v11, v0, Lamg;->ar:Lamh;

    if-eqz v11, :cond_1d

    iget-boolean v11, v0, Lamg;->B:Z

    invoke-virtual {v0, v11}, Lamg;->a(Z)Z

    move-result v11

    if-eqz v11, :cond_1d

    iget-boolean v11, v0, Lamg;->F:Z

    iget-object v12, v0, Lamg;->ar:Lamh;

    invoke-virtual {v0, v11, v12}, Lamg;->a(ZLamh;)Z

    move-result v11

    if-eqz v11, :cond_1d

    const/4 v11, 0x1

    goto :goto_e

    :cond_1d
    move v11, v14

    .line 593
    :goto_e
    iget-object v12, v0, Lamg;->as:Lamh;

    if-eqz v12, :cond_1e

    iget-boolean v12, v0, Lamg;->C:Z

    invoke-virtual {v0, v12}, Lamg;->a(Z)Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-boolean v12, v0, Lamg;->G:Z

    iget-object v13, v0, Lamg;->as:Lamh;

    invoke-virtual {v0, v12, v13}, Lamg;->a(ZLamh;)Z

    move-result v12

    if-eqz v12, :cond_1e

    const/4 v12, 0x1

    goto :goto_f

    :cond_1e
    move v12, v14

    .line 595
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    add-int/2addr v13, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v13, v15

    iget v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v15

    iget v15, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 594
    invoke-static {v1, v13, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v14

    if-eqz v3, :cond_1f

    if-eqz v11, :cond_1f

    iget v11, v0, Lamg;->ai:I

    goto :goto_10

    :cond_1f
    const/4 v11, 0x0

    :goto_10
    add-int/2addr v15, v11

    if-eqz v3, :cond_20

    if-eqz v12, :cond_20

    iget v11, v0, Lamg;->ak:I

    goto :goto_11

    :cond_20
    const/4 v11, 0x0

    :goto_11
    add-int/2addr v15, v11

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 596
    invoke-static {v2, v15, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 600
    invoke-virtual {v4, v13, v5}, Landroid/view/View;->measure(II)V

    .line 601
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v11

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v11

    add-int/2addr v8, v5

    .line 602
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    add-int/2addr v9, v4

    :cond_21
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 605
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v8, v3

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v9, v3

    .line 608
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    .line 609
    invoke-super/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    .line 607
    invoke-super {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lamg;->j:F

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    .line 1913
    iget-object p1, p0, Lamg;->ag:Lfw;

    invoke-virtual {p1, p2, p3, p4}, Lfw;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1908
    iget-boolean p1, p0, Lamg;->aF:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_2

    :cond_0
    neg-float p1, p3

    invoke-virtual {p0, p1}, Lamg;->a(F)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lamg;->ag:Lfw;

    invoke-virtual {p1, p2, p3}, Lfw;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2

    .line 1848
    iget p1, p0, Lamg;->ad:I

    mul-int v0, p3, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 1849
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lamg;->ad:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1850
    iget p1, p0, Lamg;->ad:I

    .line 1851
    iput v1, p0, Lamg;->ad:I

    goto :goto_0

    .line 1854
    :cond_0
    iget p1, p0, Lamg;->ad:I

    sub-int/2addr p1, p3

    iput p1, p0, Lamg;->ad:I

    move p1, p3

    .line 1856
    :goto_0
    iget v0, p0, Lamg;->ad:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lamg;->c(F)V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    .line 1857
    iget-boolean v0, p0, Lamg;->aF:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p3

    .line 1859
    iput p1, p0, Lamg;->ad:I

    .line 1860
    iget p1, p0, Lamg;->ad:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lamg;->c(F)V

    move p1, p3

    goto :goto_1

    :cond_2
    move p1, v1

    .line 1864
    :goto_1
    iget-object v0, p0, Lamg;->ag:Lfw;

    sub-int/2addr p3, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lfw;->a(II[I[I)Z

    const/4 p2, 0x1

    .line 1865
    aget p3, p4, p2

    add-int/2addr p3, p1

    aput p3, p4, p2

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    .line 1872
    iget-object v0, p0, Lamg;->ag:Lfw;

    iget-object v5, p0, Lamg;->af:[I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lfw;->a(IIII[I)Z

    move-result p1

    .line 1879
    iget-object p2, p0, Lamg;->af:[I

    const/4 p4, 0x1

    aget p2, p2, p4

    add-int/2addr p5, p2

    if-gez p5, :cond_1

    .line 1880
    iget-boolean p2, p0, Lamg;->B:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lamg;->K:Z

    if-eqz p2, :cond_1

    :cond_0
    iget p2, p0, Lamg;->ad:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lamg;->ac:Lana;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lamg;->at:Lami;

    invoke-interface {v0}, Lami;->a()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lana;->a(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    if-lez p5, :cond_7

    iget-boolean p2, p0, Lamg;->C:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lamg;->K:Z

    if-eqz p2, :cond_7

    :cond_2
    iget p2, p0, Lamg;->ad:I

    if-nez p2, :cond_3

    iget-object p2, p0, Lamg;->ac:Lana;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lamg;->at:Lami;

    .line 1881
    invoke-interface {v0}, Lami;->a()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2, v0}, Lana;->b(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1882
    :cond_3
    iget-object p2, p0, Lamg;->ay:Lamo;

    sget-object v0, Lamo;->None:Lamo;

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lamg;->ay:Lamo;

    iget-boolean p2, p2, Lamo;->isOpening:Z

    if-eqz p2, :cond_6

    .line 1887
    :cond_4
    iget-object p2, p0, Lamg;->aw:Laml;

    if-lez p5, :cond_5

    sget-object v0, Lamo;->PullUpToLoad:Lamo;

    goto :goto_0

    :cond_5
    sget-object v0, Lamo;->PullDownToRefresh:Lamo;

    :goto_0
    invoke-interface {p2, v0}, Laml;->setState(Lamo;)Laml;

    if-nez p1, :cond_6

    .line 1890
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1893
    invoke-interface {p1, p4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1897
    :cond_6
    iget p1, p0, Lamg;->ad:I

    sub-int/2addr p1, p5

    iput p1, p0, Lamg;->ad:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lamg;->c(F)V

    .line 1900
    :cond_7
    iget-boolean p1, p0, Lamg;->aF:Z

    if-eqz p1, :cond_8

    if-gez p3, :cond_8

    const/4 p1, 0x0

    .line 1901
    iput-boolean p1, p0, Lamg;->aF:Z

    :cond_8
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 1830
    iget-object v0, p0, Lamg;->ah:Lga;

    invoke-virtual {v0, p1, p2, p3}, Lga;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 1832
    iget-object p1, p0, Lamg;->ag:Lfw;

    and-int/lit8 p2, p3, 0x2

    invoke-virtual {p1, p2}, Lfw;->b(I)Z

    .line 1834
    iget p1, p0, Lamg;->b:I

    iput p1, p0, Lamg;->ad:I

    const/4 p1, 0x1

    .line 1835
    iput-boolean p1, p0, Lamg;->ae:Z

    const/4 p1, 0x0

    .line 1837
    invoke-virtual {p0, p1}, Lamg;->a(I)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 1822
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lamg;->isNestedScrollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1823
    iget-boolean p1, p0, Lamg;->K:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lamg;->B:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lamg;->C:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :cond_2
    :goto_1
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 1918
    iget-object v0, p0, Lamg;->ah:Lga;

    invoke-virtual {v0, p1}, Lga;->a(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1919
    iput-boolean p1, p0, Lamg;->ae:Z

    .line 1922
    iput p1, p0, Lamg;->ad:I

    .line 1923
    invoke-virtual {p0}, Lamg;->a()V

    .line 1925
    iget-object p1, p0, Lamg;->ag:Lfw;

    invoke-virtual {p1}, Lfw;->c()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 1083
    iget-object v0, p0, Lamg;->at:Lami;

    invoke-interface {v0}, Lami;->b()Landroid/view/View;

    move-result-object v0

    .line 1084
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    .line 1085
    :cond_0
    invoke-static {v0}, Lgj;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    iput-boolean p1, p0, Lamg;->p:Z

    .line 1087
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return-void
.end method

.method public setEnableNestedScroll(Z)Lamm;
    .locals 0

    .line 2440
    invoke-virtual {p0, p1}, Lamg;->setNestedScrollingEnabled(Z)V

    return-object p0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1932
    iput-boolean p1, p0, Lamg;->Q:Z

    .line 1934
    iget-object v0, p0, Lamg;->ag:Lfw;

    invoke-virtual {v0, p1}, Lfw;->a(Z)V

    return-void
.end method

.method protected setStateDirectLoading(Z)V
    .locals 4

    .line 1209
    iget-object v0, p0, Lamg;->ax:Lamo;

    sget-object v1, Lamo;->Loading:Lamo;

    if-eq v0, v1, :cond_6

    .line 1210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lamg;->az:J

    const/4 v0, 0x1

    .line 1223
    iput-boolean v0, p0, Lamg;->aF:Z

    .line 1224
    sget-object v0, Lamo;->Loading:Lamo;

    invoke-virtual {p0, v0}, Lamg;->a(Lamo;)V

    .line 1225
    iget-object v0, p0, Lamg;->aa:Lamv;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 1227
    invoke-interface {v0, p0}, Lamv;->a(Lamm;)V

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v0, p0, Lamg;->ab:Lamw;

    if-nez v0, :cond_1

    const/16 v0, 0x7d0

    .line 1230
    invoke-virtual {p0, v0}, Lamg;->c(I)Lamm;

    .line 1232
    :cond_1
    :goto_0
    iget-object v0, p0, Lamg;->as:Lamh;

    const/high16 v1, 0x41200000    # 10.0f

    if-eqz v0, :cond_3

    .line 1233
    iget v0, p0, Lamg;->ap:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    iget v2, p0, Lamg;->ak:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 1234
    :cond_2
    iget-object v2, p0, Lamg;->as:Lamh;

    iget v3, p0, Lamg;->ak:I

    float-to-int v0, v0

    invoke-interface {v2, p0, v3, v0}, Lamh;->b(Lamm;II)V

    .line 1236
    :cond_3
    iget-object v0, p0, Lamg;->ab:Lamw;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lamg;->as:Lamh;

    instance-of v2, v2, Lamj;

    if-eqz v2, :cond_6

    if-eqz p1, :cond_4

    .line 1239
    invoke-interface {v0, p0}, Lamv;->a(Lamm;)V

    .line 1241
    :cond_4
    iget p1, p0, Lamg;->ap:F

    cmpg-float v0, p1, v1

    if-gez v0, :cond_5

    iget v0, p0, Lamg;->ak:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 1242
    :cond_5
    iget-object v0, p0, Lamg;->ab:Lamw;

    iget-object v1, p0, Lamg;->as:Lamh;

    check-cast v1, Lamj;

    iget v2, p0, Lamg;->ak:I

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lamw;->b(Lamj;II)V

    :cond_6
    return-void
.end method

.method protected setStateLoading(Z)V
    .locals 5

    .line 1252
    new-instance v0, Lamg$1;

    invoke-direct {v0, p0, p1}, Lamg$1;-><init>(Lamg;Z)V

    .line 1261
    sget-object p1, Lamo;->LoadReleased:Lamo;

    invoke-virtual {p0, p1}, Lamg;->a(Lamo;)V

    .line 1262
    iget-object p1, p0, Lamg;->aw:Laml;

    iget v1, p0, Lamg;->ak:I

    neg-int v1, v1

    invoke-interface {p1, v1}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1264
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1266
    :cond_0
    iget-object v1, p0, Lamg;->as:Lamh;

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v1, :cond_2

    .line 1269
    iget v1, p0, Lamg;->ap:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    iget v3, p0, Lamg;->ak:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 1270
    :cond_1
    iget-object v3, p0, Lamg;->as:Lamh;

    iget v4, p0, Lamg;->ak:I

    float-to-int v1, v1

    invoke-interface {v3, p0, v4, v1}, Lamh;->a(Lamm;II)V

    .line 1272
    :cond_2
    iget-object v1, p0, Lamg;->ab:Lamw;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lamg;->as:Lamh;

    instance-of v1, v1, Lamj;

    if-eqz v1, :cond_4

    .line 1274
    iget v1, p0, Lamg;->ap:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    iget v2, p0, Lamg;->ak:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1275
    :cond_3
    iget-object v2, p0, Lamg;->ab:Lamw;

    iget-object v3, p0, Lamg;->as:Lamh;

    check-cast v3, Lamj;

    iget v4, p0, Lamg;->ak:I

    float-to-int v1, v1

    invoke-interface {v2, v3, v4, v1}, Lamw;->a(Lamj;II)V

    :cond_4
    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 1279
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_5
    return-void
.end method

.method protected setStateRefreshing(Z)V
    .locals 5

    .line 1288
    new-instance v0, Lamg$2;

    invoke-direct {v0, p0, p1}, Lamg$2;-><init>(Lamg;Z)V

    .line 1316
    sget-object p1, Lamo;->RefreshReleased:Lamo;

    invoke-virtual {p0, p1}, Lamg;->a(Lamo;)V

    .line 1317
    iget-object p1, p0, Lamg;->aw:Laml;

    iget v1, p0, Lamg;->ai:I

    invoke-interface {p1, v1}, Laml;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1319
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1321
    :cond_0
    iget-object v1, p0, Lamg;->ar:Lamh;

    const/high16 v2, 0x41200000    # 10.0f

    if-eqz v1, :cond_2

    .line 1324
    iget v1, p0, Lamg;->ao:F

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    iget v3, p0, Lamg;->ai:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    :cond_1
    float-to-int v1, v1

    .line 1325
    iget-object v3, p0, Lamg;->ar:Lamh;

    iget v4, p0, Lamg;->ai:I

    invoke-interface {v3, p0, v4, v1}, Lamh;->a(Lamm;II)V

    .line 1327
    :cond_2
    iget-object v1, p0, Lamg;->ab:Lamw;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lamg;->ar:Lamh;

    instance-of v1, v1, Lamk;

    if-eqz v1, :cond_4

    .line 1329
    iget v1, p0, Lamg;->ao:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    iget v2, p0, Lamg;->ai:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    :cond_3
    float-to-int v1, v1

    .line 1330
    iget-object v2, p0, Lamg;->ab:Lamw;

    iget-object v3, p0, Lamg;->ar:Lamh;

    check-cast v3, Lamk;

    iget v4, p0, Lamg;->ai:I

    invoke-interface {v2, v3, v4, v1}, Lamw;->a(Lamk;II)V

    :cond_4
    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 1334
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_5
    return-void
.end method

.method protected setViceState(Lamo;)V
    .locals 2

    .line 1357
    iget-object v0, p0, Lamg;->ax:Lamo;

    iget-boolean v0, v0, Lamo;->isDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamg;->ax:Lamo;

    iget-boolean v0, v0, Lamo;->isHeader:Z

    iget-boolean v1, p1, Lamo;->isHeader:Z

    if-eq v0, v1, :cond_0

    .line 1358
    sget-object v0, Lamo;->None:Lamo;

    invoke-virtual {p0, v0}, Lamg;->a(Lamo;)V

    .line 1360
    :cond_0
    iget-object v0, p0, Lamg;->ay:Lamo;

    if-eq v0, p1, :cond_1

    .line 1361
    iput-object p1, p0, Lamg;->ay:Lamo;

    :cond_1
    return-void
.end method

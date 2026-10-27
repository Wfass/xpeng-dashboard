.class public final Lais;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lais$a;
    }
.end annotation


# direct methods
.method private static synthetic A(Landroid/view/View;)Z
    .locals 0

    .line 771
    instance-of p0, p0, Lais$a;

    return p0
.end method

.method private static synthetic B(Landroid/view/View;)Z
    .locals 2

    .line 750
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 753
    :cond_0
    instance-of v0, p0, Lais$a;

    if-eqz v0, :cond_1

    .line 754
    check-cast p0, Lais$a;

    .line 755
    invoke-interface {p0}, Lais$a;->isLayoutCompleted()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic C(Landroid/view/View;)Z
    .locals 0

    .line 734
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic D(Landroid/view/View;)Z
    .locals 0

    .line 722
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic E(Landroid/view/View;)Z
    .locals 0

    .line 690
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic F(Landroid/view/View;)Z
    .locals 0

    .line 649
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic G(Landroid/view/View;)Z
    .locals 1

    .line 648
    invoke-static {p0}, Lais;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lais;->y(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic H(Landroid/view/View;)Z
    .locals 0

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 145
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 147
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 149
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 150
    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 784
    invoke-interface {p2, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 787
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 790
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 791
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 792
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 793
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 794
    invoke-static {v2, p1, p2}, Lais;->a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static a(Lais$a;)V
    .locals 12

    .line 395
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    .line 399
    new-array v7, v1, [Ljava/lang/Runnable;

    .line 400
    new-array v8, v1, [Ljava/lang/Runnable;

    .line 401
    new-array v9, v1, [Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 406
    invoke-interface {p0}, Lais$a;->isLayoutCompleted()Z

    move-result v1

    const-string v2, "ViewUtils"

    const/4 v10, 0x0

    if-nez v1, :cond_1

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The lazyLayoutView has not completed layout: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v1, L-$$Lambda$ais$2yc0yqvzZsNiEi-sNXzKueyhkJI;

    invoke-direct {v1, p0, v9, v7, v8}, L-$$Lambda$ais$2yc0yqvzZsNiEi-sNXzKueyhkJI;-><init>(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    aput-object v1, v7, v10

    .line 423
    aget-object v1, v7, v10

    invoke-interface {p0, v1}, Lais$a;->addOnLayoutCompleteListener(Ljava/lang/Runnable;)V

    .line 427
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The lazyLayoutView is not shown: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    new-instance v11, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;

    move-object v1, v11

    move-object v2, v0

    move-object v3, p0

    move-object v4, v9

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, L-$$Lambda$ais$5NnwLA-O11YrJkRDQoYDEAVUsVA;-><init>(Landroid/view/View;Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    aput-object v11, v9, v10

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    aget-object v2, v9, v10

    .line 441
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 445
    :cond_2
    new-instance v11, L-$$Lambda$ais$SAYAONMRZhCWsHCFL7HbVP4uZ2U;

    move-object v1, v11

    move-object v2, p0

    move-object v3, v9

    move-object v4, v7

    move-object v5, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, L-$$Lambda$ais$SAYAONMRZhCWsHCFL7HbVP4uZ2U;-><init>(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/view/View;)V

    aput-object v11, v8, v10

    .line 467
    aget-object p0, v8, v10

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static a(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 474
    aget-object p2, p2, v0

    invoke-interface {p0, p2}, Lais$a;->removeOnLayoutCompleteListener(Ljava/lang/Runnable;)V

    .line 475
    instance-of p2, p0, Landroid/view/View;

    if-nez p2, :cond_0

    return-void

    .line 478
    :cond_0
    check-cast p0, Landroid/view/View;

    .line 479
    aget-object p2, p3, v0

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 480
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    aget-object p1, p1, v0

    .line 481
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static synthetic a(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2

    const-string v0, "ViewUtils"

    const-string v1, "Starting delayedTask"

    .line 446
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {p0, p1, p2, p3}, Lais;->a(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    .line 449
    invoke-static {p4}, Lais;->l(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 454
    invoke-interface {p0}, Lais$a;->isLayoutCompleted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Last attempt to restore focus inside the lazyLayoutView"

    .line 455
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-static {p0}, Lais;->b(Lais$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Restored focus inside the lazyLayoutView"

    .line 457
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 463
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, p3}, Lais;->a(Landroid/view/View;ILandroid/view/View;ZZ)Z

    :cond_1
    return-void
.end method

.method private static synthetic a(Landroid/view/View;Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "ViewUtils"

    const-string v1, "onGlobalLayoutListener is called"

    .line 430
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "The lazyLayoutView is shown"

    .line 432
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {p1}, Lais;->b(Lais$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Focus restored after showing lazyLayoutView"

    .line 434
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-static {p1, p2, p3, p4}, Lais;->a(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    goto :goto_0

    :cond_0
    const-string p1, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    .line 823
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 0

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 138
    invoke-static {p0}, Lais;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Landroid/view/View;ILandroid/view/View;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 319
    invoke-static {p0, p1, p2, p3, v0}, Lais;->a(Landroid/view/View;ILandroid/view/View;ZZ)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/view/View;ILandroid/view/View;ZZ)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 337
    invoke-static {p2}, Lais;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    if-ge p1, v1, :cond_1

    .line 342
    invoke-static {p0}, Lais;->r(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x6

    if-ge p1, v1, :cond_2

    .line 345
    invoke-static {p0}, Lais;->q(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x5

    if-ge p1, v1, :cond_3

    .line 348
    invoke-static {p0}, Lais;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    const/4 v2, 0x4

    if-ge p1, v2, :cond_4

    .line 351
    invoke-static {p0}, Lais;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    const/4 v2, 0x0

    if-eqz p4, :cond_5

    if-ge p1, v1, :cond_5

    .line 359
    invoke-static {p0}, Lais;->x(Landroid/view/View;)Lais$a;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 360
    invoke-interface {p4}, Lais$a;->isLayoutCompleted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 361
    invoke-static {p4}, Lais;->a(Lais$a;)V

    return v2

    :cond_5
    if-eqz p3, :cond_6

    .line 368
    invoke-static {p2}, Lais;->d(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v0

    :cond_6
    const/4 p2, 0x3

    if-ge p1, p2, :cond_7

    .line 373
    invoke-static {p0}, Lais;->g(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_7

    return v0

    :cond_7
    const/4 p2, 0x2

    if-ge p1, p2, :cond_8

    .line 377
    invoke-static {p0}, Lais;->u(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_8
    return v2
.end method

.method public static a(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 165
    :cond_1
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static a(Landroid/view/View;Landroid/view/View;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 312
    invoke-static {p0, v0, p1, p2}, Lais;->a(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;)Lcom/android/car/ui/d;
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 205
    instance-of v0, p0, Lcom/android/car/ui/d;

    if-eqz v0, :cond_0

    .line 206
    check-cast p0, Lcom/android/car/ui/d;

    return-object p0

    .line 208
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic b(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The lazyLayoutView completed layout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {p0}, Lais;->b(Lais$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Focus restored after lazyLayoutView completed layout"

    .line 412
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {p0, p1, p2, p3}, Lais;->a(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static b(Lais$a;)Z
    .locals 1

    .line 485
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 488
    :cond_0
    check-cast p0, Landroid/view/View;

    .line 490
    invoke-static {p0}, Lais;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 493
    invoke-static {p0, v0}, Lais;->c(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 261
    invoke-static {p1}, Lais;->e(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 262
    invoke-static {p0, p1, v0, v1}, Lais;->a(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 225
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/android/car/ui/d;

    if-nez v1, :cond_2

    .line 226
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 227
    invoke-static {v1}, Lais;->o(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 230
    :cond_1
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 271
    invoke-static {p1}, Lais;->e(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 272
    invoke-static {p0, p1, v1, v0, v0}, Lais;->a(Landroid/view/View;ILandroid/view/View;ZZ)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 241
    invoke-static {p0}, Lais;->y(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 283
    invoke-static {p1}, Lais;->e(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 287
    invoke-static {p0, p1, v1, v0}, Lais;->a(Landroid/view/View;ILandroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method static e(Landroid/view/View;)I
    .locals 1

    if-eqz p0, :cond_6

    .line 504
    instance-of v0, p0, Lcom/android/car/ui/FocusParkingView;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x7

    return p0

    .line 510
    :cond_1
    invoke-static {p0}, Lais;->m(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x6

    return p0

    .line 513
    :cond_2
    invoke-static {p0}, Lais;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x5

    return p0

    .line 516
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 519
    :cond_4
    invoke-static {p0}, Lais;->o(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic e(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    .line 733
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lais;->y(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static f(Landroid/view/View;)Z
    .locals 3

    .line 538
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 539
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 540
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 541
    invoke-static {v1}, Lais;->n(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 545
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v0, 0x0

    if-nez v1, :cond_2

    return v0

    .line 550
    :cond_2
    invoke-static {v1}, Lais;->k(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 551
    invoke-static {v1}, Lais;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private static synthetic f(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    .line 721
    invoke-static {p1}, Lais;->y(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Landroid/view/View;)Z
    .locals 2

    .line 630
    new-instance v0, L-$$Lambda$ais$faNwZjPm_Jju0dNy-H4BwauxDVQ;

    invoke-direct {v0, p0}, L-$$Lambda$ais$faNwZjPm_Jju0dNy-H4BwauxDVQ;-><init>(Landroid/view/View;)V

    sget-object v1, L-$$Lambda$ais$oGgxMmzTqBXyvIMhrXmj_mFrGk8;->INSTANCE:L-$$Lambda$ais$oGgxMmzTqBXyvIMhrXmj_mFrGk8;

    invoke-static {p0, v0, v1}, Lais;->a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic g(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->isFocusedByDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lais;->y(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static h(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 688
    new-instance v0, L-$$Lambda$ais$0T5oMdvJJ9EV5obkzyr6EH4UeJs;

    invoke-direct {v0, p0}, L-$$Lambda$ais$0T5oMdvJJ9EV5obkzyr6EH4UeJs;-><init>(Landroid/view/View;)V

    sget-object v1, L-$$Lambda$ais$q1KZeKp7De5CzsMLL8Be1pFeiaM;->INSTANCE:L-$$Lambda$ais$q1KZeKp7De5CzsMLL8Be1pFeiaM;

    invoke-static {p0, v0, v1}, Lais;->a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic h(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eq p1, p0, :cond_0

    .line 632
    invoke-static {p1}, Lais;->o(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lais;->y(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lais;->d(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static i(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 701
    invoke-static {p0}, Lais;->w(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 706
    :cond_0
    invoke-static {p0}, Lais;->k(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    invoke-static {p0}, Lais;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static j(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 720
    new-instance v0, L-$$Lambda$ais$aV-m4JmHoIclxzyMA_Kl8mT-K9w;

    invoke-direct {v0, p0}, L-$$Lambda$ais$aV-m4JmHoIclxzyMA_Kl8mT-K9w;-><init>(Landroid/view/View;)V

    sget-object v1, L-$$Lambda$ais$1UyFEdPCmdlvMV2BusdMxFUHwng;->INSTANCE:L-$$Lambda$ais$1UyFEdPCmdlvMV2BusdMxFUHwng;

    invoke-static {p0, v0, v1}, Lais;->a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static k(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 732
    new-instance v0, L-$$Lambda$ais$LOOOfvY5jpCvrOqgWHZr_aB-lVw;

    invoke-direct {v0, p0}, L-$$Lambda$ais$LOOOfvY5jpCvrOqgWHZr_aB-lVw;-><init>(Landroid/view/View;)V

    sget-object v1, L-$$Lambda$ais$ujfySvh4YyqCejhyAj9Lt2bKjPY;->INSTANCE:L-$$Lambda$ais$ujfySvh4YyqCejhyAj9Lt2bKjPY;

    invoke-static {p0, v0, v1}, Lais;->a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/view/View;)Z
    .locals 0

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 498
    instance-of p0, p0, Lcom/android/car/ui/FocusParkingView;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$-sW4mD9cYyZU9V2zDlWEZ2l1ro4(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->G(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$0T5oMdvJJ9EV5obkzyr6EH4UeJs(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lais;->g(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$1UyFEdPCmdlvMV2BusdMxFUHwng(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->D(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$2yc0yqvzZsNiEi-sNXzKueyhkJI(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lais;->b(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$5NnwLA-O11YrJkRDQoYDEAVUsVA(Landroid/view/View;Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lais;->a(Landroid/view/View;Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$LOOOfvY5jpCvrOqgWHZr_aB-lVw(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lais;->e(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$SAYAONMRZhCWsHCFL7HbVP4uZ2U(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lais;->a(Lais$a;[Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;[Ljava/lang/Runnable;[Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$U6b5ao51fi4JCdtRjXK-4Zwpmtk(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->z(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$aV-m4JmHoIclxzyMA_Kl8mT-K9w(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lais;->f(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$faNwZjPm_Jju0dNy-H4BwauxDVQ(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lais;->h(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$oGgxMmzTqBXyvIMhrXmj_mFrGk8(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->H(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$q1KZeKp7De5CzsMLL8Be1pFeiaM(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->E(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$t-s3rnKNpUZ_D3R1_S0IxGKYhSM(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->A(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ujfySvh4YyqCejhyAj9Lt2bKjPY(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->C(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$v9LpFnJtbpUFkCmmw2zoJDKYEis(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->B(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$wL2_4tp0NXs1RrDxRI15QNVkEMU(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->F(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$zarbhPtT1YiKedxM7sbkgd3EM8I(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lais;->n(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static m(Landroid/view/View;)Z
    .locals 1

    .line 527
    invoke-static {p0}, Lais;->b(Landroid/view/View;)Lcom/android/car/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v0}, Lcom/android/car/ui/d;->getDefaultFocusView()Landroid/view/View;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static n(Landroid/view/View;)Z
    .locals 1

    .line 555
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "com.android.car.ui.utils.ROTARY_CONTAINER"

    .line 556
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    .line 557
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    .line 558
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static o(Landroid/view/View;)Z
    .locals 1

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "com.android.car.ui.utils.VERTICALLY_SCROLLABLE"

    .line 563
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.car.ui.utils.HORIZONTALLY_SCROLLABLE"

    .line 564
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static p(Landroid/view/View;)Z
    .locals 1

    .line 568
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    const-string v0, "com.android.car.ui.utils.FOCUS_DELEGATING_CONTAINER"

    .line 569
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static q(Landroid/view/View;)Z
    .locals 0

    .line 580
    invoke-static {p0}, Lais;->v(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 581
    invoke-static {p0}, Lais;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static r(Landroid/view/View;)Z
    .locals 0

    .line 592
    invoke-static {p0}, Lais;->h(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 593
    invoke-static {p0}, Lais;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static s(Landroid/view/View;)Z
    .locals 0

    .line 604
    invoke-static {p0}, Lais;->i(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 605
    invoke-static {p0}, Lais;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static t(Landroid/view/View;)Z
    .locals 0

    .line 616
    invoke-static {p0}, Lais;->k(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    .line 617
    invoke-static {p0}, Lais;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static u(Landroid/view/View;)Z
    .locals 2

    .line 647
    sget-object v0, L-$$Lambda$ais$-sW4mD9cYyZU9V2zDlWEZ2l1ro4;->INSTANCE:L-$$Lambda$ais$-sW4mD9cYyZU9V2zDlWEZ2l1ro4;

    sget-object v1, L-$$Lambda$ais$wL2_4tp0NXs1RrDxRI15QNVkEMU;->INSTANCE:L-$$Lambda$ais$wL2_4tp0NXs1RrDxRI15QNVkEMU;

    invoke-static {p0, v0, v1}, Lais;->a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    .line 650
    invoke-static {p0}, Lais;->d(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static v(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 659
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 662
    :cond_0
    instance-of v0, p0, Lcom/android/car/ui/d;

    if-eqz v0, :cond_1

    .line 663
    check-cast p0, Lcom/android/car/ui/d;

    .line 664
    invoke-interface {p0}, Lcom/android/car/ui/d;->getDefaultFocusView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 665
    invoke-static {p0}, Lais;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 668
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 669
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 670
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 671
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 672
    invoke-static {v2}, Lais;->v(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static w(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 747
    sget-object v0, L-$$Lambda$ais$zarbhPtT1YiKedxM7sbkgd3EM8I;->INSTANCE:L-$$Lambda$ais$zarbhPtT1YiKedxM7sbkgd3EM8I;

    sget-object v1, L-$$Lambda$ais$v9LpFnJtbpUFkCmmw2zoJDKYEis;->INSTANCE:L-$$Lambda$ais$v9LpFnJtbpUFkCmmw2zoJDKYEis;

    invoke-static {p0, v0, v1}, Lais;->a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static x(Landroid/view/View;)Lais$a;
    .locals 2

    .line 770
    sget-object v0, L-$$Lambda$ais$t-s3rnKNpUZ_D3R1_S0IxGKYhSM;->INSTANCE:L-$$Lambda$ais$t-s3rnKNpUZ_D3R1_S0IxGKYhSM;

    sget-object v1, L-$$Lambda$ais$U6b5ao51fi4JCdtRjXK-4Zwpmtk;->INSTANCE:L-$$Lambda$ais$U6b5ao51fi4JCdtRjXK-4Zwpmtk;

    invoke-static {p0, v0, v1}, Lais;->a(Landroid/view/View;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lais$a;

    return-object p0
.end method

.method private static y(Landroid/view/View;)Z
    .locals 3

    .line 805
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p0}, Lais;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 806
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 807
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/android/car/ui/FocusParkingView;

    if-nez v0, :cond_3

    .line 811
    invoke-static {p0}, Lais;->o(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lais;->j(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static synthetic z(Landroid/view/View;)Z
    .locals 0

    .line 772
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

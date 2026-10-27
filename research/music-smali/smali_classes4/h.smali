.class Lh;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh$a;,
        Lh$b;,
        Lh$c;
    }
.end annotation


# instance fields
.field private a:Lh$c;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Ljava/lang/Runnable;

.field private j:J

.field private k:J

.field private l:Lh$b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 72
    iput v0, p0, Lh;->e:I

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lh;->g:I

    return-void
.end method

.method static a(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0xa0

    :cond_1
    return p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 491
    iget-object v0, p0, Lh;->l:Lh$b;

    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lh$b;

    invoke-direct {v0}, Lh$b;-><init>()V

    iput-object v0, p0, Lh;->l:Lh$b;

    .line 497
    :cond_0
    iget-object v0, p0, Lh;->l:Lh$b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh$b;->a(Landroid/graphics/drawable/Drawable$Callback;)Lh$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 499
    :try_start_0
    iget-object v0, p0, Lh;->a:Lh$c;

    iget v0, v0, Lh$c;->C:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lh;->f:Z

    if-eqz v0, :cond_1

    .line 500
    iget v0, p0, Lh;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 502
    :cond_1
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-boolean v0, v0, Lh$c;->G:Z

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-object v0, v0, Lh$c;->F:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 506
    :cond_2
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-boolean v0, v0, Lh$c;->J:Z

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-object v0, v0, Lh$c;->H:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 509
    :cond_3
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-boolean v0, v0, Lh$c;->K:Z

    if-eqz v0, :cond_4

    .line 510
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-object v0, v0, Lh$c;->I:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 513
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lh;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 514
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-boolean v0, v0, Lh$c;->z:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 515
    invoke-virtual {p0}, Lh;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 516
    invoke-virtual {p0}, Lh;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 517
    invoke-virtual {p0}, Lh;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 518
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    .line 519
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 521
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    .line 522
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-boolean v0, v0, Lh$c;->E:Z

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 524
    :cond_6
    iget-object v0, p0, Lh;->b:Landroid/graphics/Rect;

    .line 525
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7

    if-eqz v0, :cond_7

    .line 526
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v1, v2, v3, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_7
    iget-object v0, p0, Lh;->l:Lh$b;

    invoke-virtual {v0}, Lh$b;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lh;->l:Lh$b;

    invoke-virtual {v1}, Lh$b;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 531
    throw v0
.end method

.method private a()Z
    .locals 2

    .line 102
    invoke-virtual {p0}, Lh;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method final a(Landroid/content/res/Resources;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0, p1}, Lh$c;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method a(Lh$c;)V
    .locals 1

    .line 1156
    iput-object p1, p0, Lh;->a:Lh$c;

    .line 1158
    iget v0, p0, Lh;->g:I

    if-ltz v0, :cond_0

    .line 1159
    invoke-virtual {p1, v0}, Lh$c;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    .line 1160
    iget-object p1, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1161
    invoke-direct {p0, p1}, Lh;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x0

    .line 1166
    iput-object p1, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method a(Z)V
    .locals 13

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Lh;->f:Z

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 538
    iget-object v3, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_1

    .line 539
    iget-wide v9, p0, Lh;->j:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_2

    cmp-long v11, v9, v1

    if-gtz v11, :cond_0

    .line 541
    iget v9, p0, Lh;->e:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 542
    iput-wide v7, p0, Lh;->j:J

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v1

    mul-long/2addr v9, v4

    long-to-int v3, v9

    .line 544
    iget-object v9, p0, Lh;->a:Lh$c;

    iget v9, v9, Lh$c;->C:I

    div-int/2addr v3, v9

    .line 546
    iget-object v9, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    rsub-int v3, v3, 0xff

    iget v10, p0, Lh;->e:I

    mul-int/2addr v3, v10

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v3, v0

    goto :goto_1

    .line 551
    :cond_1
    iput-wide v7, p0, Lh;->j:J

    :cond_2
    :goto_0
    move v3, v6

    .line 553
    :goto_1
    iget-object v9, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 554
    iget-wide v10, p0, Lh;->k:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_5

    cmp-long v12, v10, v1

    if-gtz v12, :cond_3

    .line 556
    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    .line 558
    iput-wide v7, p0, Lh;->k:J

    goto :goto_2

    :cond_3
    sub-long/2addr v10, v1

    mul-long/2addr v10, v4

    long-to-int v3, v10

    .line 560
    iget-object v4, p0, Lh;->a:Lh$c;

    iget v4, v4, Lh$c;->D:I

    div-int/2addr v3, v4

    .line 562
    iget-object v4, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lh;->e:I

    mul-int/2addr v3, v5

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 567
    :cond_4
    iput-wide v7, p0, Lh;->k:J

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 570
    iget-object p1, p0, Lh;->i:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Lh;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method a(I)Z
    .locals 9

    .line 428
    iget v0, p0, Lh;->g:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 431
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 437
    iget-object v0, p0, Lh;->a:Lh$c;

    iget v0, v0, Lh$c;->D:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    .line 438
    iget-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 441
    :cond_1
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 442
    iput-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    .line 443
    iget-object v0, p0, Lh;->a:Lh$c;

    iget v0, v0, Lh$c;->D:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lh;->k:J

    goto :goto_0

    .line 445
    :cond_2
    iput-object v4, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    .line 446
    iput-wide v5, p0, Lh;->k:J

    goto :goto_0

    .line 448
    :cond_3
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 449
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    .line 451
    iget-object v0, p0, Lh;->a:Lh$c;

    iget v0, v0, Lh$c;->j:I

    if-ge p1, v0, :cond_6

    .line 452
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0, p1}, Lh$c;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 453
    iput-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    .line 454
    iput p1, p0, Lh;->g:I

    if-eqz v0, :cond_7

    .line 456
    iget-object p1, p0, Lh;->a:Lh$c;

    iget p1, p1, Lh$c;->C:I

    if-lez p1, :cond_5

    .line 457
    iget-object p1, p0, Lh;->a:Lh$c;

    iget p1, p1, Lh$c;->C:I

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Lh;->j:J

    .line 459
    :cond_5
    invoke-direct {p0, v0}, Lh;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 462
    :cond_6
    iput-object v4, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 463
    iput p1, p0, Lh;->g:I

    .line 465
    :cond_7
    :goto_1
    iget-wide v0, p0, Lh;->j:J

    cmp-long p1, v0, v5

    const/4 v0, 0x1

    if-nez p1, :cond_8

    iget-wide v1, p0, Lh;->k:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_a

    .line 466
    :cond_8
    iget-object p1, p0, Lh;->i:Ljava/lang/Runnable;

    if-nez p1, :cond_9

    .line 467
    new-instance p1, Lh$1;

    invoke-direct {p1, p0}, Lh$1;-><init>(Lh;)V

    iput-object p1, p0, Lh;->i:Ljava/lang/Runnable;

    goto :goto_2

    .line 475
    :cond_9
    invoke-virtual {p0, p1}, Lh;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 478
    :goto_2
    invoke-virtual {p0, v0}, Lh;->a(Z)V

    .line 480
    :cond_a
    invoke-virtual {p0}, Lh;->invalidateSelf()V

    return v0
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0, p1}, Lh$c;->a(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method c()Lh$c;
    .locals 1

    .line 630
    iget-object v0, p0, Lh;->a:Lh$c;

    return-object v0
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .line 415
    iget v0, p0, Lh;->g:I

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 153
    iget v0, p0, Lh;->e:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 97
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lh;->a:Lh$c;

    .line 98
    invoke-virtual {v1}, Lh$c;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 605
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {p0}, Lh;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lh$c;->f:I

    .line 607
    iget-object v0, p0, Lh;->a:Lh$c;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 577
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 295
    iget-object v0, p0, Lh;->b:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 341
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->h()I

    move-result v0

    return v0

    .line 344
    :cond_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 333
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->g()I

    move-result v0

    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 357
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->j()I

    move-result v0

    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 349
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->i()I

    move-result v0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 405
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->l()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x2

    :goto_1
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {v0, p1}, Lh$a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .line 108
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->e()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 117
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 120
    :goto_0
    invoke-direct {p0}, Lh;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 122
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 123
    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lh;->a:Lh$c;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lh$c;->b()V

    .line 371
    :cond_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lh;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 372
    invoke-virtual {p0}, Lh;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-boolean v0, v0, Lh$c;->E:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {v0}, Lh$c;->m()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .line 250
    iget-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 255
    :goto_0
    iget-object v2, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 256
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 257
    iget-boolean v2, p0, Lh;->f:Z

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lh;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    :cond_1
    iget-wide v2, p0, Lh;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 262
    iput-wide v4, p0, Lh;->k:J

    move v0, v1

    .line 265
    :cond_2
    iget-wide v2, p0, Lh;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 266
    iput-wide v4, p0, Lh;->j:J

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {p0}, Lh;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 614
    iget-boolean v0, p0, Lh;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 615
    invoke-virtual {p0}, Lh;->c()Lh$c;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Lh$c;->a()V

    .line 617
    invoke-virtual {p0, v0}, Lh;->a(Lh$c;)V

    const/4 v0, 0x1

    .line 618
    iput-boolean v0, p0, Lh;->h:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 328
    iget-object v0, p0, Lh;->a:Lh$c;

    invoke-virtual {p0}, Lh;->d()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lh$c;->d(II)Z

    move-result p1

    return p1
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    .line 318
    :cond_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 304
    iget-object v0, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    .line 307
    :cond_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 378
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lh;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lh;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 5

    .line 138
    iget-boolean v0, p0, Lh;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lh;->e:I

    if-eq v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lh;->f:Z

    .line 140
    iput p1, p0, Lh;->e:I

    .line 141
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 142
    iget-wide v1, p0, Lh;->j:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 143
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lh;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 233
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-boolean v0, v0, Lh$c;->E:Z

    if-eq v0, p1, :cond_0

    .line 234
    iget-object v0, p0, Lh;->a:Lh$c;

    iput-boolean p1, v0, Lh$c;->E:Z

    .line 235
    iget-object p1, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 236
    iget-boolean v0, v0, Lh$c;->E:Z

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lh;->a:Lh$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh$c;->G:Z

    .line 170
    iget-object v0, v0, Lh$c;->F:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 171
    iget-object v0, p0, Lh;->a:Lh$c;

    iput-object p1, v0, Lh$c;->F:Landroid/graphics/ColorFilter;

    .line 172
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lh;->a:Lh$c;

    iget-boolean v0, v0, Lh$c;->z:Z

    if-eq v0, p1, :cond_0

    .line 160
    iget-object v0, p0, Lh;->a:Lh$c;

    iput-boolean p1, v0, Lh$c;->z:Z

    .line 161
    iget-object p1, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 162
    iget-boolean v0, v0, Lh$c;->z:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 276
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 277
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 283
    iget-object v0, p0, Lh;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lh;->b:Landroid/graphics/Rect;

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 288
    :goto_0
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 289
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lh;->a:Lh$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh$c;->J:Z

    .line 181
    iget-object v0, v0, Lh$c;->H:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Lh;->a:Lh$c;

    iput-object p1, v0, Lh$c;->H:Landroid/content/res/ColorStateList;

    .line 183
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lh;->a:Lh$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh$c;->K:Z

    .line 190
    iget-object v0, v0, Lh$c;->I:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 191
    iget-object v0, p0, Lh;->a:Lh$c;

    iput-object p1, v0, Lh$c;->I:Landroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 392
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 393
    iget-object v1, p0, Lh;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 396
    :cond_0
    iget-object v1, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lh;->c:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lh;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lh;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

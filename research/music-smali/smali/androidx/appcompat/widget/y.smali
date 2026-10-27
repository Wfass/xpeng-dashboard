.class Landroidx/appcompat/widget/y;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/ar;

.field private c:Landroidx/appcompat/widget/ar;

.field private d:Landroidx/appcompat/widget/ar;

.field private e:Landroidx/appcompat/widget/ar;

.field private f:Landroidx/appcompat/widget/ar;

.field private g:Landroidx/appcompat/widget/ar;

.field private h:Landroidx/appcompat/widget/ar;

.field private final i:Landroidx/appcompat/widget/z;

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Landroidx/appcompat/widget/y;->j:I

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Landroidx/appcompat/widget/y;->k:I

    .line 79
    iput-object p1, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    .line 80
    new-instance p1, Landroidx/appcompat/widget/z;

    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/z;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/ar;
    .locals 0

    .line 548
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 550
    new-instance p1, Landroidx/appcompat/widget/ar;

    invoke-direct {p1}, Landroidx/appcompat/widget/ar;-><init>()V

    const/4 p2, 0x1

    .line 551
    iput-boolean p2, p1, Landroidx/appcompat/widget/ar;->d:Z

    .line 552
    iput-object p0, p1, Landroidx/appcompat/widget/ar;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroidx/appcompat/widget/at;)V
    .locals 9

    .line 342
    sget v0, Le$j;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/y;->j:I

    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    .line 345
    sget v0, Le$j;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/y;->k:I

    .line 347
    iget v0, p0, Landroidx/appcompat/widget/y;->k:I

    if-eq v0, v3, :cond_0

    .line 348
    iget v0, p0, Landroidx/appcompat/widget/y;->j:I

    and-int/2addr v0, v2

    or-int/2addr v0, v4

    iput v0, p0, Landroidx/appcompat/widget/y;->j:I

    .line 352
    :cond_0
    sget v0, Le$j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_6

    sget v0, Le$j;->TextAppearance_fontFamily:I

    .line 353
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 415
    :cond_1
    sget p1, Le$j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 417
    iput-boolean v4, p0, Landroidx/appcompat/widget/y;->m:Z

    .line 418
    sget p1, Le$j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v5}, Landroidx/appcompat/widget/at;->a(II)I

    move-result p1

    if-eq p1, v5, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 425
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 421
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 354
    iput-object v0, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    .line 355
    sget v0, Le$j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 356
    sget v0, Le$j;->TextAppearance_fontFamily:I

    goto :goto_2

    .line 357
    :cond_7
    sget v0, Le$j;->TextAppearance_android_fontFamily:I

    .line 358
    :goto_2
    iget v6, p0, Landroidx/appcompat/widget/y;->k:I

    .line 359
    iget v7, p0, Landroidx/appcompat/widget/y;->j:I

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    .line 361
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-direct {p1, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 362
    new-instance v8, Landroidx/appcompat/widget/y$1;

    invoke-direct {v8, p0, v6, v7, p1}, Landroidx/appcompat/widget/y$1;-><init>(Landroidx/appcompat/widget/y;IILjava/lang/ref/WeakReference;)V

    .line 381
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {p2, v0, p1, v8}, Landroidx/appcompat/widget/at;->a(IILds$c;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 383
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v1, :cond_9

    iget v6, p0, Landroidx/appcompat/widget/y;->k:I

    if-eq v6, v3, :cond_9

    .line 386
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v6, p0, Landroidx/appcompat/widget/y;->k:I

    iget v7, p0, Landroidx/appcompat/widget/y;->j:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_3

    :cond_8
    move v7, v4

    .line 385
    :goto_3
    invoke-static {p1, v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    goto :goto_4

    .line 389
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    .line 393
    :cond_a
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v5

    goto :goto_5

    :cond_b
    move p1, v4

    :goto_5
    iput-boolean p1, p0, Landroidx/appcompat/widget/y;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    .line 400
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 402
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_e

    iget p2, p0, Landroidx/appcompat/widget/y;->k:I

    if-eq p2, v3, :cond_e

    .line 405
    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/y;->k:I

    iget v0, p0, Landroidx/appcompat/widget/y;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    move v4, v5

    .line 404
    :cond_d
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    goto :goto_6

    .line 408
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    :cond_f
    :goto_6
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt v0, v1, :cond_5

    if-nez p5, :cond_0

    if-eqz p6, :cond_5

    .line 673
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 674
    iget-object p3, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_1

    goto :goto_0

    .line 675
    :cond_1
    aget-object p5, p1, v5

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 676
    :cond_2
    aget-object p2, p1, v3

    :goto_1
    if-eqz p6, :cond_3

    goto :goto_2

    .line 677
    :cond_3
    aget-object p6, p1, v4

    :goto_2
    if-eqz p4, :cond_4

    goto :goto_3

    .line 678
    :cond_4
    aget-object p4, p1, v2

    .line 674
    :goto_3
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_f

    .line 683
    :cond_6
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p5, v1, :cond_a

    .line 684
    iget-object p5, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 685
    aget-object p6, p5, v5

    if-nez p6, :cond_7

    aget-object p6, p5, v4

    if-eqz p6, :cond_a

    .line 686
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    aget-object p3, p5, v5

    if-eqz p2, :cond_8

    goto :goto_4

    .line 688
    :cond_8
    aget-object p2, p5, v3

    :goto_4
    aget-object p6, p5, v4

    if-eqz p4, :cond_9

    goto :goto_5

    .line 690
    :cond_9
    aget-object p4, p5, v2

    .line 686
    :goto_5
    invoke-virtual {p1, p3, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 696
    :cond_a
    iget-object p5, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 697
    iget-object p6, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    goto :goto_6

    .line 698
    :cond_b
    aget-object p1, p5, v5

    :goto_6
    if-eqz p2, :cond_c

    goto :goto_7

    .line 699
    :cond_c
    aget-object p2, p5, v3

    :goto_7
    if-eqz p3, :cond_d

    goto :goto_8

    .line 700
    :cond_d
    aget-object p3, p5, v4

    :goto_8
    if-eqz p4, :cond_e

    goto :goto_9

    .line 701
    :cond_e
    aget-object p4, p5, v2

    .line 697
    :goto_9
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_a
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 542
    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;[I)V

    :cond_0
    return-void
.end method

.method private b(IF)V
    .locals 1

    .line 589
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/z;->a(IF)V

    return-void
.end method

.method private l()V
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    iput-object v0, p0, Landroidx/appcompat/widget/y;->b:Landroidx/appcompat/widget/ar;

    .line 661
    iput-object v0, p0, Landroidx/appcompat/widget/y;->c:Landroidx/appcompat/widget/ar;

    .line 662
    iput-object v0, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/ar;

    .line 663
    iput-object v0, p0, Landroidx/appcompat/widget/y;->e:Landroidx/appcompat/widget/ar;

    .line 664
    iput-object v0, p0, Landroidx/appcompat/widget/y;->f:Landroidx/appcompat/widget/ar;

    .line 665
    iput-object v0, p0, Landroidx/appcompat/widget/y;->g:Landroidx/appcompat/widget/ar;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .line 519
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->b()V

    return-void
.end method

.method a(I)V
    .locals 1

    .line 593
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/z;->a(I)V

    return-void
.end method

.method a(IF)V
    .locals 1

    .line 569
    sget-boolean v0, Landroidx/core/widget/b;->d:Z

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/y;->b(IF)V

    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1

    .line 601
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/z;->a(IIII)V

    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 3

    .line 457
    sget-object v0, Le$j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/at;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/at;

    move-result-object p2

    .line 459
    sget v0, Le$j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 464
    sget v0, Le$j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/y;->a(Z)V

    .line 466
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_3

    .line 469
    sget v0, Le$j;->TextAppearance_android_textColor:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    sget v0, Le$j;->TextAppearance_android_textColor:I

    .line 471
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v2, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 476
    :cond_1
    sget v0, Le$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    sget v0, Le$j;->TextAppearance_android_textColorLink:I

    .line 478
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 480
    iget-object v2, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 483
    :cond_2
    sget v0, Le$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 484
    sget v0, Le$j;->TextAppearance_android_textColorHint:I

    .line 485
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 487
    iget-object v2, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 492
    :cond_3
    sget v0, Le$j;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 493
    sget v0, Le$j;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v0

    if-nez v0, :cond_4

    .line 494
    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
    :cond_4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;)V

    .line 500
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_5

    sget p1, Le$j;->TextAppearance_fontVariationSettings:I

    .line 501
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 502
    sget p1, Le$j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/at;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 505
    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 508
    :cond_5
    invoke-virtual {p2}, Landroidx/appcompat/widget/at;->b()V

    .line 509
    iget-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_6

    .line 510
    iget-object p2, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_6
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Landroidx/appcompat/widget/ar;

    invoke-direct {v0}, Landroidx/appcompat/widget/ar;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    .line 640
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    iput-object p1, v0, Landroidx/appcompat/widget/ar;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 641
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/ar;->d:Z

    .line 642
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->l()V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Landroidx/appcompat/widget/ar;

    invoke-direct {v0}, Landroidx/appcompat/widget/ar;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    .line 654
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    iput-object p1, v0, Landroidx/appcompat/widget/ar;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 655
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/ar;->c:Z

    .line 656
    invoke-direct {p0}, Landroidx/appcompat/widget/y;->l()V

    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 85
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 86
    invoke-static {}, Landroidx/appcompat/widget/j;->b()Landroidx/appcompat/widget/j;

    move-result-object v11

    .line 89
    sget-object v0, Le$j;->AppCompatTextHelper:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/at;

    move-result-object v13

    .line 91
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Le$j;->AppCompatTextHelper:[I

    .line 92
    invoke-virtual {v13}, Landroidx/appcompat/widget/at;->a()Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 91
    invoke-static/range {v0 .. v6}, Lgj;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 95
    sget v0, Le$j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v0

    .line 97
    sget v1, Le$j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget v1, Le$j;->AppCompatTextHelper_android_drawableLeft:I

    .line 99
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v1

    .line 98
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/ar;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/y;->b:Landroidx/appcompat/widget/ar;

    .line 101
    :cond_0
    sget v1, Le$j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    sget v1, Le$j;->AppCompatTextHelper_android_drawableTop:I

    .line 103
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v1

    .line 102
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/ar;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/y;->c:Landroidx/appcompat/widget/ar;

    .line 105
    :cond_1
    sget v1, Le$j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    sget v1, Le$j;->AppCompatTextHelper_android_drawableRight:I

    .line 107
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v1

    .line 106
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/ar;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/ar;

    .line 109
    :cond_2
    sget v1, Le$j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    sget v1, Le$j;->AppCompatTextHelper_android_drawableBottom:I

    .line 111
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v1

    .line 110
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/ar;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/y;->e:Landroidx/appcompat/widget/ar;

    .line 114
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_5

    .line 115
    sget v1, Le$j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    sget v1, Le$j;->AppCompatTextHelper_android_drawableStart:I

    .line 117
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v1

    .line 116
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/ar;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/y;->f:Landroidx/appcompat/widget/ar;

    .line 119
    :cond_4
    sget v1, Le$j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    sget v1, Le$j;->AppCompatTextHelper_android_drawableEnd:I

    .line 121
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v1

    .line 120
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/ar;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/y;->g:Landroidx/appcompat/widget/ar;

    .line 125
    :cond_5
    invoke-virtual {v13}, Landroidx/appcompat/widget/at;->b()V

    .line 130
    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/16 v2, 0x1a

    const/16 v4, 0x17

    if-eq v0, v14, :cond_d

    .line 142
    sget-object v5, Le$j;->TextAppearance:[I

    invoke-static {v10, v0, v5}, Landroidx/appcompat/widget/at;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/at;

    move-result-object v0

    if-nez v1, :cond_6

    .line 143
    sget v5, Le$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 145
    sget v5, Le$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v5, v12}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v5

    move v6, v5

    const/4 v5, 0x1

    goto :goto_0

    :cond_6
    move v5, v12

    move v6, v5

    .line 148
    :goto_0
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;)V

    .line 149
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v4, :cond_a

    .line 152
    sget v15, Le$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 153
    sget v15, Le$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    .line 155
    :goto_1
    sget v3, Le$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 156
    sget v3, Le$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    .line 159
    :goto_2
    sget v13, Le$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 160
    sget v13, Le$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object/from16 v17, v15

    move-object v15, v13

    move-object/from16 v13, v17

    goto :goto_4

    :cond_9
    move-object v13, v15

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_3
    const/4 v15, 0x0

    .line 164
    :goto_4
    sget v14, Le$j;->TextAppearance_textLocale:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 165
    sget v14, Le$j;->TextAppearance_textLocale:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/at;->d(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_5

    :cond_b
    const/4 v14, 0x0

    .line 167
    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_c

    sget v4, Le$j;->TextAppearance_fontVariationSettings:I

    .line 168
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 169
    sget v4, Le$j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/at;->d(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    .line 171
    :goto_6
    invoke-virtual {v0}, Landroidx/appcompat/widget/at;->b()V

    goto :goto_7

    :cond_d
    move v5, v12

    move v6, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 175
    :goto_7
    sget-object v0, Le$j;->TextAppearance:[I

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/at;

    move-result-object v0

    if-nez v1, :cond_e

    .line 177
    sget v2, Le$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 179
    sget v2, Le$j;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v2, v12}, Landroidx/appcompat/widget/at;->a(IZ)Z

    move-result v6

    const/16 v16, 0x1

    goto :goto_8

    :cond_e
    move/from16 v16, v5

    .line 181
    :goto_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v2, v5, :cond_11

    .line 184
    sget v2, Le$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 185
    sget v2, Le$j;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 187
    :cond_f
    sget v2, Le$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 188
    sget v2, Le$j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 191
    :cond_10
    sget v2, Le$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 192
    sget v2, Le$j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 196
    :cond_11
    sget v2, Le$j;->TextAppearance_textLocale:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 197
    sget v2, Le$j;->TextAppearance_textLocale:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->d(I)Ljava/lang/String;

    move-result-object v14

    .line 200
    :cond_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_13

    sget v2, Le$j;->TextAppearance_fontVariationSettings:I

    .line 201
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 202
    sget v2, Le$j;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->d(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    :cond_13
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v2, v5, :cond_14

    sget v2, Le$j;->TextAppearance_android_textSize:I

    .line 206
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 207
    sget v2, Le$j;->TextAppearance_android_textSize:I

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v2

    if-nez v2, :cond_14

    .line 208
    iget-object v2, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v2, v12, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    :cond_14
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/y;->a(Landroid/content/Context;Landroidx/appcompat/widget/at;)V

    .line 213
    invoke-virtual {v0}, Landroidx/appcompat/widget/at;->b()V

    if-eqz v13, :cond_15

    .line 216
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_15
    if-eqz v3, :cond_16

    .line 219
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_16
    if-eqz v15, :cond_17

    .line 222
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17
    if-nez v1, :cond_18

    if-eqz v16, :cond_18

    .line 225
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/y;->a(Z)V

    .line 227
    :cond_18
    iget-object v0, v7, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1a

    .line 228
    iget v1, v7, Landroidx/appcompat/widget/y;->k:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    .line 229
    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    iget v2, v7, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_9

    .line 231
    :cond_19
    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1a
    :goto_9
    if-eqz v4, :cond_1b

    .line 235
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_1b
    if-eqz v14, :cond_1d

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1c

    .line 239
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    goto :goto_a

    .line 240
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1d

    const/16 v0, 0x2c

    .line 242
    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v14, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 247
    :cond_1d
    :goto_a
    iget-object v0, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/z;->a(Landroid/util/AttributeSet;I)V

    .line 249
    sget-boolean v0, Landroidx/core/widget/b;->d:Z

    if-eqz v0, :cond_1f

    .line 251
    iget-object v0, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 253
    iget-object v0, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    .line 254
    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->e()[I

    move-result-object v0

    .line 255
    array-length v1, v0

    if-lez v1, :cond_1f

    .line 256
    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1e

    .line 259
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    iget-object v1, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    .line 260
    invoke-virtual {v1}, Landroidx/appcompat/widget/z;->c()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    .line 261
    invoke-virtual {v2}, Landroidx/appcompat/widget/z;->d()I

    move-result v2

    iget-object v3, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    .line 262
    invoke-virtual {v3}, Landroidx/appcompat/widget/z;->b()I

    move-result v3

    .line 259
    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_b

    .line 265
    :cond_1e
    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 273
    :cond_1f
    :goto_b
    sget-object v0, Le$j;->AppCompatTextView:[I

    invoke-static {v10, v8, v0}, Landroidx/appcompat/widget/at;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/at;

    move-result-object v8

    .line 278
    sget v0, Le$j;->AppCompatTextView_drawableLeftCompat:I

    const/4 v1, -0x1

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_20

    .line 281
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_c

    :cond_20
    const/4 v2, 0x0

    .line 283
    :goto_c
    sget v0, Le$j;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_21

    .line 286
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    goto :goto_d

    :cond_21
    const/4 v3, 0x0

    .line 288
    :goto_d
    sget v0, Le$j;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_22

    .line 291
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_e

    :cond_22
    const/4 v4, 0x0

    .line 293
    :goto_e
    sget v0, Le$j;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_23

    .line 296
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_f

    :cond_23
    const/4 v5, 0x0

    .line 298
    :goto_f
    sget v0, Le$j;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_24

    .line 301
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_10

    :cond_24
    const/4 v6, 0x0

    .line 303
    :goto_10
    sget v0, Le$j;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/at;->g(II)I

    move-result v0

    if-eq v0, v1, :cond_25

    .line 306
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/j;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v9, v0

    goto :goto_11

    :cond_25
    const/4 v9, 0x0

    :goto_11
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v9

    .line 308
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 311
    sget v0, Le$j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 312
    sget v0, Le$j;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/at;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 314
    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 316
    :cond_26
    sget v0, Le$j;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/at;->g(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 317
    sget v0, Le$j;->AppCompatTextView_drawableTintMode:I

    const/4 v1, -0x1

    .line 318
    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/at;->a(II)I

    move-result v0

    const/4 v2, 0x0

    .line 317
    invoke-static {v0, v2}, Landroidx/appcompat/widget/ad;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 319
    iget-object v2, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_12

    :cond_27
    const/4 v1, -0x1

    .line 322
    :goto_12
    sget v0, Le$j;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v8, v0, v1}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v0

    .line 324
    sget v2, Le$j;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v8, v2, v1}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v2

    .line 326
    sget v3, Le$j;->AppCompatTextView_lineHeight:I

    invoke-virtual {v8, v3, v1}, Landroidx/appcompat/widget/at;->e(II)I

    move-result v3

    .line 329
    invoke-virtual {v8}, Landroidx/appcompat/widget/at;->b()V

    if-eq v0, v1, :cond_28

    .line 331
    iget-object v4, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;I)V

    :cond_28
    if-eq v2, v1, :cond_29

    .line 334
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/widget/i;->c(Landroid/widget/TextView;I)V

    :cond_29
    if-eq v3, v1, :cond_2a

    .line 337
    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/core/widget/i;->d(Landroid/widget/TextView;I)V

    :cond_2a
    return-void
.end method

.method a(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 723
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p3, p1}, Lha;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 437
    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->m:Z

    if-eqz v0, :cond_1

    .line 438
    iput-object p2, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    .line 439
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 441
    invoke-static {p1}, Lgj;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget v0, p0, Landroidx/appcompat/widget/y;->j:I

    .line 443
    new-instance v1, Landroidx/appcompat/widget/y$2;

    invoke-direct {v1, p0, p1, p2, v0}, Landroidx/appcompat/widget/y$2;-><init>(Landroidx/appcompat/widget/y;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 450
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Z)V
    .locals 1

    .line 515
    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method a(ZIIII)V
    .locals 0

    .line 561
    sget-boolean p1, Landroidx/core/widget/b;->d:Z

    if-nez p1, :cond_0

    .line 562
    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->c()V

    :cond_0
    return-void
.end method

.method a([II)V
    .locals 1

    .line 607
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/z;->a([II)V

    return-void
.end method

.method b()V
    .locals 5

    .line 523
    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Landroidx/appcompat/widget/ar;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Landroidx/appcompat/widget/ar;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/ar;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:Landroidx/appcompat/widget/ar;

    if-eqz v0, :cond_1

    .line 525
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 526
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/y;->b:Landroidx/appcompat/widget/ar;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;)V

    const/4 v3, 0x1

    .line 527
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/y;->c:Landroidx/appcompat/widget/ar;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;)V

    .line 528
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/ar;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;)V

    const/4 v3, 0x3

    .line 529
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/y;->e:Landroidx/appcompat/widget/ar;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;)V

    .line 531
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 532
    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:Landroidx/appcompat/widget/ar;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->g:Landroidx/appcompat/widget/ar;

    if-eqz v0, :cond_3

    .line 533
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 534
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/y;->f:Landroidx/appcompat/widget/ar;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;)V

    .line 535
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/y;->g:Landroidx/appcompat/widget/ar;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ar;)V

    :cond_3
    return-void
.end method

.method c()V
    .locals 1

    .line 579
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->f()V

    return-void
.end method

.method d()Z
    .locals 1

    .line 585
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->g()Z

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    .line 612
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->a()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .line 616
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->b()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->c()I

    move-result v0

    return v0
.end method

.method h()I
    .locals 1

    .line 624
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->d()I

    move-result v0

    return v0
.end method

.method i()[I
    .locals 1

    .line 628
    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/z;

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->e()[I

    move-result-object v0

    return-object v0
.end method

.method j()Landroid/content/res/ColorStateList;
    .locals 1

    .line 633
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ar;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method k()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 647
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/ar;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/ar;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

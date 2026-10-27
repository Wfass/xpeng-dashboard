.class public abstract Lhg;
.super Lfh;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg$a;
    }
.end annotation


# static fields
.field private static final c:Landroid/graphics/Rect;

.field private static final l:Lhh$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhh$a<",
            "Lgu;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lhh$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhh$b<",
            "Landroidx/collection/f<",
            "Lgu;",
            ">;",
            "Lgu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/Rect;

.field private final g:[I

.field private final h:Landroid/view/accessibility/AccessibilityManager;

.field private final i:Landroid/view/View;

.field private j:Lhg$a;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lhg;->c:Landroid/graphics/Rect;

    .line 335
    new-instance v0, Lhg$1;

    invoke-direct {v0}, Lhg$1;-><init>()V

    sput-object v0, Lhg;->l:Lhh$a;

    .line 347
    new-instance v0, Lhg$2;

    invoke-direct {v0}, Lhg$2;-><init>()V

    sput-object v0, Lhg;->m:Lhh$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Lfh;-><init>()V

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lhg;->d:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lhg;->e:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lhg;->f:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 107
    new-array v0, v0, [I

    iput-object v0, p0, Lhg;->g:[I

    const/high16 v0, -0x80000000

    .line 119
    iput v0, p0, Lhg;->a:I

    .line 123
    iput v0, p0, Lhg;->b:I

    .line 127
    iput v0, p0, Lhg;->k:I

    if-eqz p1, :cond_1

    .line 140
    iput-object p1, p0, Lhg;->i:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lhg;->h:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-static {p1}, Lgj;->f(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-static {p1, v0}, Lgj;->d(Landroid/view/View;I)V

    :cond_0
    return-void

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2

    const/16 v1, 0x42

    const/4 v3, -0x1

    if-eq p1, v1, :cond_1

    const/16 p0, 0x82

    if-ne p1, p0, :cond_0

    .line 466
    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 469
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_1
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 460
    :cond_2
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-object p2
.end method

.method private a(ILandroid/graphics/Rect;)V
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Lhg;->b(I)Lgu;

    move-result-object p1

    .line 329
    invoke-virtual {p1, p2}, Lgu;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method private a(ILandroid/os/Bundle;)Z
    .locals 1

    .line 907
    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-static {v0, p1, p2}, Lgj;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 935
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 940
    :cond_0
    iget-object p1, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 945
    :cond_1
    iget-object p1, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 946
    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 947
    check-cast p1, Landroid/view/View;

    .line 948
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 951
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_2
    return v0
.end method

.method private b(ILandroid/graphics/Rect;)Z
    .locals 9

    .line 372
    invoke-direct {p0}, Lhg;->c()Landroidx/collection/f;

    move-result-object v7

    .line 374
    iget v0, p0, Lhg;->b:I

    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v7, v0}, Landroidx/collection/f;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgu;

    :goto_0
    move-object v3, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x21

    if-eq p1, v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 410
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_2
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 393
    iget v0, p0, Lhg;->b:I

    if-eq v0, v8, :cond_3

    .line 395
    invoke-direct {p0, v0, v4}, Lhg;->a(ILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 398
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 404
    :cond_4
    iget-object p2, p0, Lhg;->i:Landroid/view/View;

    invoke-static {p2, p1, v4}, Lhg;->a(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 406
    :goto_2
    sget-object v1, Lhg;->m:Lhh$b;

    sget-object v2, Lhg;->l:Lhh$a;

    move-object v0, v7

    move v5, p1

    invoke-static/range {v0 .. v5}, Lhh;->a(Ljava/lang/Object;Lhh$b;Lhh$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgu;

    goto :goto_4

    .line 382
    :cond_5
    iget-object p2, p0, Lhg;->i:Landroid/view/View;

    .line 383
    invoke-static {p2}, Lgj;->h(Landroid/view/View;)I

    move-result p2

    if-ne p2, v0, :cond_6

    move v5, v0

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    move v5, p2

    .line 384
    :goto_3
    sget-object v1, Lhg;->m:Lhh$b;

    sget-object v2, Lhg;->l:Lhh$a;

    const/4 v6, 0x0

    move-object v0, v7

    move v4, p1

    invoke-static/range {v0 .. v6}, Lhh;->a(Ljava/lang/Object;Lhh$b;Lhh$a;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgu;

    :goto_4
    if-nez p1, :cond_7

    goto :goto_5

    .line 419
    :cond_7
    invoke-virtual {v7, p1}, Landroidx/collection/f;->a(Ljava/lang/Object;)I

    move-result p1

    .line 420
    invoke-virtual {v7, p1}, Landroidx/collection/f;->d(I)I

    move-result v8

    .line 423
    :goto_5
    invoke-virtual {p0, v8}, Lhg;->c(I)Z

    move-result p1

    return p1
.end method

.method private c(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 643
    invoke-direct {p0, p1, p2}, Lhg;->d(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    .line 641
    :cond_0
    invoke-direct {p0, p2}, Lhg;->g(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private c()Landroidx/collection/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/f<",
            "Lgu;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    invoke-virtual {p0, v0}, Lhg;->a(Ljava/util/List;)V

    .line 430
    new-instance v1, Landroidx/collection/f;

    invoke-direct {v1}, Landroidx/collection/f;-><init>()V

    const/4 v2, 0x0

    .line 431
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 434
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lhg;->h(I)Lgu;

    move-result-object v3

    .line 435
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroidx/collection/f;->b(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private c(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 921
    invoke-virtual {p0, p1, p2, p3}, Lhg;->b(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 915
    :cond_0
    invoke-direct {p0, p1}, Lhg;->j(I)Z

    move-result p1

    return p1

    .line 913
    :cond_1
    invoke-direct {p0, p1}, Lhg;->i(I)Z

    move-result p1

    return p1

    .line 919
    :cond_2
    invoke-virtual {p0, p1}, Lhg;->d(I)Z

    move-result p1

    return p1

    .line 917
    :cond_3
    invoke-virtual {p0, p1}, Lhg;->c(I)Z

    move-result p1

    return p1
.end method

.method private d(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3

    .line 679
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 680
    invoke-virtual {p0, p1}, Lhg;->b(I)Lgu;

    move-result-object v0

    .line 683
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lgu;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {v0}, Lgu;->r()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v0}, Lgu;->n()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 686
    invoke-virtual {v0}, Lgu;->m()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 687
    invoke-virtual {v0}, Lgu;->l()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 688
    invoke-virtual {v0}, Lgu;->f()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 691
    invoke-virtual {p0, p1, p2}, Lhg;->a(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 694
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 700
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lgu;->p()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-static {p2, v0, p1}, Lgw;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 702
    iget-object p1, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private d()Z
    .locals 3

    .line 483
    iget v0, p0, Lhg;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lhg;->b(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static e(I)I
    .locals 1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 p0, 0x82

    return p0

    :cond_0
    const/16 p0, 0x42

    return p0

    :cond_1
    const/16 p0, 0x11

    return p0

    :cond_2
    const/16 p0, 0x21

    return p0
.end method

.method private e()Lgu;
    .locals 6

    .line 736
    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-static {v0}, Lgu;->a(Landroid/view/View;)Lgu;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lhg;->i:Landroid/view/View;

    invoke-static {v1, v0}, Lgj;->a(Landroid/view/View;Lgu;)V

    .line 740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 741
    invoke-virtual {p0, v1}, Lhg;->a(Ljava/util/List;)V

    .line 743
    invoke-virtual {v0}, Lgu;->c()I

    move-result v2

    if-lez v2, :cond_1

    .line 744
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 748
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    .line 749
    iget-object v4, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lgu;->b(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private f(I)V
    .locals 2

    .line 614
    iget v0, p0, Lhg;->k:I

    if-ne v0, p1, :cond_0

    return-void

    .line 619
    :cond_0
    iput p1, p0, Lhg;->k:I

    const/16 v1, 0x80

    .line 623
    invoke-virtual {p0, p1, v1}, Lhg;->a(II)Z

    const/16 p1, 0x100

    .line 624
    invoke-virtual {p0, v0, p1}, Lhg;->a(II)Z

    return-void
.end method

.method private g(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 655
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 656
    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private h(I)Lgu;
    .locals 7

    .line 793
    invoke-static {}, Lgu;->b()Lgu;

    move-result-object v0

    const/4 v1, 0x1

    .line 796
    invoke-virtual {v0, v1}, Lgu;->h(Z)V

    .line 797
    invoke-virtual {v0, v1}, Lgu;->c(Z)V

    const-string v2, "android.view.View"

    .line 798
    invoke-virtual {v0, v2}, Lgu;->b(Ljava/lang/CharSequence;)V

    .line 800
    sget-object v2, Lhg;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lgu;->b(Landroid/graphics/Rect;)V

    .line 801
    sget-object v2, Lhg;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lgu;->d(Landroid/graphics/Rect;)V

    .line 802
    iget-object v2, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Lgu;->b(Landroid/view/View;)V

    .line 805
    invoke-virtual {p0, p1, v0}, Lhg;->a(ILgu;)V

    .line 808
    invoke-virtual {v0}, Lgu;->q()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lgu;->r()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 813
    :cond_1
    :goto_0
    iget-object v2, p0, Lhg;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lgu;->a(Landroid/graphics/Rect;)V

    .line 814
    iget-object v2, p0, Lhg;->e:Landroid/graphics/Rect;

    sget-object v3, Lhg;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 819
    invoke-virtual {v0}, Lgu;->d()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_b

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_a

    .line 830
    iget-object v2, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgu;->a(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v2, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Lgu;->a(Landroid/view/View;I)V

    .line 834
    iget v2, p0, Lhg;->a:I

    const/4 v4, 0x0

    if-ne v2, p1, :cond_2

    .line 835
    invoke-virtual {v0, v1}, Lgu;->f(Z)V

    .line 836
    invoke-virtual {v0, v3}, Lgu;->a(I)V

    goto :goto_1

    .line 838
    :cond_2
    invoke-virtual {v0, v4}, Lgu;->f(Z)V

    const/16 v2, 0x40

    .line 839
    invoke-virtual {v0, v2}, Lgu;->a(I)V

    .line 843
    :goto_1
    iget v2, p0, Lhg;->b:I

    if-ne v2, p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v4

    :goto_2
    if-eqz p1, :cond_4

    const/4 v2, 0x2

    .line 845
    invoke-virtual {v0, v2}, Lgu;->a(I)V

    goto :goto_3

    .line 846
    :cond_4
    invoke-virtual {v0}, Lgu;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 847
    invoke-virtual {v0, v1}, Lgu;->a(I)V

    .line 849
    :cond_5
    :goto_3
    invoke-virtual {v0, p1}, Lgu;->d(Z)V

    .line 851
    iget-object p1, p0, Lhg;->i:Landroid/view/View;

    iget-object v2, p0, Lhg;->g:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 855
    iget-object p1, p0, Lhg;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lgu;->c(Landroid/graphics/Rect;)V

    .line 856
    iget-object p1, p0, Lhg;->d:Landroid/graphics/Rect;

    sget-object v2, Lhg;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 857
    iget-object p1, p0, Lhg;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lgu;->a(Landroid/graphics/Rect;)V

    .line 860
    iget p1, v0, Lgu;->a:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_7

    .line 861
    invoke-static {}, Lgu;->b()Lgu;

    move-result-object p1

    .line 863
    iget v3, v0, Lgu;->a:I

    :goto_4
    if-eq v3, v2, :cond_6

    .line 867
    iget-object v5, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {p1, v5, v2}, Lgu;->c(Landroid/view/View;I)V

    .line 868
    sget-object v5, Lhg;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Lgu;->b(Landroid/graphics/Rect;)V

    .line 870
    invoke-virtual {p0, v3, p1}, Lhg;->a(ILgu;)V

    .line 871
    iget-object v3, p0, Lhg;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lgu;->a(Landroid/graphics/Rect;)V

    .line 872
    iget-object v3, p0, Lhg;->d:Landroid/graphics/Rect;

    iget-object v5, p0, Lhg;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lhg;->e:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 865
    iget v3, p1, Lgu;->a:I

    goto :goto_4

    .line 874
    :cond_6
    invoke-virtual {p1}, Lgu;->s()V

    .line 877
    :cond_7
    iget-object p1, p0, Lhg;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lhg;->g:[I

    aget v2, v2, v4

    iget-object v3, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lhg;->g:[I

    aget v3, v3, v1

    iget-object v5, p0, Lhg;->i:Landroid/view/View;

    .line 878
    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v3, v5

    .line 877
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 881
    :cond_8
    iget-object p1, p0, Lhg;->i:Landroid/view/View;

    iget-object v2, p0, Lhg;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 882
    iget-object p1, p0, Lhg;->f:Landroid/graphics/Rect;

    iget-object v2, p0, Lhg;->g:[I

    aget v2, v2, v4

    iget-object v3, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lhg;->g:[I

    aget v3, v3, v1

    iget-object v4, p0, Lhg;->i:Landroid/view/View;

    .line 883
    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    .line 882
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 884
    iget-object p1, p0, Lhg;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lhg;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 886
    iget-object p1, p0, Lhg;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lgu;->d(Landroid/graphics/Rect;)V

    .line 888
    iget-object p1, p0, Lhg;->d:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lhg;->a(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 889
    invoke-virtual {v0, v1}, Lgu;->e(Z)V

    :cond_9
    return-object v0

    .line 825
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 821
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 815
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(I)Z
    .locals 2

    .line 971
    iget-object v0, p0, Lhg;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhg;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    iget v0, p0, Lhg;->a:I

    if-eq v0, p1, :cond_2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 978
    invoke-direct {p0, v0}, Lhg;->j(I)Z

    .line 982
    :cond_1
    iput p1, p0, Lhg;->a:I

    .line 985
    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    .line 986
    invoke-virtual {p0, p1, v0}, Lhg;->a(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private j(I)Z
    .locals 1

    .line 1001
    iget v0, p0, Lhg;->a:I

    if-ne v0, p1, :cond_0

    const/high16 v0, -0x80000000

    .line 1002
    iput v0, p0, Lhg;->a:I

    .line 1003
    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 1004
    invoke-virtual {p0, p1, v0}, Lhg;->a(II)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 290
    iget v0, p0, Lhg;->a:I

    return v0
.end method

.method protected abstract a(FF)I
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, p1, v0}, Lhg;->b(II)V

    return-void
.end method

.method protected a(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected abstract a(ILgu;)V
.end method

.method protected a(IZ)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method protected a(Lgu;)V
    .locals 0

    return-void
.end method

.method protected abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final a(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 275
    iget v0, p0, Lhg;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Lhg;->d(I)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 280
    invoke-direct {p0, p2, p3}, Lhg;->b(ILandroid/graphics/Rect;)Z

    :cond_1
    return-void
.end method

.method public final a(II)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    .line 507
    iget-object v1, p0, Lhg;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    iget-object v1, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 516
    :cond_1
    invoke-direct {p0, p1, p2}, Lhg;->c(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 517
    iget-object p2, p0, Lhg;->i:Landroid/view/View;

    invoke-interface {v1, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method a(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 902
    invoke-direct {p0, p1, p2, p3}, Lhg;->c(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 900
    :cond_0
    invoke-direct {p0, p2, p3}, Lhg;->a(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 220
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/16 v3, 0x42

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 226
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    invoke-static {v0}, Lhg;->e(I)I

    move-result v0

    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    move v3, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 230
    invoke-direct {p0, v0, v4}, Lhg;->b(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 240
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_4

    .line 242
    invoke-direct {p0}, Lhg;->d()Z

    move v1, v2

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    .line 249
    invoke-direct {p0, p1, v4}, Lhg;->b(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 251
    invoke-direct {p0, v2, v4}, Lhg;->b(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_4
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 182
    iget-object v0, p0, Lhg;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhg;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    return v1

    .line 193
    :cond_1
    iget p1, p0, Lhg;->k:I

    if-eq p1, v4, :cond_2

    .line 194
    invoke-direct {p0, v4}, Lhg;->f(I)V

    return v3

    :cond_2
    return v1

    .line 189
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lhg;->a(FF)I

    move-result p1

    .line 190
    invoke-direct {p0, p1}, Lhg;->f(I)V

    if-eq p1, v4, :cond_4

    move v1, v3

    :cond_4
    :goto_0
    return v1
.end method

.method public final b()I
    .locals 1

    .line 298
    iget v0, p0, Lhg;->b:I

    return v0
.end method

.method b(I)Lgu;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 722
    invoke-direct {p0}, Lhg;->e()Lgu;

    move-result-object p1

    return-object p1

    .line 725
    :cond_0
    invoke-direct {p0, p1}, Lhg;->h(I)Lgu;

    move-result-object p1

    return-object p1
.end method

.method public final b(II)V
    .locals 2

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 568
    iget-object v0, p0, Lhg;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    .line 572
    invoke-direct {p0, p1, v1}, Lhg;->c(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 574
    invoke-static {p1, p2}, Lgt;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 575
    iget-object p2, p0, Lhg;->i:Landroid/view/View;

    invoke-interface {v0, p2, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method protected abstract b(IILandroid/os/Bundle;)Z
.end method

.method public final c(I)Z
    .locals 3

    .line 1019
    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhg;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1024
    :cond_0
    iget v0, p0, Lhg;->b:I

    if-ne v0, p1, :cond_1

    return v1

    :cond_1
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_2

    .line 1030
    invoke-virtual {p0, v0}, Lhg;->d(I)Z

    :cond_2
    if-ne p1, v2, :cond_3

    return v1

    .line 1037
    :cond_3
    iput p1, p0, Lhg;->b:I

    const/4 v0, 0x1

    .line 1039
    invoke-virtual {p0, p1, v0}, Lhg;->a(IZ)V

    const/16 v1, 0x8

    .line 1040
    invoke-virtual {p0, p1, v1}, Lhg;->a(II)Z

    return v0
.end method

.method public final d(I)Z
    .locals 2

    .line 1053
    iget v0, p0, Lhg;->b:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 1058
    iput v0, p0, Lhg;->b:I

    .line 1060
    invoke-virtual {p0, p1, v1}, Lhg;->a(IZ)V

    const/16 v0, 0x8

    .line 1061
    invoke-virtual {p0, p1, v0}, Lhg;->a(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lgv;
    .locals 0

    .line 157
    iget-object p1, p0, Lhg;->j:Lhg$a;

    if-nez p1, :cond_0

    .line 158
    new-instance p1, Lhg$a;

    invoke-direct {p1, p0}, Lhg$a;-><init>(Lhg;)V

    iput-object p1, p0, Lhg;->j:Lhg$a;

    .line 160
    :cond_0
    iget-object p1, p0, Lhg;->j:Lhg$a;

    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 662
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 665
    invoke-virtual {p0, p2}, Lhg;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V
    .locals 0

    .line 757
    invoke-super {p0, p1, p2}, Lfh;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lgu;)V

    .line 760
    invoke-virtual {p0, p2}, Lhg;->a(Lgu;)V

    return-void
.end method

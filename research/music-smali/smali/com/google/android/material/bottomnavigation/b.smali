.class public Lcom/google/android/material/bottomnavigation/b;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private A:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private B:Landroidx/appcompat/view/menu/g;

.field private final c:Landroidx/transition/s;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Landroid/view/View$OnClickListener;

.field private final j:Lff$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff$a<",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:I

.field private n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

.field private o:I

.field private p:I

.field private q:Landroid/content/res/ColorStateList;

.field private r:I

.field private s:Landroid/content/res/ColorStateList;

.field private final t:Landroid/content/res/ColorStateList;

.field private u:I

.field private v:I

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I

.field private y:[I

.field private z:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 64
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/material/bottomnavigation/b;->a:[I

    .line 65
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/bottomnavigation/b;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p1, Lff$c;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lff$c;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->j:Lff$a;

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->k:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/google/android/material/bottomnavigation/b;->o:I

    .line 85
    iput p1, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    .line 107
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    sget v1, Laiv$d;->design_bottom_navigation_item_max_width:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/b;->d:I

    .line 110
    sget v1, Laiv$d;->design_bottom_navigation_item_min_width:I

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/b;->e:I

    .line 112
    sget v1, Laiv$d;->design_bottom_navigation_active_item_max_width:I

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/b;->f:I

    .line 114
    sget v1, Laiv$d;->design_bottom_navigation_active_item_min_width:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/b;->g:I

    .line 116
    sget v1, Laiv$d;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/b;->h:I

    const v0, 0x1010038

    .line 117
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/b;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->t:Landroid/content/res/ColorStateList;

    .line 119
    new-instance v0, Landroidx/transition/b;

    invoke-direct {v0}, Landroidx/transition/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->c:Landroidx/transition/s;

    .line 120
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->c:Landroidx/transition/s;

    invoke-virtual {v0, p1}, Landroidx/transition/s;->a(I)Landroidx/transition/s;

    .line 121
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->c:Landroidx/transition/s;

    const-wide/16 v0, 0x73

    invoke-virtual {p1, v0, v1}, Landroidx/transition/s;->c(J)Landroidx/transition/s;

    .line 122
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->c:Landroidx/transition/s;

    new-instance v0, Lhm;

    invoke-direct {v0}, Lhm;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/transition/s;->b(Landroid/animation/TimeInterpolator;)Landroidx/transition/s;

    .line 123
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->c:Landroidx/transition/s;

    new-instance v0, Lcom/google/android/material/internal/m;

    invoke-direct {v0}, Lcom/google/android/material/internal/m;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/transition/s;->a(Landroidx/transition/o;)Landroidx/transition/s;

    .line 125
    new-instance p1, Lcom/google/android/material/bottomnavigation/b$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomnavigation/b$1;-><init>(Lcom/google/android/material/bottomnavigation/b;)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->i:Landroid/view/View$OnClickListener;

    .line 136
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->y:[I

    const/4 p1, 0x1

    .line 138
    invoke-static {p0, p1}, Lgj;->d(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/b;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/b;->A:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    return-object p0
.end method

.method private a(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/google/android/material/bottomnavigation/b;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 728
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 730
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 731
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 735
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 736
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 737
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private g(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getNewItem()Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->j:Lff$a;

    invoke-interface {v0}, Lff$a;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private h(I)V
    .locals 2

    .line 761
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 762
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid view id"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)V
    .locals 2

    .line 715
    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getId()I

    move-result v0

    .line 716
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomnavigation/b;->g(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 721
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Landroid/content/res/ColorStateList;
    .locals 9

    .line 514
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lf;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 519
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 520
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Le$a;->colorPrimary:I

    .line 521
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 524
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 525
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 526
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/bottomnavigation/b;->b:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/android/material/bottomnavigation/b;->a:[I

    aput-object v6, v5, v2

    sget-object v6, Lcom/google/android/material/bottomnavigation/b;->EMPTY_STATE_SET:[I

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [I

    sget-object v6, Lcom/google/android/material/bottomnavigation/b;->b:[I

    .line 529
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v8

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public a(ILandroid/view/View$OnTouchListener;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_2

    .line 504
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 505
    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 506
    invoke-virtual {v3, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 489
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/b;->l:Z

    return v0
.end method

.method public b()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->removeAllViews()V

    .line 540
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 541
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 543
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/b;->j:Lff$a;

    invoke-interface {v5, v4}, Lff$a;->release(Ljava/lang/Object;)Z

    .line 544
    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->removeBadge()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 550
    iput v1, p0, Lcom/google/android/material/bottomnavigation/b;->o:I

    .line 551
    iput v1, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    const/4 v0, 0x0

    .line 552
    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    return-void

    .line 555
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/b;->d()V

    .line 557
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 558
    iget v0, p0, Lcom/google/android/material/bottomnavigation/b;->m:I

    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/bottomnavigation/b;->a(II)Z

    move-result v0

    move v2, v1

    .line 559
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 560
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/b;->A:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b(Z)V

    .line 561
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 562
    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/b;->A:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b(Z)V

    .line 563
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/b;->getNewItem()Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-result-object v3

    .line 564
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aput-object v3, v4, v2

    .line 565
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 566
    iget v4, p0, Lcom/google/android/material/bottomnavigation/b;->r:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    .line 568
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 569
    iget v4, p0, Lcom/google/android/material/bottomnavigation/b;->u:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 570
    iget v4, p0, Lcom/google/android/material/bottomnavigation/b;->v:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 571
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 572
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 573
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 575
    :cond_3
    iget v4, p0, Lcom/google/android/material/bottomnavigation/b;->x:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    .line 577
    :goto_2
    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    .line 578
    iget v4, p0, Lcom/google/android/material/bottomnavigation/b;->m:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 579
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/i;

    .line 580
    invoke-virtual {v3, v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->initialize(Landroidx/appcompat/view/menu/i;I)V

    .line 581
    invoke-virtual {v3, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemPosition(I)V

    .line 582
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v4

    .line 583
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/b;->k:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 584
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/b;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget v5, p0, Lcom/google/android/material/bottomnavigation/b;->o:I

    if-eqz v5, :cond_4

    if-ne v4, v5, :cond_4

    .line 586
    iput v2, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    .line 588
    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/material/bottomnavigation/b;->setBadgeIfNeeded(Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;)V

    .line 589
    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomnavigation/b;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 591
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    .line 592
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    iget v1, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method b(I)V
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 652
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 653
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 654
    iput p1, p0, Lcom/google/android/material/bottomnavigation/b;->o:I

    .line 655
    iput v1, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    const/4 p1, 0x1

    .line 656
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method c(I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/badge/BadgeDrawable;

    return-object p1
.end method

.method public c()V
    .locals 6

    .line 596
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 600
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    .line 601
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->b()V

    return-void

    .line 607
    :cond_1
    iget v1, p0, Lcom/google/android/material/bottomnavigation/b;->o:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 610
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 611
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 612
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomnavigation/b;->o:I

    .line 613
    iput v3, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    :cond_3
    iget v3, p0, Lcom/google/android/material/bottomnavigation/b;->o:I

    if-eq v1, v3, :cond_4

    .line 618
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/b;->c:Landroidx/transition/s;

    invoke-static {p0, v1}, Landroidx/transition/q;->a(Landroid/view/ViewGroup;Landroidx/transition/o;)V

    .line 621
    :cond_4
    iget v1, p0, Lcom/google/android/material/bottomnavigation/b;->m:I

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/material/bottomnavigation/b;->a(II)Z

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    .line 623
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->A:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b(Z)V

    .line 624
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/google/android/material/bottomnavigation/b;->m:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    .line 625
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setShifting(Z)V

    .line 626
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->initialize(Landroidx/appcompat/view/menu/i;I)V

    .line 627
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->A:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v4, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method d(I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 2

    .line 688
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->h(I)V

    .line 689
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->a(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->f(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 697
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_1
    return-object v0
.end method

.method e(I)V
    .locals 2

    .line 703
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->h(I)V

    .line 704
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    .line 705
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->f(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->removeBadge()V

    :cond_0
    if-eqz v0, :cond_1

    .line 710
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method f(I)Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
    .locals 5

    .line 745
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->h(I)V

    .line 746
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 747
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 748
    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->q:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 437
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->w:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    iget v0, p0, Lcom/google/android/material/bottomnavigation/b;->x:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/google/android/material/bottomnavigation/b;->r:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    .line 385
    iget v0, p0, Lcom/google/android/material/bottomnavigation/b;->v:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/google/android/material/bottomnavigation/b;->u:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->s:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    .line 466
    iget v0, p0, Lcom/google/android/material/bottomnavigation/b;->m:I

    return v0
.end method

.method public getSelectedItemId()I
    .locals 1

    .line 640
    iget v0, p0, Lcom/google/android/material/bottomnavigation/b;->o:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 251
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 252
    invoke-static {p1}, Lgu;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lgu;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    .line 256
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    invoke-static {v1, v0, v2, v1}, Lgu$b;->a(IIZI)Lgu$b;

    move-result-object v0

    .line 253
    invoke-virtual {p1, v0}, Lgu;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_0
    if-ge p3, p1, :cond_2

    .line 231
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomnavigation/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 235
    :cond_0
    invoke-static {p0}, Lgj;->h(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sub-int v2, p4, v0

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 238
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 240
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 148
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 150
    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/b;->B:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 152
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/b;->getChildCount()I

    move-result v0

    .line 154
    iget v1, p0, Lcom/google/android/material/bottomnavigation/b;->h:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 156
    iget v3, p0, Lcom/google/android/material/bottomnavigation/b;->m:I

    invoke-direct {p0, v3, p2}, Lcom/google/android/material/bottomnavigation/b;->a(II)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/material/bottomnavigation/b;->l:Z

    if-eqz v3, :cond_6

    .line 157
    iget v3, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    invoke-virtual {p0, v3}, Lcom/google/android/material/bottomnavigation/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 158
    iget v7, p0, Lcom/google/android/material/bottomnavigation/b;->g:I

    .line 159
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_0

    .line 162
    iget v8, p0, Lcom/google/android/material/bottomnavigation/b;->f:I

    const/high16 v9, -0x80000000

    .line 163
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 162
    invoke-virtual {v3, v8, v1}, Landroid/view/View;->measure(II)V

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 166
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    sub-int/2addr p2, v3

    .line 167
    iget v3, p0, Lcom/google/android/material/bottomnavigation/b;->e:I

    mul-int/2addr v3, p2

    sub-int v3, p1, v3

    .line 168
    iget v8, p0, Lcom/google/android/material/bottomnavigation/b;->f:I

    .line 169
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    if-nez p2, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, p2

    .line 170
    :goto_1
    div-int v7, p1, v7

    .line 172
    iget v8, p0, Lcom/google/android/material/bottomnavigation/b;->d:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/2addr p2, v7

    sub-int/2addr p1, p2

    move p2, p1

    move p1, v6

    :goto_2
    if-ge p1, v0, :cond_a

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_4

    .line 177
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/b;->y:[I

    iget v9, p0, Lcom/google/android/material/bottomnavigation/b;->p:I

    if-ne p1, v9, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v7

    :goto_3
    aput v9, v8, p1

    if-lez p2, :cond_5

    .line 182
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/b;->y:[I

    aget v9, v8, p1

    add-int/2addr v9, v5

    aput v9, v8, p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    .line 186
    :cond_4
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/b;->y:[I

    aput v6, v8, p1

    :cond_5
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, p2

    .line 190
    :goto_5
    div-int v3, p1, v3

    .line 191
    iget v7, p0, Lcom/google/android/material/bottomnavigation/b;->f:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/2addr p2, v3

    sub-int/2addr p1, p2

    move p2, p1

    move p1, v6

    :goto_6
    if-ge p1, v0, :cond_a

    .line 194
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 195
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/b;->y:[I

    aput v3, v7, p1

    if-lez p2, :cond_9

    .line 197
    aget v8, v7, p1

    add-int/2addr v8, v5

    aput v8, v7, p1

    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 201
    :cond_8
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/b;->y:[I

    aput v6, v7, p1

    :cond_9
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_a
    move p1, v6

    move p2, p1

    :goto_8
    if-ge p1, v0, :cond_c

    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_b

    goto :goto_9

    .line 212
    :cond_b
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/b;->y:[I

    aget v5, v5, p1

    .line 213
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 212
    invoke-virtual {v3, v5, v1}, Landroid/view/View;->measure(II)V

    .line 214
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 215
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 216
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 220
    :cond_c
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 219
    invoke-static {p2, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/bottomnavigation/b;->h:I

    .line 221
    invoke-static {p2, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/b;->setMeasuredDimension(II)V

    return-void
.end method

.method setBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)V"
        }
    .end annotation

    .line 667
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->z:Landroid/util/SparseArray;

    .line 668
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 669
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 670
    invoke-virtual {v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 267
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->q:Landroid/content/res/ColorStateList;

    .line 268
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 269
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 270
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 419
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->w:Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 421
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 422
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    .line 394
    iput p1, p0, Lcom/google/android/material/bottomnavigation/b;->x:I

    .line 395
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 396
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 397
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    .line 478
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/b;->l:Z

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    .line 293
    iput p1, p0, Lcom/google/android/material/bottomnavigation/b;->r:I

    .line 294
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 295
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 296
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    .line 365
    iput p1, p0, Lcom/google/android/material/bottomnavigation/b;->v:I

    .line 366
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 367
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 368
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceActive(I)V

    .line 371
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->s:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 372
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    .line 336
    iput p1, p0, Lcom/google/android/material/bottomnavigation/b;->u:I

    .line 337
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 338
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 339
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    .line 342
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/b;->s:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 313
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->s:Landroid/content/res/ColorStateList;

    .line 314
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/b;->n:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 315
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 316
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/google/android/material/bottomnavigation/b;->m:I

    return-void
.end method

.method public setPresenter(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/b;->A:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    return-void
.end method

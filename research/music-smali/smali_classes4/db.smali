.class public Ldb;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Lfz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldb$g;,
        Ldb$b;,
        Ldb$c;,
        Ldb$a;,
        Ldb$f;,
        Ldb$e;,
        Ldb$d;,
        Ldb$h;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:F

.field F:I

.field G:I

.field H:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcj;",
            ">;"
        }
    .end annotation
.end field

.field I:Landroid/graphics/Rect;

.field J:Ldb$h;

.field K:Ldb$c;

.field L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:J

.field private S:F

.field private T:J

.field private U:Z

.field private V:Ldb$g;

.field private W:F

.field private aA:Landroid/graphics/RectF;

.field private aB:Landroid/view/View;

.field private aC:Landroid/graphics/Matrix;

.field private aa:F

.field private ab:Z

.field private ac:Lcg;

.field private ad:Ldb$a;

.field private ae:Lcm;

.field private af:Z

.field private ag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcy;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcy;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcy;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ldb$g;",
            ">;"
        }
    .end annotation
.end field

.field private ak:I

.field private al:J

.field private am:F

.field private an:I

.field private ao:F

.field private ap:Lao;

.field private aq:Z

.field private ar:Ldb$f;

.field private as:Ljava/lang/Runnable;

.field private at:[I

.field private au:Z

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:Z

.field private az:Z

.field b:Ldd;

.field c:Landroid/view/animation/Interpolator;

.field d:Landroid/view/animation/Interpolator;

.field e:F

.field f:I

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcx;",
            ">;"
        }
    .end annotation
.end field

.field h:F

.field i:F

.field j:F

.field k:Z

.field l:I

.field m:Ldb$b;

.field n:I

.field o:I

.field p:I

.field q:I

.field r:Z

.field s:F

.field t:F

.field u:J

.field v:F

.field w:Z

.field protected x:Z

.field y:I

.field z:I


# direct methods
.method private a(Lbf;)Landroid/graphics/Rect;
    .locals 3

    .line 2870
    iget-object v0, p0, Ldb;->I:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lbf;->E()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2871
    iget-object v0, p0, Ldb;->I:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lbf;->D()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2872
    iget-object v0, p0, Ldb;->I:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lbf;->F()I

    move-result v1

    iget-object v2, p0, Ldb;->I:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2873
    iget-object v0, p0, Ldb;->I:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lbf;->G()I

    move-result p1

    iget-object v1, p0, Ldb;->I:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2874
    iget-object p1, p0, Ldb;->I:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic a(Ldb;Lbf;)Landroid/graphics/Rect;
    .locals 0

    .line 995
    invoke-direct {p0, p1}, Ldb;->a(Lbf;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ldb;)Ldb$f;
    .locals 0

    .line 995
    iget-object p0, p0, Ldb;->ar:Ldb$f;

    return-object p0
.end method

.method static synthetic a(Ldb;IIIIZZ)V
    .locals 0

    .line 995
    invoke-virtual/range {p0 .. p6}, Ldb;->resolveMeasuredDimension(IIIIZZ)V

    return-void
.end method

.method static synthetic a(Ldb;Lbg;III)V
    .locals 0

    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Ldb;->resolveSystem(Lbg;III)V

    return-void
.end method

.method static synthetic a(Ldb;ZLandroid/view/View;Lbf;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 0

    .line 995
    invoke-virtual/range {p0 .. p5}, Ldb;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Lbf;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    return-void
.end method

.method private static a(FFF)Z
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v1, :cond_1

    div-float v0, p0, p2

    mul-float/2addr p0, v0

    mul-float/2addr p2, v0

    mul-float/2addr p2, v0

    div-float/2addr p2, v4

    sub-float/2addr p0, p2

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    neg-float v1, p0

    div-float/2addr v1, p2

    mul-float/2addr p0, v1

    mul-float/2addr p2, v1

    mul-float/2addr p2, v1

    div-float/2addr p2, v4

    add-float/2addr p0, p2

    add-float/2addr p1, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 4048
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4049
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 4050
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 4052
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4053
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, p2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {p0, v4, v5, v3, p4}, Ldb;->a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 4061
    iget-object v2, p0, Ldb;->aA:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4063
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ldb;->aA:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    neg-float p1, p1

    neg-float p2, p2

    .line 4064
    invoke-direct {p0, p3, p4, p1, p2}, Ldb;->a(Landroid/view/View;Landroid/view/MotionEvent;FF)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 4010
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 4012
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4013
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4014
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    neg-float p3, p3

    neg-float p4, p4

    .line 4015
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return p1

    .line 4020
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    .line 4022
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4024
    iget-object p3, p0, Ldb;->aC:Landroid/graphics/Matrix;

    if-nez p3, :cond_1

    .line 4025
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Ldb;->aC:Landroid/graphics/Matrix;

    .line 4027
    :cond_1
    iget-object p3, p0, Ldb;->aC:Landroid/graphics/Matrix;

    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 4028
    iget-object p3, p0, Ldb;->aC:Landroid/graphics/Matrix;

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 4030
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 4032
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    return p1
.end method

.method static synthetic b(Ldb;)I
    .locals 0

    .line 995
    iget p0, p0, Ldb;->N:I

    return p0
.end method

.method static synthetic b(Ldb;Lbg;III)V
    .locals 0

    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Ldb;->resolveSystem(Lbg;III)V

    return-void
.end method

.method static synthetic c(Ldb;)I
    .locals 0

    .line 995
    iget p0, p0, Ldb;->M:I

    return p0
.end method

.method static synthetic c(Ldb;Lbg;III)V
    .locals 0

    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Ldb;->resolveSystem(Lbg;III)V

    return-void
.end method

.method static synthetic d(Ldb;)Lbg;
    .locals 0

    .line 995
    iget-object p0, p0, Ldb;->mLayoutWidget:Lbg;

    return-object p0
.end method

.method static synthetic d(Ldb;Lbg;III)V
    .locals 0

    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Ldb;->resolveSystem(Lbg;III)V

    return-void
.end method

.method static synthetic e(Ldb;)Lbg;
    .locals 0

    .line 995
    iget-object p0, p0, Ldb;->mLayoutWidget:Lbg;

    return-object p0
.end method

.method static synthetic e(Ldb;Lbg;III)V
    .locals 0

    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Ldb;->resolveSystem(Lbg;III)V

    return-void
.end method

.method static synthetic f(Ldb;)Lbg;
    .locals 0

    .line 995
    iget-object p0, p0, Ldb;->mLayoutWidget:Lbg;

    return-object p0
.end method

.method static synthetic g(Ldb;)Lbg;
    .locals 0

    .line 995
    iget-object p0, p0, Ldb;->mLayoutWidget:Lbg;

    return-object p0
.end method

.method static synthetic h(Ldb;)Z
    .locals 0

    .line 995
    invoke-virtual {p0}, Ldb;->isRtl()Z

    move-result p0

    return p0
.end method

.method private i()V
    .locals 15

    .line 1765
    invoke-virtual {p0}, Ldb;->getChildCount()I

    move-result v0

    .line 1767
    iget-object v1, p0, Ldb;->K:Ldb$c;

    invoke-virtual {v1}, Ldb$c;->b()V

    const/4 v1, 0x1

    .line 1768
    iput-boolean v1, p0, Ldb;->k:Z

    .line 1769
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 1771
    invoke-virtual {p0, v4}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1772
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    iget-object v7, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcx;

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1774
    :cond_0
    invoke-virtual {p0}, Ldb;->getWidth()I

    move-result v2

    .line 1775
    invoke-virtual {p0}, Ldb;->getHeight()I

    move-result v4

    .line 1776
    iget-object v5, p0, Ldb;->b:Ldd;

    invoke-virtual {v5}, Ldd;->h()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_2

    .line 1779
    iget-object v8, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcx;

    if-eqz v8, :cond_1

    .line 1781
    invoke-virtual {v8, v5}, Lcx;->b(I)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1786
    :cond_2
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1787
    iget-object v5, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v12, v5, [I

    move v5, v3

    move v13, v5

    :goto_2
    if-ge v5, v0, :cond_4

    .line 1790
    invoke-virtual {p0, v5}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1791
    iget-object v8, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcx;

    .line 1792
    invoke-virtual {v7}, Lcx;->c()I

    move-result v8

    if-eq v8, v6, :cond_3

    .line 1793
    invoke-virtual {v7}, Lcx;->c()I

    move-result v8

    invoke-virtual {v11, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v8, v13, 0x1

    .line 1794
    invoke-virtual {v7}, Lcx;->c()I

    move-result v7

    aput v7, v12, v13

    move v13, v8

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1797
    :cond_4
    iget-object v5, p0, Ldb;->ai:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    move v5, v3

    :goto_3
    if-ge v5, v13, :cond_6

    .line 1799
    iget-object v6, p0, Ldb;->g:Ljava/util/HashMap;

    aget v7, v12, v5

    invoke-virtual {p0, v7}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcx;

    if-nez v6, :cond_5

    goto :goto_4

    .line 1803
    :cond_5
    iget-object v7, p0, Ldb;->b:Ldd;

    invoke-virtual {v7, v6}, Ldd;->a(Lcx;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1806
    :cond_6
    iget-object v5, p0, Ldb;->ai:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcy;

    .line 1807
    iget-object v7, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v7}, Lcy;->a(Ldb;Ljava/util/HashMap;)V

    goto :goto_5

    :cond_7
    move v14, v3

    :goto_6
    if-ge v14, v13, :cond_b

    .line 1810
    iget-object v5, p0, Ldb;->g:Ljava/util/HashMap;

    aget v6, v12, v14

    invoke-virtual {p0, v6}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcx;

    if-nez v5, :cond_8

    goto :goto_7

    .line 1814
    :cond_8
    iget v8, p0, Ldb;->S:F

    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v9

    move v6, v2

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Lcx;->a(IIFJ)V

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_9
    move v14, v3

    :goto_8
    if-ge v14, v13, :cond_b

    .line 1819
    iget-object v5, p0, Ldb;->g:Ljava/util/HashMap;

    aget v6, v12, v14

    invoke-virtual {p0, v6}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcx;

    if-nez v5, :cond_a

    goto :goto_9

    .line 1823
    :cond_a
    iget-object v6, p0, Ldb;->b:Ldd;

    invoke-virtual {v6, v5}, Ldd;->a(Lcx;)V

    .line 1824
    iget v8, p0, Ldb;->S:F

    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v9

    move v6, v2

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Lcx;->a(IIFJ)V

    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_b
    move v12, v3

    :goto_a
    if-ge v12, v0, :cond_e

    .line 1830
    invoke-virtual {p0, v12}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1831
    iget-object v6, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcx;

    .line 1832
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_b

    :cond_c
    if-eqz v6, :cond_d

    .line 1837
    iget-object v5, p0, Ldb;->b:Ldd;

    invoke-virtual {v5, v6}, Ldd;->a(Lcx;)V

    .line 1838
    iget v8, p0, Ldb;->S:F

    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v9

    move-object v5, v6

    move v6, v2

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Lcx;->a(IIFJ)V

    :cond_d
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 1842
    :cond_e
    iget-object v2, p0, Ldb;->b:Ldd;

    invoke-virtual {v2}, Ldd;->i()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_19

    float-to-double v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_f

    move v4, v1

    goto :goto_c

    :cond_f
    move v4, v3

    .line 1846
    :goto_c
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v5, -0x800001

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v7, v3

    move v9, v5

    move v8, v6

    :goto_d
    if-ge v7, v0, :cond_12

    .line 1849
    iget-object v10, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v7}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcx;

    .line 1850
    iget v11, v10, Lcx;->f:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_f

    .line 1854
    :cond_10
    invoke-virtual {v10}, Lcx;->a()F

    move-result v11

    .line 1855
    invoke-virtual {v10}, Lcx;->b()F

    move-result v10

    if-eqz v4, :cond_11

    sub-float/2addr v10, v11

    goto :goto_e

    :cond_11
    add-float/2addr v10, v11

    .line 1857
    :goto_e
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1858
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_12
    move v1, v3

    :goto_f
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_17

    move v1, v3

    :goto_10
    if-ge v1, v0, :cond_14

    .line 1865
    iget-object v8, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcx;

    .line 1866
    iget v9, v8, Lcx;->f:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1867
    iget v9, v8, Lcx;->f:F

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1868
    iget v8, v8, Lcx;->f:F

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_14
    :goto_11
    if-ge v3, v0, :cond_19

    .line 1872
    iget-object v1, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx;

    .line 1873
    iget v8, v1, Lcx;->f:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_16

    sub-float v8, v7, v2

    div-float v8, v7, v8

    .line 1875
    iput v8, v1, Lcx;->h:F

    if-eqz v4, :cond_15

    .line 1877
    iget v8, v1, Lcx;->f:F

    sub-float v8, v5, v8

    sub-float v9, v5, v6

    div-float/2addr v8, v9

    mul-float/2addr v8, v2

    sub-float v8, v2, v8

    iput v8, v1, Lcx;->g:F

    goto :goto_12

    .line 1879
    :cond_15
    iget v8, v1, Lcx;->f:F

    sub-float/2addr v8, v6

    mul-float/2addr v8, v2

    sub-float v9, v5, v6

    div-float/2addr v8, v9

    sub-float v8, v2, v8

    iput v8, v1, Lcx;->g:F

    :cond_16
    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_17
    :goto_13
    if-ge v3, v0, :cond_19

    .line 1885
    iget-object v1, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx;

    .line 1886
    invoke-virtual {v1}, Lcx;->a()F

    move-result v5

    .line 1887
    invoke-virtual {v1}, Lcx;->b()F

    move-result v6

    if-eqz v4, :cond_18

    sub-float/2addr v6, v5

    goto :goto_14

    :cond_18
    add-float/2addr v6, v5

    :goto_14
    sub-float v5, v7, v2

    div-float v5, v7, v5

    .line 1889
    iput v5, v1, Lcx;->h:F

    sub-float/2addr v6, v8

    mul-float/2addr v6, v2

    sub-float v5, v9, v8

    div-float/2addr v6, v5

    sub-float v5, v2, v6

    .line 1890
    iput v5, v1, Lcx;->g:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_19
    return-void
.end method

.method static synthetic i(Ldb;)Z
    .locals 0

    .line 995
    invoke-virtual {p0}, Ldb;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Ldb;)I
    .locals 0

    .line 995
    iget p0, p0, Ldb;->O:I

    return p0
.end method

.method private j()V
    .locals 4

    .line 2118
    invoke-virtual {p0}, Ldb;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2120
    invoke-virtual {p0, v1}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2121
    iget-object v3, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcx;

    if-nez v3, :cond_0

    goto :goto_1

    .line 2125
    :cond_0
    invoke-virtual {v3, v2}, Lcx;->b(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic k(Ldb;)I
    .locals 0

    .line 995
    iget p0, p0, Ldb;->P:I

    return p0
.end method

.method private k()V
    .locals 14

    .line 3533
    iget v0, p0, Ldb;->j:F

    iget v1, p0, Ldb;->i:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 3534
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v1

    .line 3537
    iget-object v3, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    instance-of v3, v3, Lcg;

    const v4, 0x3089705f    # 1.0E-9f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 3538
    iget-wide v6, p0, Ldb;->T:J

    sub-long v6, v1, v6

    long-to-float v3, v6

    mul-float/2addr v3, v0

    mul-float/2addr v3, v4

    iget v6, p0, Ldb;->S:F

    div-float/2addr v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    .line 3540
    :goto_0
    iget v6, p0, Ldb;->i:F

    add-float/2addr v6, v3

    .line 3543
    iget-boolean v3, p0, Ldb;->U:Z

    if-eqz v3, :cond_1

    .line 3544
    iget v6, p0, Ldb;->j:F

    :cond_1
    cmpl-float v3, v0, v5

    const/4 v7, 0x0

    if-lez v3, :cond_2

    .line 3547
    iget v8, p0, Ldb;->j:F

    cmpl-float v8, v6, v8

    if-gez v8, :cond_3

    :cond_2
    cmpg-float v8, v0, v5

    if-gtz v8, :cond_4

    iget v8, p0, Ldb;->j:F

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_4

    .line 3549
    :cond_3
    iget v6, p0, Ldb;->j:F

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    move v8, v7

    .line 3552
    :goto_1
    iget-object v9, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    if-eqz v9, :cond_6

    if-nez v8, :cond_6

    .line 3553
    iget-boolean v8, p0, Ldb;->ab:Z

    if-eqz v8, :cond_5

    .line 3554
    iget-wide v10, p0, Ldb;->R:J

    sub-long/2addr v1, v10

    long-to-float v1, v1

    mul-float/2addr v1, v4

    .line 3555
    invoke-interface {v9, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_2

    .line 3557
    :cond_5
    invoke-interface {v9, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    :cond_6
    :goto_2
    if-lez v3, :cond_7

    .line 3560
    iget v1, p0, Ldb;->j:F

    cmpl-float v1, v6, v1

    if-gez v1, :cond_8

    :cond_7
    cmpg-float v0, v0, v5

    if-gtz v0, :cond_9

    iget v0, p0, Ldb;->j:F

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_9

    .line 3562
    :cond_8
    iget v6, p0, Ldb;->j:F

    .line 3564
    :cond_9
    iput v6, p0, Ldb;->E:F

    .line 3565
    invoke-virtual {p0}, Ldb;->getChildCount()I

    move-result v0

    .line 3566
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v1

    .line 3567
    iget-object v3, p0, Ldb;->d:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v3, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    :goto_3
    if-ge v7, v0, :cond_c

    .line 3569
    invoke-virtual {p0, v7}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3570
    iget-object v3, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcx;

    if-eqz v8, :cond_b

    .line 3572
    iget-object v13, p0, Ldb;->ap:Lao;

    move v10, v6

    move-wide v11, v1

    invoke-virtual/range {v8 .. v13}, Lcx;->a(Landroid/view/View;FJLao;)Z

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3575
    :cond_c
    iget-boolean v0, p0, Ldb;->x:Z

    if-eqz v0, :cond_d

    .line 3576
    invoke-virtual {p0}, Ldb;->requestLayout()V

    :cond_d
    return-void
.end method

.method private l()V
    .locals 6

    .line 4387
    iget-object v0, p0, Ldb;->V:Ldb$g;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4388
    :cond_0
    iget v0, p0, Ldb;->ao:F

    iget v1, p0, Ldb;->h:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 4389
    iget v0, p0, Ldb;->an:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 4390
    iget-object v0, p0, Ldb;->V:Ldb$g;

    if-eqz v0, :cond_1

    .line 4391
    iget v3, p0, Ldb;->M:I

    iget v4, p0, Ldb;->N:I

    invoke-interface {v0, p0, v3, v4}, Ldb$g;->a(Ldb;II)V

    .line 4393
    :cond_1
    iget-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 4394
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldb$g;

    .line 4395
    iget v4, p0, Ldb;->M:I

    iget v5, p0, Ldb;->N:I

    invoke-interface {v3, p0, v4, v5}, Ldb$g;->a(Ldb;II)V

    goto :goto_0

    .line 4398
    :cond_2
    iput-boolean v1, p0, Ldb;->w:Z

    .line 4400
    :cond_3
    iput v2, p0, Ldb;->an:I

    .line 4401
    iget v0, p0, Ldb;->h:F

    iput v0, p0, Ldb;->ao:F

    .line 4402
    iget-object v2, p0, Ldb;->V:Ldb$g;

    if-eqz v2, :cond_4

    .line 4403
    iget v3, p0, Ldb;->M:I

    iget v4, p0, Ldb;->N:I

    invoke-interface {v2, p0, v3, v4, v0}, Ldb$g;->a(Ldb;IIF)V

    .line 4405
    :cond_4
    iget-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 4406
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldb$g;

    .line 4407
    iget v3, p0, Ldb;->M:I

    iget v4, p0, Ldb;->N:I

    iget v5, p0, Ldb;->h:F

    invoke-interface {v2, p0, v3, v4, v5}, Ldb$g;->a(Ldb;IIF)V

    goto :goto_1

    .line 4410
    :cond_5
    iput-boolean v1, p0, Ldb;->w:Z

    :cond_6
    return-void
.end method

.method static synthetic l(Ldb;)V
    .locals 0

    .line 995
    invoke-direct {p0}, Ldb;->i()V

    return-void
.end method

.method private m()V
    .locals 5

    .line 4446
    iget-object v0, p0, Ldb;->V:Ldb$g;

    if-nez v0, :cond_1

    iget-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4449
    iput-boolean v0, p0, Ldb;->w:Z

    .line 4450
    iget-object v0, p0, Ldb;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4451
    iget-object v2, p0, Ldb;->V:Ldb$g;

    if-eqz v2, :cond_3

    .line 4452
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Ldb$g;->a(Ldb;I)V

    .line 4454
    :cond_3
    iget-object v2, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_2

    .line 4455
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldb$g;

    .line 4456
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Ldb$g;->a(Ldb;I)V

    goto :goto_0

    .line 4460
    :cond_4
    iget-object v0, p0, Ldb;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic m(Ldb;)Z
    .locals 0

    .line 995
    iget-boolean p0, p0, Ldb;->au:Z

    return p0
.end method

.method static synthetic n(Ldb;)I
    .locals 0

    .line 995
    iget p0, p0, Ldb;->av:I

    return p0
.end method

.method static synthetic o(Ldb;)I
    .locals 0

    .line 995
    iget p0, p0, Ldb;->aw:I

    return p0
.end method


# virtual methods
.method a(I)Lcx;
    .locals 1

    .line 1104
    iget-object v0, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcx;

    return-object p1
.end method

.method protected a()Ldb$d;
    .locals 1

    .line 1147
    invoke-static {}, Ldb$e;->d()Ldb$e;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .locals 3

    .line 2086
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_0

    return-void

    .line 2090
    :cond_0
    iget v0, p0, Ldb;->i:F

    iget v1, p0, Ldb;->h:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldb;->U:Z

    if-eqz v0, :cond_1

    .line 2093
    iput v1, p0, Ldb;->i:F

    .line 2096
    :cond_1
    iget v0, p0, Ldb;->i:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 2099
    iput-boolean v1, p0, Ldb;->ab:Z

    .line 2101
    iput p1, p0, Ldb;->j:F

    .line 2102
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->g()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    iput p1, p0, Ldb;->S:F

    .line 2103
    iget p1, p0, Ldb;->j:F

    invoke-virtual {p0, p1}, Ldb;->setProgress(F)V

    const/4 p1, 0x0

    .line 2104
    iput-object p1, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    .line 2105
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->f()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Ldb;->d:Landroid/view/animation/Interpolator;

    .line 2106
    iput-boolean v1, p0, Ldb;->U:Z

    .line 2107
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Ldb;->R:J

    const/4 p1, 0x1

    .line 2108
    iput-boolean p1, p0, Ldb;->k:Z

    .line 2109
    iput v0, p0, Ldb;->h:F

    .line 2113
    iput v0, p0, Ldb;->i:F

    .line 2114
    invoke-virtual {p0}, Ldb;->invalidate()V

    return-void
.end method

.method public a(FF)V
    .locals 2

    .line 1582
    invoke-virtual {p0}, Ldb;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1583
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    if-nez v0, :cond_0

    .line 1584
    new-instance v0, Ldb$f;

    invoke-direct {v0, p0}, Ldb$f;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->ar:Ldb$f;

    .line 1586
    :cond_0
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0, p1}, Ldb$f;->a(F)V

    .line 1587
    iget-object p1, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {p1, p2}, Ldb$f;->b(F)V

    return-void

    .line 1590
    :cond_1
    invoke-virtual {p0, p1}, Ldb;->setProgress(F)V

    .line 1591
    sget-object v0, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    .line 1592
    iput p2, p0, Ldb;->e:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    if-lez p2, :cond_2

    move v0, v1

    .line 1594
    :cond_2
    invoke-virtual {p0, v0}, Ldb;->a(F)V

    goto :goto_0

    :cond_3
    cmpl-float p2, p1, v0

    if-eqz p2, :cond_5

    cmpl-float p2, p1, v1

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    move v0, v1

    .line 1596
    :cond_4
    invoke-virtual {p0, v0}, Ldb;->a(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(IFF)V
    .locals 9

    .line 1915
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_0

    return-void

    .line 1918
    :cond_0
    iget v0, p0, Ldb;->i:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1922
    iput-boolean v0, p0, Ldb;->ab:Z

    .line 1923
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Ldb;->R:J

    .line 1924
    iget-object v1, p0, Ldb;->b:Ldd;

    invoke-virtual {v1}, Ldd;->g()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iput v1, p0, Ldb;->S:F

    .line 1926
    iput p2, p0, Ldb;->j:F

    .line 1927
    iput-boolean v0, p0, Ldb;->k:Z

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1966
    :pswitch_0
    iget p1, p0, Ldb;->i:F

    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0}, Ldd;->j()F

    move-result v0

    invoke-static {p3, p1, v0}, Ldb;->a(FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1967
    iget-object p1, p0, Ldb;->ad:Ldb$a;

    iget p2, p0, Ldb;->i:F

    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0}, Ldd;->j()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Ldb$a;->a(FFF)V

    .line 1968
    iget-object p1, p0, Ldb;->ad:Ldb$a;

    iput-object p1, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    goto/16 :goto_3

    .line 1970
    :cond_2
    iget-object v2, p0, Ldb;->ac:Lcg;

    iget v3, p0, Ldb;->i:F

    iget v6, p0, Ldb;->S:F

    iget-object p1, p0, Ldb;->b:Ldd;

    .line 1971
    invoke-virtual {p1}, Ldd;->j()F

    move-result v7

    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->k()F

    move-result v8

    move v4, p2

    move v5, p3

    .line 1970
    invoke-virtual/range {v2 .. v8}, Lcg;->a(FFFFFF)V

    .line 1972
    iput v1, p0, Ldb;->e:F

    .line 1973
    iget p1, p0, Ldb;->f:I

    .line 1974
    iput p2, p0, Ldb;->j:F

    .line 1975
    iput p1, p0, Ldb;->f:I

    .line 1976
    iget-object p1, p0, Ldb;->ac:Lcg;

    iput-object p1, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    goto/16 :goto_3

    .line 1961
    :pswitch_1
    iget-object p1, p0, Ldb;->ad:Ldb$a;

    iget p2, p0, Ldb;->i:F

    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0}, Ldd;->j()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Ldb$a;->a(FFF)V

    .line 1962
    iget-object p1, p0, Ldb;->ad:Ldb$a;

    iput-object p1, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    goto :goto_3

    :pswitch_2
    if-eq p1, v0, :cond_5

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    :goto_0
    move p2, v1

    .line 1941
    :cond_6
    :goto_1
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->q()I

    move-result p1

    if-nez p1, :cond_7

    .line 1942
    iget-object v0, p0, Ldb;->ac:Lcg;

    iget v1, p0, Ldb;->i:F

    iget v4, p0, Ldb;->S:F

    iget-object p1, p0, Ldb;->b:Ldd;

    .line 1943
    invoke-virtual {p1}, Ldd;->j()F

    move-result v5

    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->k()F

    move-result v6

    move v2, p2

    move v3, p3

    .line 1942
    invoke-virtual/range {v0 .. v6}, Lcg;->a(FFFFFF)V

    goto :goto_2

    .line 1945
    :cond_7
    iget-object v0, p0, Ldb;->ac:Lcg;

    iget v1, p0, Ldb;->i:F

    iget-object p1, p0, Ldb;->b:Ldd;

    .line 1946
    invoke-virtual {p1}, Ldd;->m()F

    move-result v4

    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->l()F

    move-result v5

    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->n()F

    move-result v6

    iget-object p1, p0, Ldb;->b:Ldd;

    .line 1947
    invoke-virtual {p1}, Ldd;->o()F

    move-result v7

    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->p()I

    move-result v8

    move v2, p2

    move v3, p3

    .line 1945
    invoke-virtual/range {v0 .. v8}, Lcg;->a(FFFFFFFI)V

    .line 1950
    :goto_2
    iget p1, p0, Ldb;->f:I

    .line 1951
    iput p2, p0, Ldb;->j:F

    .line 1952
    iput p1, p0, Ldb;->f:I

    .line 1953
    iget-object p1, p0, Ldb;->ac:Lcg;

    iput-object p1, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    :goto_3
    :pswitch_3
    const/4 p1, 0x0

    .line 1982
    iput-boolean p1, p0, Ldb;->U:Z

    .line 1983
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Ldb;->R:J

    .line 1984
    invoke-virtual {p0}, Ldb;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method a(IFFF[F)V
    .locals 2

    .line 4248
    iget-object v0, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ldb;->getViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx;

    if-eqz v0, :cond_0

    .line 4253
    invoke-virtual {v0, p2, p3, p4, p5}, Lcx;->a(FFF[F)V

    .line 4254
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    .line 4255
    iget p3, p0, Ldb;->W:F

    sub-float p3, p2, p3

    .line 4256
    iget p4, p0, Ldb;->aa:F

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    .line 4262
    iput p2, p0, Ldb;->W:F

    .line 4263
    iput p1, p0, Ldb;->aa:F

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 4265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4266
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 4267
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WARNING could not find view id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionLayout"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 1330
    invoke-virtual {p0}, Ldb;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1331
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    if-nez v0, :cond_0

    .line 1332
    new-instance v0, Ldb$f;

    invoke-direct {v0, p0}, Ldb$f;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->ar:Ldb$f;

    .line 1334
    :cond_0
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0, p1}, Ldb$f;->b(I)V

    .line 1335
    iget-object p1, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {p1, p2}, Ldb$f;->a(I)V

    return-void

    .line 1339
    :cond_1
    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_2

    .line 1340
    iput p1, p0, Ldb;->M:I

    .line 1341
    iput p2, p0, Ldb;->N:I

    .line 1347
    invoke-virtual {v0, p1, p2}, Ldd;->a(II)V

    .line 1348
    iget-object v0, p0, Ldb;->K:Ldb$c;

    iget-object v1, p0, Ldb;->mLayoutWidget:Lbg;

    iget-object v2, p0, Ldb;->b:Ldd;

    invoke-virtual {v2, p1}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    iget-object v2, p0, Ldb;->b:Ldd;

    invoke-virtual {v2, p2}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 1349
    invoke-virtual {p0}, Ldb;->f()V

    const/4 p1, 0x0

    .line 1350
    iput p1, p0, Ldb;->i:F

    .line 1351
    invoke-virtual {p0}, Ldb;->b()V

    :cond_2
    return-void
.end method

.method public a(III)V
    .locals 1

    const/4 v0, -0x1

    .line 2205
    invoke-virtual {p0, p1, p2, p3, v0}, Ldb;->a(IIII)V

    return-void
.end method

.method public a(IIII)V
    .locals 10

    .line 2295
    iget-object v0, p0, Ldb;->b:Ldd;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Ldd;->a:Landroidx/constraintlayout/widget/j;

    if-eqz v0, :cond_0

    .line 2296
    iget-object v0, p0, Ldb;->b:Ldd;

    iget-object v0, v0, Ldd;->a:Landroidx/constraintlayout/widget/j;

    iget v2, p0, Ldb;->f:I

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v2, p1, p2, p3}, Landroidx/constraintlayout/widget/j;->a(IIFF)I

    move-result p2

    if-eq p2, v1, :cond_0

    move p1, p2

    .line 2307
    :cond_0
    iget p2, p0, Ldb;->f:I

    if-ne p2, p1, :cond_1

    return-void

    .line 2310
    :cond_1
    iget p3, p0, Ldb;->M:I

    const/high16 v0, 0x447a0000    # 1000.0f

    const/4 v2, 0x0

    if-ne p3, p1, :cond_3

    .line 2311
    invoke-virtual {p0, v2}, Ldb;->a(F)V

    if-lez p4, :cond_2

    int-to-float p1, p4

    div-float/2addr p1, v0

    .line 2313
    iput p1, p0, Ldb;->S:F

    :cond_2
    return-void

    .line 2317
    :cond_3
    iget p3, p0, Ldb;->N:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p3, p1, :cond_5

    .line 2318
    invoke-virtual {p0, v3}, Ldb;->a(F)V

    if-lez p4, :cond_4

    int-to-float p1, p4

    div-float/2addr p1, v0

    .line 2320
    iput p1, p0, Ldb;->S:F

    :cond_4
    return-void

    .line 2324
    :cond_5
    iput p1, p0, Ldb;->N:I

    if-eq p2, v1, :cond_7

    .line 2333
    invoke-virtual {p0, p2, p1}, Ldb;->a(II)V

    .line 2335
    invoke-virtual {p0, v3}, Ldb;->a(F)V

    .line 2337
    iput v2, p0, Ldb;->i:F

    .line 2338
    invoke-virtual {p0}, Ldb;->c()V

    if-lez p4, :cond_6

    int-to-float p1, p4

    div-float/2addr p1, v0

    .line 2340
    iput p1, p0, Ldb;->S:F

    :cond_6
    return-void

    :cond_7
    const/4 p2, 0x0

    .line 2350
    iput-boolean p2, p0, Ldb;->ab:Z

    .line 2351
    iput v3, p0, Ldb;->j:F

    .line 2352
    iput v2, p0, Ldb;->h:F

    .line 2353
    iput v2, p0, Ldb;->i:F

    .line 2354
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Ldb;->T:J

    .line 2355
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Ldb;->R:J

    .line 2356
    iput-boolean p2, p0, Ldb;->U:Z

    const/4 p3, 0x0

    .line 2357
    iput-object p3, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    if-ne p4, v1, :cond_8

    .line 2359
    iget-object v4, p0, Ldb;->b:Ldd;

    invoke-virtual {v4}, Ldd;->g()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    iput v4, p0, Ldb;->S:F

    .line 2361
    :cond_8
    iput v1, p0, Ldb;->M:I

    .line 2362
    iget-object v1, p0, Ldb;->b:Ldd;

    iget v4, p0, Ldb;->M:I

    iget v5, p0, Ldb;->N:I

    invoke-virtual {v1, v4, v5}, Ldd;->a(II)V

    .line 2363
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    if-nez p4, :cond_9

    .line 2365
    iget-object p4, p0, Ldb;->b:Ldd;

    invoke-virtual {p4}, Ldd;->g()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v0

    iput p4, p0, Ldb;->S:F

    goto :goto_0

    :cond_9
    if-lez p4, :cond_a

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 2367
    iput p4, p0, Ldb;->S:F

    .line 2370
    :cond_a
    :goto_0
    invoke-virtual {p0}, Ldb;->getChildCount()I

    move-result p4

    .line 2372
    iget-object v0, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, p2

    :goto_1
    if-ge v0, p4, :cond_b

    .line 2374
    invoke-virtual {p0, v0}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2375
    new-instance v5, Lcx;

    invoke-direct {v5, v4}, Lcx;-><init>(Landroid/view/View;)V

    .line 2376
    iget-object v6, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget-object v6, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcx;

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    const/4 v0, 0x1

    .line 2379
    iput-boolean v0, p0, Ldb;->k:Z

    .line 2381
    iget-object v1, p0, Ldb;->K:Ldb$c;

    iget-object v4, p0, Ldb;->mLayoutWidget:Lbg;

    iget-object v5, p0, Ldb;->b:Ldd;

    invoke-virtual {v5, p1}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    invoke-virtual {v1, v4, p3, p1}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 2382
    invoke-virtual {p0}, Ldb;->f()V

    .line 2383
    iget-object p1, p0, Ldb;->K:Ldb$c;

    invoke-virtual {p1}, Ldb$c;->b()V

    .line 2384
    invoke-direct {p0}, Ldb;->j()V

    .line 2385
    invoke-virtual {p0}, Ldb;->getWidth()I

    move-result p1

    .line 2386
    invoke-virtual {p0}, Ldb;->getHeight()I

    move-result p3

    .line 2389
    iget-object v1, p0, Ldb;->ai:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    move v1, p2

    :goto_2
    if-ge v1, p4, :cond_d

    .line 2391
    iget-object v4, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcx;

    if-nez v4, :cond_c

    goto :goto_3

    .line 2395
    :cond_c
    iget-object v5, p0, Ldb;->b:Ldd;

    invoke-virtual {v5, v4}, Ldd;->a(Lcx;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2398
    :cond_d
    iget-object v1, p0, Ldb;->ai:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcy;

    .line 2399
    iget-object v5, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v5}, Lcy;->a(Ldb;Ljava/util/HashMap;)V

    goto :goto_4

    :cond_e
    move v1, p2

    :goto_5
    if-ge v1, p4, :cond_12

    .line 2402
    iget-object v4, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcx;

    if-nez v4, :cond_f

    goto :goto_6

    .line 2406
    :cond_f
    iget v7, p0, Ldb;->S:F

    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v8

    move v5, p1

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Lcx;->a(IIFJ)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    move v1, p2

    :goto_7
    if-ge v1, p4, :cond_12

    .line 2410
    iget-object v4, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcx;

    if-nez v4, :cond_11

    goto :goto_8

    .line 2414
    :cond_11
    iget-object v5, p0, Ldb;->b:Ldd;

    invoke-virtual {v5, v4}, Ldd;->a(Lcx;)V

    .line 2415
    iget v7, p0, Ldb;->S:F

    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v8

    move v5, p1

    move v6, p3

    invoke-virtual/range {v4 .. v9}, Lcx;->a(IIFJ)V

    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2419
    :cond_12
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->i()F

    move-result p1

    cmpl-float p3, p1, v2

    if-eqz p3, :cond_14

    const p3, 0x7f7fffff    # Float.MAX_VALUE

    const v1, -0x800001

    move v4, v1

    move v1, p3

    move p3, p2

    :goto_9
    if-ge p3, p4, :cond_13

    .line 2423
    iget-object v5, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcx;

    .line 2424
    invoke-virtual {v5}, Lcx;->a()F

    move-result v6

    .line 2425
    invoke-virtual {v5}, Lcx;->b()F

    move-result v5

    add-float/2addr v5, v6

    .line 2426
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2427
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_13
    :goto_a
    if-ge p2, p4, :cond_14

    .line 2431
    iget-object p3, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcx;

    .line 2432
    invoke-virtual {p3}, Lcx;->a()F

    move-result v5

    .line 2433
    invoke-virtual {p3}, Lcx;->b()F

    move-result v6

    sub-float v7, v3, p1

    div-float v7, v3, v7

    .line 2434
    iput v7, p3, Lcx;->h:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v1

    mul-float/2addr v5, p1

    sub-float v6, v4, v1

    div-float/2addr v5, v6

    sub-float v5, p1, v5

    .line 2435
    iput v5, p3, Lcx;->g:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 2439
    :cond_14
    iput v2, p0, Ldb;->h:F

    .line 2440
    iput v2, p0, Ldb;->i:F

    .line 2441
    iput-boolean v0, p0, Ldb;->k:Z

    .line 2443
    invoke-virtual {p0}, Ldb;->invalidate()V

    return-void
.end method

.method public a(ILandroidx/constraintlayout/widget/d;)V
    .locals 1

    .line 4614
    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_0

    .line 4615
    invoke-virtual {v0, p1, p2}, Ldd;->a(ILandroidx/constraintlayout/widget/d;)V

    .line 4617
    :cond_0
    invoke-virtual {p0}, Ldb;->g()V

    .line 4618
    iget v0, p0, Ldb;->f:I

    if-ne v0, p1, :cond_1

    .line 4619
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    return-void
.end method

.method public a(IZF)V
    .locals 2

    .line 4376
    iget-object v0, p0, Ldb;->V:Ldb$g;

    if-eqz v0, :cond_0

    .line 4377
    invoke-interface {v0, p0, p1, p2, p3}, Ldb$g;->a(Ldb;IZF)V

    .line 4379
    :cond_0
    iget-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 4380
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldb$g;

    .line 4381
    invoke-interface {v1, p0, p1, p2, p3}, Ldb$g;->a(Ldb;IZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs a(I[Landroid/view/View;)V
    .locals 1

    .line 4819
    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_0

    .line 4820
    invoke-virtual {v0, p1, p2}, Ldd;->a(I[Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string p1, "MotionLayout"

    const-string p2, " no motionScene"

    .line 4822
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2156
    invoke-virtual {p0, v0}, Ldb;->a(F)V

    .line 2157
    iput-object p1, p0, Ldb;->as:Ljava/lang/Runnable;

    return-void
.end method

.method a(Z)V
    .locals 4

    .line 3581
    invoke-virtual {p0}, Ldb;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3583
    invoke-virtual {p0, v1}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3584
    iget-object v3, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcx;

    if-eqz v2, :cond_0

    .line 3586
    invoke-virtual {v2, p1}, Lcx;->a(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 2135
    invoke-virtual {p0, v0}, Ldb;->a(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 2167
    invoke-virtual {p0}, Ldb;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2168
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Ldb$f;

    invoke-direct {v0, p0}, Ldb$f;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->ar:Ldb$f;

    .line 2171
    :cond_0
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0, p1}, Ldb$f;->a(I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 2174
    invoke-virtual {p0, p1, v0, v0}, Ldb;->a(III)V

    return-void
.end method

.method b(Z)V
    .locals 23

    move-object/from16 v0, p0

    .line 3593
    iget-wide v1, v0, Ldb;->T:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3594
    invoke-virtual/range {p0 .. p0}, Ldb;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Ldb;->T:J

    .line 3596
    :cond_0
    iget v1, v0, Ldb;->i:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1

    .line 3597
    iput v4, v0, Ldb;->f:I

    .line 3601
    :cond_1
    iget-boolean v1, v0, Ldb;->af:Z

    const/4 v6, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, v0, Ldb;->k:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_3

    iget v1, v0, Ldb;->j:F

    iget v7, v0, Ldb;->i:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    const/4 v7, 0x1

    goto/16 :goto_d

    .line 3602
    :cond_3
    :goto_0
    iget v1, v0, Ldb;->j:F

    iget v7, v0, Ldb;->i:F

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 3603
    invoke-virtual/range {p0 .. p0}, Ldb;->getNanoTime()J

    move-result-wide v7

    .line 3606
    iget-object v9, v0, Ldb;->c:Landroid/view/animation/Interpolator;

    instance-of v9, v9, Lda;

    const v10, 0x3089705f    # 1.0E-9f

    if-nez v9, :cond_4

    .line 3607
    iget-wide v11, v0, Ldb;->T:J

    sub-long v11, v7, v11

    long-to-float v9, v11

    mul-float/2addr v9, v1

    mul-float/2addr v9, v10

    iget v11, v0, Ldb;->S:F

    div-float/2addr v9, v11

    goto :goto_1

    :cond_4
    move v9, v2

    .line 3609
    :goto_1
    iget v11, v0, Ldb;->i:F

    add-float/2addr v11, v9

    .line 3612
    iget-boolean v12, v0, Ldb;->U:Z

    if-eqz v12, :cond_5

    .line 3613
    iget v11, v0, Ldb;->j:F

    :cond_5
    cmpl-float v12, v1, v2

    if-lez v12, :cond_6

    .line 3616
    iget v13, v0, Ldb;->j:F

    cmpl-float v13, v11, v13

    if-gez v13, :cond_7

    :cond_6
    cmpg-float v13, v1, v2

    if-gtz v13, :cond_8

    iget v13, v0, Ldb;->j:F

    cmpg-float v13, v11, v13

    if-gtz v13, :cond_8

    .line 3618
    :cond_7
    iget v11, v0, Ldb;->j:F

    .line 3619
    iput-boolean v6, v0, Ldb;->k:Z

    const/4 v13, 0x1

    goto :goto_2

    :cond_8
    move v13, v6

    .line 3625
    :goto_2
    iput v11, v0, Ldb;->i:F

    .line 3626
    iput v11, v0, Ldb;->h:F

    .line 3627
    iput-wide v7, v0, Ldb;->T:J

    const/4 v14, 0x2

    .line 3632
    iget-object v15, v0, Ldb;->c:Landroid/view/animation/Interpolator;

    const v16, 0x3727c5ac    # 1.0E-5f

    if-eqz v15, :cond_10

    if-nez v13, :cond_10

    .line 3633
    iget-boolean v13, v0, Ldb;->ab:Z

    if-eqz v13, :cond_e

    .line 3634
    iget-wide v3, v0, Ldb;->R:J

    sub-long v3, v7, v3

    long-to-float v3, v3

    mul-float/2addr v3, v10

    .line 3635
    invoke-interface {v15, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 3636
    iget-object v4, v0, Ldb;->c:Landroid/view/animation/Interpolator;

    iget-object v9, v0, Ldb;->ac:Lcg;

    if-ne v4, v9, :cond_a

    .line 3637
    invoke-virtual {v9}, Lcg;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v14

    goto :goto_3

    :cond_9
    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    move v4, v6

    .line 3644
    :goto_3
    iput v3, v0, Ldb;->i:F

    .line 3646
    iput-wide v7, v0, Ldb;->T:J

    .line 3647
    iget-object v7, v0, Ldb;->c:Landroid/view/animation/Interpolator;

    instance-of v8, v7, Lda;

    if-eqz v8, :cond_d

    .line 3648
    check-cast v7, Lda;

    invoke-virtual {v7}, Lda;->a()F

    move-result v7

    .line 3649
    iput v7, v0, Ldb;->e:F

    .line 3650
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Ldb;->S:F

    mul-float/2addr v8, v9

    cmpg-float v8, v8, v16

    if-gtz v8, :cond_b

    if-ne v4, v14, :cond_b

    .line 3651
    iput-boolean v6, v0, Ldb;->k:Z

    :cond_b
    cmpl-float v8, v7, v2

    if-lez v8, :cond_c

    cmpl-float v8, v3, v5

    if-ltz v8, :cond_c

    .line 3654
    iput v5, v0, Ldb;->i:F

    .line 3655
    iput-boolean v6, v0, Ldb;->k:Z

    move v3, v5

    :cond_c
    cmpg-float v7, v7, v2

    if-gez v7, :cond_d

    cmpg-float v7, v3, v2

    if-gtz v7, :cond_d

    .line 3658
    iput v2, v0, Ldb;->i:F

    .line 3659
    iput-boolean v6, v0, Ldb;->k:Z

    move v11, v2

    goto :goto_6

    :cond_d
    move v11, v3

    goto :goto_6

    .line 3666
    :cond_e
    invoke-interface {v15, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 3667
    iget-object v4, v0, Ldb;->c:Landroid/view/animation/Interpolator;

    instance-of v7, v4, Lda;

    if-eqz v7, :cond_f

    .line 3668
    check-cast v4, Lda;

    invoke-virtual {v4}, Lda;->a()F

    move-result v4

    iput v4, v0, Ldb;->e:F

    goto :goto_4

    :cond_f
    add-float/2addr v11, v9

    .line 3670
    invoke-interface {v4, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v4, v3

    mul-float/2addr v4, v1

    div-float/2addr v4, v9

    .line 3671
    iput v4, v0, Ldb;->e:F

    :goto_4
    move v11, v3

    goto :goto_5

    .line 3676
    :cond_10
    iput v9, v0, Ldb;->e:F

    :goto_5
    move v4, v6

    .line 3678
    :goto_6
    iget v3, v0, Ldb;->e:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v16

    if-lez v3, :cond_11

    .line 3679
    sget-object v3, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {v0, v3}, Ldb;->setState(Ldb$h;)V

    :cond_11
    const/4 v3, 0x1

    if-eq v4, v3, :cond_16

    if-lez v12, :cond_12

    .line 3683
    iget v3, v0, Ldb;->j:F

    cmpl-float v3, v11, v3

    if-gez v3, :cond_13

    :cond_12
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_14

    iget v3, v0, Ldb;->j:F

    cmpg-float v3, v11, v3

    if-gtz v3, :cond_14

    .line 3685
    :cond_13
    iget v11, v0, Ldb;->j:F

    .line 3686
    iput-boolean v6, v0, Ldb;->k:Z

    :cond_14
    cmpl-float v3, v11, v5

    if-gez v3, :cond_15

    cmpg-float v3, v11, v2

    if-gtz v3, :cond_16

    .line 3690
    :cond_15
    iput-boolean v6, v0, Ldb;->k:Z

    .line 3691
    sget-object v3, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v0, v3}, Ldb;->setState(Ldb$h;)V

    .line 3695
    :cond_16
    invoke-virtual/range {p0 .. p0}, Ldb;->getChildCount()I

    move-result v3

    .line 3696
    iput-boolean v6, v0, Ldb;->af:Z

    .line 3697
    invoke-virtual/range {p0 .. p0}, Ldb;->getNanoTime()J

    move-result-wide v7

    .line 3701
    iput v11, v0, Ldb;->E:F

    .line 3702
    iget-object v4, v0, Ldb;->d:Landroid/view/animation/Interpolator;

    if-nez v4, :cond_17

    move v4, v11

    goto :goto_7

    :cond_17
    invoke-interface {v4, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 3703
    :goto_7
    iget-object v9, v0, Ldb;->d:Landroid/view/animation/Interpolator;

    if-eqz v9, :cond_18

    .line 3704
    iget v10, v0, Ldb;->S:F

    div-float v10, v1, v10

    add-float/2addr v10, v11

    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    iput v9, v0, Ldb;->e:F

    .line 3705
    iget v9, v0, Ldb;->e:F

    iget-object v10, v0, Ldb;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v0, Ldb;->e:F

    :cond_18
    move v9, v6

    :goto_8
    if-ge v9, v3, :cond_1a

    .line 3708
    invoke-virtual {v0, v9}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3709
    iget-object v14, v0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v14, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v17, v14

    check-cast v17, Lcx;

    if-eqz v17, :cond_19

    .line 3711
    iget-boolean v14, v0, Ldb;->af:Z

    iget-object v15, v0, Ldb;->ap:Lao;

    move-object/from16 v18, v10

    move/from16 v19, v4

    move-wide/from16 v20, v7

    move-object/from16 v22, v15

    invoke-virtual/range {v17 .. v22}, Lcx;->a(Landroid/view/View;FJLao;)Z

    move-result v10

    or-int/2addr v10, v14

    iput-boolean v10, v0, Ldb;->af:Z

    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_1a
    if-lez v12, :cond_1b

    .line 3719
    iget v3, v0, Ldb;->j:F

    cmpl-float v3, v11, v3

    if-gez v3, :cond_1c

    :cond_1b
    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1d

    iget v3, v0, Ldb;->j:F

    cmpg-float v3, v11, v3

    if-gtz v3, :cond_1d

    :cond_1c
    const/4 v3, 0x1

    goto :goto_9

    :cond_1d
    move v3, v6

    .line 3721
    :goto_9
    iget-boolean v4, v0, Ldb;->af:Z

    if-nez v4, :cond_1e

    iget-boolean v4, v0, Ldb;->k:Z

    if-nez v4, :cond_1e

    if-eqz v3, :cond_1e

    .line 3722
    sget-object v4, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v0, v4}, Ldb;->setState(Ldb$h;)V

    .line 3724
    :cond_1e
    iget-boolean v4, v0, Ldb;->x:Z

    if-eqz v4, :cond_1f

    .line 3725
    invoke-virtual/range {p0 .. p0}, Ldb;->requestLayout()V

    .line 3728
    :cond_1f
    iget-boolean v4, v0, Ldb;->af:Z

    const/4 v7, 0x1

    xor-int/2addr v3, v7

    or-int/2addr v3, v4

    iput-boolean v3, v0, Ldb;->af:Z

    cmpg-float v3, v11, v2

    if-gtz v3, :cond_20

    .line 3731
    iget v3, v0, Ldb;->M:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 3732
    iget v4, v0, Ldb;->f:I

    if-eq v4, v3, :cond_20

    .line 3734
    iput v3, v0, Ldb;->f:I

    .line 3735
    iget-object v4, v0, Ldb;->b:Ldd;

    invoke-virtual {v4, v3}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v3

    .line 3736
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/d;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3737
    sget-object v3, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v0, v3}, Ldb;->setState(Ldb$h;)V

    move v3, v7

    goto :goto_a

    :cond_20
    move v3, v6

    :goto_a
    float-to-double v8, v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v8, v13

    if-ltz v4, :cond_21

    .line 3745
    iget v4, v0, Ldb;->f:I

    iget v6, v0, Ldb;->N:I

    if-eq v4, v6, :cond_21

    .line 3747
    iput v6, v0, Ldb;->f:I

    .line 3748
    iget-object v3, v0, Ldb;->b:Ldd;

    invoke-virtual {v3, v6}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v3

    .line 3749
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/d;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3750
    sget-object v3, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v0, v3}, Ldb;->setState(Ldb$h;)V

    move v3, v7

    .line 3754
    :cond_21
    iget-boolean v4, v0, Ldb;->af:Z

    if-nez v4, :cond_25

    iget-boolean v4, v0, Ldb;->k:Z

    if-eqz v4, :cond_22

    goto :goto_b

    :cond_22
    if-lez v12, :cond_23

    cmpl-float v4, v11, v5

    if-eqz v4, :cond_24

    :cond_23
    cmpg-float v4, v1, v2

    if-gez v4, :cond_26

    cmpl-float v4, v11, v2

    if-nez v4, :cond_26

    .line 3758
    :cond_24
    sget-object v4, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v0, v4}, Ldb;->setState(Ldb$h;)V

    goto :goto_c

    .line 3755
    :cond_25
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ldb;->invalidate()V

    .line 3761
    :cond_26
    :goto_c
    iget-boolean v4, v0, Ldb;->af:Z

    if-nez v4, :cond_29

    iget-boolean v4, v0, Ldb;->k:Z

    if-nez v4, :cond_29

    if-lez v12, :cond_27

    cmpl-float v4, v11, v5

    if-eqz v4, :cond_28

    :cond_27
    cmpg-float v1, v1, v2

    if-gez v1, :cond_29

    cmpl-float v1, v11, v2

    if-nez v1, :cond_29

    .line 3762
    :cond_28
    invoke-virtual/range {p0 .. p0}, Ldb;->d()V

    .line 3765
    :cond_29
    :goto_d
    iget v1, v0, Ldb;->i:F

    cmpl-float v4, v1, v5

    if-ltz v4, :cond_2b

    .line 3766
    iget v1, v0, Ldb;->f:I

    iget v2, v0, Ldb;->N:I

    if-eq v1, v2, :cond_2a

    move v3, v7

    .line 3769
    :cond_2a
    iget v1, v0, Ldb;->N:I

    iput v1, v0, Ldb;->f:I

    goto :goto_e

    :cond_2b
    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2d

    .line 3771
    iget v1, v0, Ldb;->f:I

    iget v2, v0, Ldb;->M:I

    if-eq v1, v2, :cond_2c

    move v3, v7

    .line 3774
    :cond_2c
    iget v1, v0, Ldb;->M:I

    iput v1, v0, Ldb;->f:I

    .line 3777
    :cond_2d
    :goto_e
    iget-boolean v1, v0, Ldb;->az:Z

    or-int/2addr v1, v3

    iput-boolean v1, v0, Ldb;->az:Z

    if-eqz v3, :cond_2e

    .line 3779
    iget-boolean v1, v0, Ldb;->aq:Z

    if-nez v1, :cond_2e

    .line 3780
    invoke-virtual/range {p0 .. p0}, Ldb;->requestLayout()V

    .line 3783
    :cond_2e
    iget v1, v0, Ldb;->i:F

    iput v1, v0, Ldb;->h:F

    return-void
.end method

.method public c(I)Landroidx/constraintlayout/widget/d;
    .locals 1

    .line 4564
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4567
    :cond_0
    invoke-virtual {v0, p1}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2144
    invoke-virtual {p0, v0}, Ldb;->a(F)V

    const/4 v0, 0x0

    .line 2145
    iput-object v0, p0, Ldb;->as:Ljava/lang/Runnable;

    return-void
.end method

.method public d(I)Ldd$a;
    .locals 1

    .line 4736
    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0, p1}, Ldd;->b(I)Ldd$a;

    move-result-object p1

    return-object p1
.end method

.method d()V
    .locals 2

    .line 4200
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_0

    return-void

    .line 4203
    :cond_0
    iget v1, p0, Ldb;->f:I

    invoke-virtual {v0, p0, v1}, Ldd;->b(Ldb;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4204
    invoke-virtual {p0}, Ldb;->requestLayout()V

    return-void

    .line 4207
    :cond_1
    iget v0, p0, Ldb;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4208
    iget-object v1, p0, Ldb;->b:Ldd;

    invoke-virtual {v1, p0, v0}, Ldd;->a(Ldb;I)V

    .line 4210
    :cond_2
    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0}, Ldd;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4211
    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0}, Ldd;->r()V

    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 3467
    iget-object v0, p0, Ldb;->ai:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3468
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcy;

    .line 3469
    invoke-virtual {v1, p1}, Lcy;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3472
    invoke-virtual {p0, v0}, Ldb;->b(Z)V

    .line 3473
    iget-object v1, p0, Ldb;->b:Ldd;

    if-eqz v1, :cond_1

    iget-object v1, v1, Ldd;->c:Ldg;

    if-eqz v1, :cond_1

    .line 3474
    iget-object v1, p0, Ldb;->b:Ldd;

    iget-object v1, v1, Ldd;->c:Ldg;

    invoke-virtual {v1}, Ldg;->a()V

    .line 3481
    :cond_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3482
    iget-object v1, p0, Ldb;->b:Ldd;

    if-nez v1, :cond_2

    return-void

    .line 3488
    :cond_2
    iget v1, p0, Ldb;->l:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 3489
    invoke-virtual {p0}, Ldb;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3490
    iget v1, p0, Ldb;->ak:I

    add-int/2addr v1, v2

    iput v1, p0, Ldb;->ak:I

    .line 3491
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v3

    .line 3492
    iget-wide v5, p0, Ldb;->al:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    sub-long v5, v3, v5

    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_4

    .line 3495
    iget v1, p0, Ldb;->ak:I

    int-to-float v1, v1

    long-to-float v5, v5

    const v6, 0x3089705f    # 1.0E-9f

    mul-float/2addr v5, v6

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 3496
    iput v1, p0, Ldb;->am:F

    .line 3497
    iput v0, p0, Ldb;->ak:I

    .line 3498
    iput-wide v3, p0, Ldb;->al:J

    goto :goto_1

    .line 3501
    :cond_3
    iput-wide v3, p0, Ldb;->al:J

    .line 3503
    :cond_4
    :goto_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x42280000    # 42.0f

    .line 3504
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3505
    invoke-virtual {p0}, Ldb;->getProgress()F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 3506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Ldb;->am:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " fps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ldb;->M:I

    invoke-static {p0, v5}, Lcl;->a(Ldb;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Ldb;->N:I

    invoke-static {p0, v4}, Lcl;->a(Ldb;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (progress: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ) state="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    iget v1, p0, Ldb;->f:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5

    const-string v1, "undefined"

    goto :goto_2

    :cond_5
    invoke-static {p0, v1}, Lcl;->a(Ldb;I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x1000000

    .line 3509
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 3510
    invoke-virtual {p0}, Ldb;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v4, -0x77ff78

    .line 3511
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3512
    invoke-virtual {p0}, Ldb;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3516
    :cond_6
    iget v0, p0, Ldb;->l:I

    if-le v0, v2, :cond_8

    .line 3517
    iget-object v0, p0, Ldb;->m:Ldb$b;

    if-nez v0, :cond_7

    .line 3518
    new-instance v0, Ldb$b;

    invoke-direct {v0, p0}, Ldb$b;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->m:Ldb$b;

    .line 3520
    :cond_7
    iget-object v0, p0, Ldb;->m:Ldb$b;

    iget-object v1, p0, Ldb;->g:Ljava/util/HashMap;

    iget-object v2, p0, Ldb;->b:Ldd;

    invoke-virtual {v2}, Ldd;->g()I

    move-result v2

    iget v3, p0, Ldb;->l:I

    invoke-virtual {v0, p1, v1, v2, v3}, Ldb$b;->a(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    .line 3522
    :cond_8
    iget-object v0, p0, Ldb;->ai:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 3523
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcy;

    .line 3524
    invoke-virtual {v1, p1}, Lcy;->b(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_9
    return-void
.end method

.method protected e()V
    .locals 4

    .line 4421
    iget-object v0, p0, Ldb;->V:Ldb$g;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4422
    :cond_0
    iget v0, p0, Ldb;->an:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 4423
    iget v0, p0, Ldb;->f:I

    iput v0, p0, Ldb;->an:I

    .line 4425
    iget-object v0, p0, Ldb;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4426
    iget-object v0, p0, Ldb;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4428
    :goto_0
    iget v3, p0, Ldb;->f:I

    if-eq v0, v3, :cond_2

    if-eq v3, v2, :cond_2

    .line 4429
    iget-object v0, p0, Ldb;->L:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4433
    :cond_2
    invoke-direct {p0}, Ldb;->m()V

    .line 4434
    iget-object v0, p0, Ldb;->as:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 4435
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4438
    :cond_3
    iget-object v0, p0, Ldb;->at:[I

    if-eqz v0, :cond_4

    iget v2, p0, Ldb;->F:I

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 4439
    aget v0, v0, v2

    invoke-virtual {p0, v0}, Ldb;->b(I)V

    .line 4440
    iget-object v0, p0, Ldb;->at:[I

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4441
    iget v0, p0, Ldb;->F:I

    sub-int/2addr v0, v1

    iput v0, p0, Ldb;->F:I

    :cond_4
    return-void
.end method

.method public f()V
    .locals 1

    .line 4603
    iget-object v0, p0, Ldb;->K:Ldb$c;

    invoke-virtual {v0}, Ldb$c;->a()V

    .line 4604
    invoke-virtual {p0}, Ldb;->invalidate()V

    return-void
.end method

.method public g()V
    .locals 5

    .line 4671
    iget-object v0, p0, Ldb;->K:Ldb$c;

    iget-object v1, p0, Ldb;->mLayoutWidget:Lbg;

    iget-object v2, p0, Ldb;->b:Ldd;

    iget v3, p0, Ldb;->M:I

    invoke-virtual {v2, v3}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v2

    iget-object v3, p0, Ldb;->b:Ldd;

    iget v4, p0, Ldb;->N:I

    invoke-virtual {v3, v4}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 4672
    invoke-virtual {p0}, Ldb;->f()V

    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 1

    .line 4547
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4550
    :cond_0
    invoke-virtual {v0}, Ldd;->b()[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 4221
    iget v0, p0, Ldb;->f:I

    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ldd$a;",
            ">;"
        }
    .end annotation

    .line 4681
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4684
    :cond_0
    invoke-virtual {v0}, Ldd;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDesignTool()Lcm;
    .locals 1

    .line 4467
    iget-object v0, p0, Ldb;->ae:Lcm;

    if-nez v0, :cond_0

    .line 4468
    new-instance v0, Lcm;

    invoke-direct {v0, p0}, Lcm;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->ae:Lcm;

    .line 4470
    :cond_0
    iget-object v0, p0, Ldb;->ae:Lcm;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 4703
    iget v0, p0, Ldb;->N:I

    return v0
.end method

.method protected getNanoTime()J
    .locals 2

    .line 1138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 4230
    iget v0, p0, Ldb;->i:F

    return v0
.end method

.method public getScene()Ldd;
    .locals 1

    .line 3897
    iget-object v0, p0, Ldb;->b:Ldd;

    return-object v0
.end method

.method public getStartState()I
    .locals 1

    .line 4694
    iget v0, p0, Ldb;->M:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 4713
    iget v0, p0, Ldb;->j:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 1

    .line 1693
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    if-nez v0, :cond_0

    .line 1694
    new-instance v0, Ldb$f;

    invoke-direct {v0, p0}, Ldb$f;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->ar:Ldb$f;

    .line 1696
    :cond_0
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0}, Ldb$f;->c()V

    .line 1697
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0}, Ldb$f;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 4277
    iget-object v0, p0, Ldb;->b:Ldd;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 4278
    invoke-virtual {v0}, Ldd;->g()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Ldb;->S:F

    .line 4280
    :cond_0
    iget v0, p0, Ldb;->S:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    .line 2452
    iget v0, p0, Ldb;->e:F

    return v0
.end method

.method public h()Z
    .locals 1

    .line 4797
    iget-boolean v0, p0, Ldb;->Q:Z

    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .line 1531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1532
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 1534
    :cond_0
    invoke-virtual {p0}, Ldb;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadLayoutDescription(I)V
    .locals 4

    const-string v0, "unable to parse MotionScene file"

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 1463
    :try_start_0
    new-instance v2, Ldd;

    invoke-virtual {p0}, Ldb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, p1}, Ldd;-><init>(Landroid/content/Context;Ldb;I)V

    iput-object v2, p0, Ldb;->b:Ldd;

    .line 1464
    iget p1, p0, Ldb;->f:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Ldb;->b:Ldd;

    if-eqz p1, :cond_0

    .line 1465
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->d()I

    move-result p1

    iput p1, p0, Ldb;->f:I

    .line 1466
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->d()I

    move-result p1

    iput p1, p0, Ldb;->M:I

    .line 1467
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->e()I

    move-result p1

    iput p1, p0, Ldb;->N:I

    .line 1469
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Ldb;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1515
    :cond_1
    iput-object v1, p0, Ldb;->b:Ldd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 1471
    :cond_2
    :goto_0
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_4

    .line 1472
    invoke-virtual {p0}, Ldb;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 1473
    :cond_3
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    :goto_1
    iput p1, p0, Ldb;->ax:I

    .line 1476
    :cond_4
    iget-object p1, p0, Ldb;->b:Ldd;

    if-eqz p1, :cond_7

    .line 1477
    iget-object p1, p0, Ldb;->b:Ldd;

    iget v1, p0, Ldb;->f:I

    invoke-virtual {p1, v1}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    .line 1478
    iget-object v1, p0, Ldb;->b:Ldd;

    invoke-virtual {v1, p0}, Ldd;->a(Ldb;)V

    .line 1479
    iget-object v1, p0, Ldb;->ai:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 1480
    iget-object v1, p0, Ldb;->ai:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcy;

    .line 1481
    invoke-virtual {v2, p0}, Lcy;->a(Ldb;)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    .line 1485
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1487
    :cond_6
    iget p1, p0, Ldb;->f:I

    iput p1, p0, Ldb;->M:I

    .line 1489
    :cond_7
    invoke-virtual {p0}, Ldb;->d()V

    .line 1490
    iget-object p1, p0, Ldb;->ar:Ldb$f;

    if-eqz p1, :cond_9

    .line 1491
    iget-boolean p1, p0, Ldb;->ay:Z

    if-eqz p1, :cond_8

    .line 1492
    new-instance p1, Ldb$1;

    invoke-direct {p1, p0}, Ldb$1;-><init>(Ldb;)V

    invoke-virtual {p0, p1}, Ldb;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1499
    :cond_8
    iget-object p1, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {p1}, Ldb$f;->a()V

    goto :goto_3

    .line 1502
    :cond_9
    iget-object p1, p0, Ldb;->b:Ldd;

    if-eqz p1, :cond_b

    iget-object p1, p0, Ldb;->b:Ldd;

    iget-object p1, p1, Ldd;->b:Ldd$a;

    if-eqz p1, :cond_b

    .line 1503
    iget-object p1, p0, Ldb;->b:Ldd;

    iget-object p1, p1, Ldd;->b:Ldd$a;

    invoke-virtual {p1}, Ldd$a;->b()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 1504
    invoke-virtual {p0}, Ldb;->c()V

    .line 1505
    sget-object p1, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {p0, p1}, Ldb;->setState(Ldb$h;)V

    .line 1506
    sget-object p1, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p0, p1}, Ldb;->setState(Ldb$h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1512
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 1519
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1522
    :cond_a
    iput-object v1, p0, Ldb;->b:Ldd;

    :cond_b
    :goto_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 4145
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 4146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 4147
    invoke-virtual {p0}, Ldb;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4149
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Ldb;->ax:I

    .line 4152
    :cond_0
    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_3

    iget v1, p0, Ldb;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 4153
    invoke-virtual {v0, v1}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    .line 4154
    iget-object v1, p0, Ldb;->b:Ldd;

    invoke-virtual {v1, p0}, Ldd;->a(Ldb;)V

    .line 4155
    iget-object v1, p0, Ldb;->ai:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 4156
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcy;

    .line 4157
    invoke-virtual {v2, p0}, Lcy;->a(Ldb;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 4161
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4163
    :cond_2
    iget v0, p0, Ldb;->f:I

    iput v0, p0, Ldb;->M:I

    .line 4165
    :cond_3
    invoke-virtual {p0}, Ldb;->d()V

    .line 4166
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    if-eqz v0, :cond_5

    .line 4167
    iget-boolean v1, p0, Ldb;->ay:Z

    if-eqz v1, :cond_4

    .line 4168
    new-instance v0, Ldb$3;

    invoke-direct {v0, p0}, Ldb$3;-><init>(Ldb;)V

    invoke-virtual {p0, v0}, Ldb;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4175
    :cond_4
    invoke-virtual {v0}, Ldb$f;->a()V

    goto :goto_1

    .line 4178
    :cond_5
    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_6

    iget-object v0, v0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_6

    .line 4179
    iget-object v0, p0, Ldb;->b:Ldd;

    iget-object v0, v0, Ldd;->b:Ldd$a;

    invoke-virtual {v0}, Ldd$a;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 4180
    invoke-virtual {p0}, Ldb;->c()V

    .line 4181
    sget-object v0, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    .line 4182
    sget-object v0, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 4081
    iget-object v0, p0, Ldb;->b:Ldd;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Ldb;->Q:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 4085
    :cond_0
    iget-object v0, v0, Ldd;->c:Ldg;

    if-eqz v0, :cond_1

    .line 4086
    iget-object v0, p0, Ldb;->b:Ldd;

    iget-object v0, v0, Ldd;->c:Ldg;

    invoke-virtual {v0, p1}, Ldg;->a(Landroid/view/MotionEvent;)V

    .line 4088
    :cond_1
    iget-object v0, p0, Ldb;->b:Ldd;

    iget-object v0, v0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_5

    .line 4089
    invoke-virtual {v0}, Ldd$a;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4090
    invoke-virtual {v0}, Ldd$a;->e()Lde;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4092
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 4093
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, v2}, Lde;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4099
    :cond_2
    invoke-virtual {v0}, Lde;->f()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 4101
    iget-object v2, p0, Ldb;->aB:Landroid/view/View;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 4102
    :cond_3
    invoke-virtual {p0, v0}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldb;->aB:Landroid/view/View;

    .line 4104
    :cond_4
    iget-object v0, p0, Ldb;->aB:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 4105
    iget-object v2, p0, Ldb;->aA:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Ldb;->aB:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Ldb;->aB:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Ldb;->aB:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4106
    iget-object v0, p0, Ldb;->aA:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4109
    iget-object v0, p0, Ldb;->aB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Ldb;->aB:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Ldb;->aB:Landroid/view/View;

    invoke-direct {p0, v0, v2, v3, p1}, Ldb;->a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4111
    invoke-virtual {p0, p1}, Ldb;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    .line 3790
    iput-boolean v0, p0, Ldb;->aq:Z

    const/4 v1, 0x0

    .line 3795
    :try_start_0
    iget-object v2, p0, Ldb;->b:Ldd;

    if-nez v2, :cond_0

    .line 3796
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3814
    iput-boolean v1, p0, Ldb;->aq:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 3801
    :try_start_1
    iget p1, p0, Ldb;->p:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Ldb;->q:I

    if-eq p1, p5, :cond_2

    .line 3802
    :cond_1
    invoke-virtual {p0}, Ldb;->f()V

    .line 3803
    invoke-virtual {p0, v0}, Ldb;->b(Z)V

    .line 3809
    :cond_2
    iput p4, p0, Ldb;->p:I

    .line 3810
    iput p5, p0, Ldb;->q:I

    .line 3811
    iput p4, p0, Ldb;->n:I

    .line 3812
    iput p5, p0, Ldb;->o:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3814
    iput-boolean v1, p0, Ldb;->aq:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Ldb;->aq:Z

    .line 3815
    throw p1
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 2913
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_0

    .line 2914
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void

    .line 2917
    :cond_0
    iget v0, p0, Ldb;->O:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    iget v0, p0, Ldb;->P:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 2918
    :goto_1
    iget-boolean v3, p0, Ldb;->az:Z

    if-eqz v3, :cond_3

    .line 2919
    iput-boolean v1, p0, Ldb;->az:Z

    .line 2920
    invoke-virtual {p0}, Ldb;->d()V

    .line 2921
    invoke-direct {p0}, Ldb;->m()V

    move v0, v2

    .line 2925
    :cond_3
    iget-boolean v3, p0, Ldb;->mDirtyHierarchy:Z

    if-eqz v3, :cond_4

    move v0, v2

    .line 2929
    :cond_4
    iput p1, p0, Ldb;->O:I

    .line 2930
    iput p2, p0, Ldb;->P:I

    .line 2932
    iget-object v3, p0, Ldb;->b:Ldd;

    invoke-virtual {v3}, Ldd;->d()I

    move-result v3

    .line 2933
    iget-object v4, p0, Ldb;->b:Ldd;

    invoke-virtual {v4}, Ldd;->e()I

    move-result v4

    if-nez v0, :cond_5

    .line 2935
    iget-object v5, p0, Ldb;->K:Ldb$c;

    invoke-virtual {v5, v3, v4}, Ldb$c;->c(II)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget v5, p0, Ldb;->M:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 2936
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 2937
    iget-object p1, p0, Ldb;->K:Ldb$c;

    iget-object p2, p0, Ldb;->mLayoutWidget:Lbg;

    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0, v3}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    iget-object v2, p0, Ldb;->b:Ldd;

    invoke-virtual {v2, v4}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 2938
    iget-object p1, p0, Ldb;->K:Ldb$c;

    invoke-virtual {p1}, Ldb$c;->a()V

    .line 2939
    iget-object p1, p0, Ldb;->K:Ldb$c;

    invoke-virtual {p1, v3, v4}, Ldb$c;->b(II)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 2942
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    :cond_7
    move v1, v2

    .line 2945
    :goto_2
    iget-boolean p1, p0, Ldb;->x:Z

    if-nez p1, :cond_8

    if-eqz v1, :cond_d

    .line 2946
    :cond_8
    invoke-virtual {p0}, Ldb;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Ldb;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 2947
    invoke-virtual {p0}, Ldb;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Ldb;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 2948
    iget-object v0, p0, Ldb;->mLayoutWidget:Lbg;

    invoke-virtual {v0}, Lbg;->F()I

    move-result v0

    add-int/2addr v0, p2

    .line 2949
    iget-object p2, p0, Ldb;->mLayoutWidget:Lbg;

    invoke-virtual {p2}, Lbg;->G()I

    move-result p2

    add-int/2addr p2, p1

    .line 2950
    iget p1, p0, Ldb;->C:I

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_9

    if-nez p1, :cond_a

    .line 2951
    :cond_9
    iget p1, p0, Ldb;->y:I

    int-to-float v0, p1

    iget v2, p0, Ldb;->E:F

    iget v3, p0, Ldb;->A:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 2952
    invoke-virtual {p0}, Ldb;->requestLayout()V

    .line 2954
    :cond_a
    iget p1, p0, Ldb;->D:I

    if-eq p1, v1, :cond_b

    if-nez p1, :cond_c

    .line 2955
    :cond_b
    iget p1, p0, Ldb;->z:I

    int-to-float p2, p1

    iget v1, p0, Ldb;->E:F

    iget v2, p0, Ldb;->B:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    float-to-int p2, p2

    .line 2956
    invoke-virtual {p0}, Ldb;->requestLayout()V

    .line 2958
    :cond_c
    invoke-virtual {p0, v0, p2}, Ldb;->setMeasuredDimension(II)V

    .line 2960
    :cond_d
    invoke-direct {p0}, Ldb;->k()V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 10

    .line 3020
    iget-object p5, p0, Ldb;->b:Ldd;

    if-nez p5, :cond_0

    return-void

    .line 3025
    :cond_0
    iget-object v0, p5, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_c

    .line 3026
    invoke-virtual {v0}, Ldd$a;->f()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 3030
    :cond_1
    invoke-virtual {v0}, Ldd$a;->f()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 3031
    invoke-virtual {v0}, Ldd$a;->e()Lde;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3033
    invoke-virtual {v1}, Lde;->f()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 3034
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v3, v1, :cond_2

    return-void

    .line 3040
    :cond_2
    invoke-virtual {p5}, Ldd;->s()Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 3042
    invoke-virtual {v0}, Ldd$a;->e()Lde;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3045
    invoke-virtual {v1}, Lde;->g()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v2, p3

    .line 3049
    :cond_3
    iget v1, p0, Ldb;->h:F

    cmpl-float v5, v1, v3

    if-eqz v5, :cond_4

    cmpl-float v1, v1, v4

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 3055
    :cond_5
    invoke-virtual {v0}, Ldd$a;->e()Lde;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ldd$a;->e()Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->g()I

    move-result v0

    and-int/2addr v0, v5

    if-eqz v0, :cond_9

    int-to-float v0, p2

    int-to-float v1, p3

    .line 3056
    invoke-virtual {p5, v0, v1}, Ldd;->c(FF)F

    move-result v0

    .line 3057
    iget v1, p0, Ldb;->i:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_6

    cmpg-float v1, v0, v4

    if-ltz v1, :cond_7

    :cond_6
    iget v1, p0, Ldb;->i:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_9

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    .line 3059
    :cond_7
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    .line 3060
    invoke-virtual {p1, v2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 3062
    new-instance p2, Ldb$2;

    invoke-direct {p2, p0, p1}, Ldb$2;-><init>(Ldb;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void

    .line 3076
    :cond_9
    iget p1, p0, Ldb;->h:F

    .line 3077
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v0

    int-to-float v3, p2

    .line 3078
    iput v3, p0, Ldb;->s:F

    int-to-float v4, p3

    .line 3079
    iput v4, p0, Ldb;->t:F

    .line 3080
    iget-wide v6, p0, Ldb;->u:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Ldb;->v:F

    .line 3081
    iput-wide v0, p0, Ldb;->u:J

    .line 3085
    invoke-virtual {p5, v3, v4}, Ldd;->a(FF)V

    .line 3086
    iget p5, p0, Ldb;->h:F

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_a

    .line 3087
    aput p2, p4, v2

    .line 3088
    aput p3, p4, v5

    .line 3090
    :cond_a
    invoke-virtual {p0, v2}, Ldb;->b(Z)V

    .line 3091
    aget p1, p4, v2

    if-nez p1, :cond_b

    aget p1, p4, v5

    if-eqz p1, :cond_c

    .line 3092
    :cond_b
    iput-boolean v5, p0, Ldb;->r:Z

    :cond_c
    :goto_0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 3003
    iget-boolean p1, p0, Ldb;->r:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 3004
    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 3005
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    .line 3007
    :cond_1
    iput-boolean p6, p0, Ldb;->r:Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 2982
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Ldb;->u:J

    const/4 p1, 0x0

    .line 2983
    iput p1, p0, Ldb;->v:F

    .line 2984
    iput p1, p0, Ldb;->s:F

    .line 2985
    iput p1, p0, Ldb;->t:F

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 4190
    iget-object p1, p0, Ldb;->b:Ldd;

    if-eqz p1, :cond_0

    .line 4191
    invoke-virtual {p0}, Ldb;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Ldd;->a(Z)V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2968
    iget-object p1, p0, Ldb;->b:Ldd;

    if-eqz p1, :cond_1

    iget-object p1, p1, Ldd;->b:Ldd$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldb;->b:Ldd;

    iget-object p1, p1, Ldd;->b:Ldd$a;

    .line 2970
    invoke-virtual {p1}, Ldd$a;->e()Lde;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldb;->b:Ldd;

    iget-object p1, p1, Ldd;->b:Ldd$a;

    .line 2971
    invoke-virtual {p1}, Ldd$a;->e()Lde;

    move-result-object p1

    invoke-virtual {p1}, Lde;->g()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 2

    .line 2995
    iget-object p1, p0, Ldb;->b:Ldd;

    if-eqz p1, :cond_1

    iget p2, p0, Ldb;->v:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2998
    :cond_0
    iget v0, p0, Ldb;->s:F

    div-float/2addr v0, p2

    iget v1, p0, Ldb;->t:F

    div-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Ldd;->b(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 4126
    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Ldb;->Q:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ldd;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4127
    iget-object v0, p0, Ldb;->b:Ldd;

    iget-object v0, v0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    .line 4128
    invoke-virtual {v0}, Ldd$a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4129
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4131
    :cond_0
    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {p0}, Ldb;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, p1, v1, p0}, Ldd;->a(Landroid/view/MotionEvent;ILdb;)V

    .line 4132
    iget-object p1, p0, Ldb;->b:Ldd;

    iget-object p1, p1, Ldd;->b:Ldd$a;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ldd$a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4133
    iget-object p1, p0, Ldb;->b:Ldd;

    iget-object p1, p1, Ldd;->b:Ldd$a;

    invoke-virtual {p1}, Ldd$a;->e()Lde;

    move-result-object p1

    invoke-virtual {p1}, Lde;->m()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4140
    :cond_2
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 4478
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 4479
    instance-of v0, p1, Lcy;

    if-eqz v0, :cond_6

    .line 4480
    check-cast p1, Lcy;

    .line 4481
    iget-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 4482
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4484
    :cond_0
    iget-object v0, p0, Ldb;->aj:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4486
    invoke-virtual {p1}, Lcy;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4487
    iget-object v0, p0, Ldb;->ag:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldb;->ag:Ljava/util/ArrayList;

    .line 4490
    :cond_1
    iget-object v0, p0, Ldb;->ag:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4492
    :cond_2
    invoke-virtual {p1}, Lcy;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4493
    iget-object v0, p0, Ldb;->ah:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 4494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldb;->ah:Ljava/util/ArrayList;

    .line 4496
    :cond_3
    iget-object v0, p0, Ldb;->ah:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4498
    :cond_4
    invoke-virtual {p1}, Lcy;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4499
    iget-object v0, p0, Ldb;->ai:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 4500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldb;->ai:Ljava/util/ArrayList;

    .line 4502
    :cond_5
    iget-object v0, p0, Ldb;->ai:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 4512
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 4513
    iget-object v0, p0, Ldb;->ag:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4514
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4516
    :cond_0
    iget-object v0, p0, Ldb;->ah:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4517
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 0

    const/4 p1, 0x0

    .line 3825
    iput-object p1, p0, Ldb;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/c;

    return-void
.end method

.method public requestLayout()V
    .locals 4

    .line 2881
    iget-boolean v0, p0, Ldb;->x:Z

    if-nez v0, :cond_2

    .line 2882
    iget v0, p0, Ldb;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_2

    .line 2884
    iget-object v0, p0, Ldb;->b:Ldd;

    iget-object v0, v0, Ldd;->b:Ldd$a;

    invoke-virtual {v0}, Ldd$a;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2888
    invoke-virtual {p0}, Ldb;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2890
    invoke-virtual {p0, v1}, Ldb;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2891
    iget-object v3, p0, Ldb;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcx;

    .line 2892
    invoke-virtual {v2}, Lcx;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 2898
    :cond_2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 3988
    iput p1, p0, Ldb;->l:I

    .line 3989
    invoke-virtual {p0}, Ldb;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    .line 4879
    iput-boolean p1, p0, Ldb;->ay:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 4784
    iput-boolean p1, p0, Ldb;->Q:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1564
    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_0

    .line 1565
    sget-object v0, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    .line 1566
    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0}, Ldd;->f()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1568
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Ldb;->setProgress(F)V

    return-void

    .line 1572
    :cond_0
    invoke-virtual {p0, p1}, Ldb;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 4532
    iget-object v0, p0, Ldb;->ah:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4535
    iget-object v2, p0, Ldb;->ah:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcy;

    .line 4536
    invoke-virtual {v2, p1}, Lcy;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 4522
    iget-object v0, p0, Ldb;->ag:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4523
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4525
    iget-object v2, p0, Ldb;->ag:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcy;

    .line 4526
    invoke-virtual {v2, p1}, Lcy;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "MotionLayout"

    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 1707
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_1
    invoke-virtual {p0}, Ldb;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1710
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    if-nez v0, :cond_2

    .line 1711
    new-instance v0, Ldb$f;

    invoke-direct {v0, p0}, Ldb$f;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->ar:Ldb$f;

    .line 1713
    :cond_2
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0, p1}, Ldb$f;->a(F)V

    return-void

    :cond_3
    if-gtz v1, :cond_5

    .line 1724
    iget v1, p0, Ldb;->i:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget v1, p0, Ldb;->f:I

    iget v2, p0, Ldb;->N:I

    if-ne v1, v2, :cond_4

    .line 1725
    sget-object v1, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p0, v1}, Ldb;->setState(Ldb$h;)V

    .line 1728
    :cond_4
    iget v1, p0, Ldb;->M:I

    iput v1, p0, Ldb;->f:I

    .line 1729
    iget v1, p0, Ldb;->i:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_8

    .line 1730
    sget-object v0, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    goto :goto_0

    :cond_5
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_7

    .line 1733
    iget v1, p0, Ldb;->i:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    iget v0, p0, Ldb;->f:I

    iget v1, p0, Ldb;->M:I

    if-ne v0, v1, :cond_6

    .line 1734
    sget-object v0, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    .line 1737
    :cond_6
    iget v0, p0, Ldb;->N:I

    iput v0, p0, Ldb;->f:I

    .line 1738
    iget v0, p0, Ldb;->i:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_8

    .line 1739
    sget-object v0, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    .line 1742
    iput v0, p0, Ldb;->f:I

    .line 1743
    sget-object v0, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    .line 1746
    :cond_8
    :goto_0
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 1750
    iput-boolean v0, p0, Ldb;->U:Z

    .line 1751
    iput p1, p0, Ldb;->j:F

    .line 1752
    iput p1, p0, Ldb;->h:F

    const-wide/16 v1, -0x1

    .line 1753
    iput-wide v1, p0, Ldb;->T:J

    .line 1754
    iput-wide v1, p0, Ldb;->R:J

    const/4 p1, 0x0

    .line 1755
    iput-object p1, p0, Ldb;->c:Landroid/view/animation/Interpolator;

    .line 1757
    iput-boolean v0, p0, Ldb;->k:Z

    .line 1758
    invoke-virtual {p0}, Ldb;->invalidate()V

    return-void
.end method

.method public setScene(Ldd;)V
    .locals 1

    .line 3885
    iput-object p1, p0, Ldb;->b:Ldd;

    .line 3886
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p0}, Ldb;->isRtl()Z

    move-result v0

    invoke-virtual {p1, v0}, Ldd;->a(Z)V

    .line 3887
    invoke-virtual {p0}, Ldb;->f()V

    return-void
.end method

.method setStartState(I)V
    .locals 1

    .line 1312
    invoke-virtual {p0}, Ldb;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1313
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    if-nez v0, :cond_0

    .line 1314
    new-instance v0, Ldb$f;

    invoke-direct {v0, p0}, Ldb$f;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->ar:Ldb$f;

    .line 1316
    :cond_0
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0, p1}, Ldb$f;->b(I)V

    .line 1317
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0, p1}, Ldb$f;->a(I)V

    return-void

    .line 1320
    :cond_1
    iput p1, p0, Ldb;->f:I

    return-void
.end method

.method public setState(III)V
    .locals 1

    .line 1547
    sget-object v0, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    .line 1548
    iput p1, p0, Ldb;->f:I

    const/4 v0, -0x1

    .line 1549
    iput v0, p0, Ldb;->M:I

    .line 1550
    iput v0, p0, Ldb;->N:I

    .line 1551
    iget-object v0, p0, Ldb;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Ldb;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/c;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/c;->a(IFF)V

    goto :goto_0

    .line 1553
    :cond_0
    iget-object p2, p0, Ldb;->b:Ldd;

    if-eqz p2, :cond_1

    .line 1554
    invoke-virtual {p2, p1}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setState(Ldb$h;)V
    .locals 2

    .line 1199
    sget-object v0, Ldb$h;->FINISHED:Ldb$h;

    if-ne p1, v0, :cond_0

    iget v0, p0, Ldb;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1202
    :cond_0
    iget-object v0, p0, Ldb;->J:Ldb$h;

    .line 1203
    iput-object p1, p0, Ldb;->J:Ldb$h;

    .line 1205
    sget-object v1, Ldb$h;->MOVING:Ldb$h;

    if-ne v0, v1, :cond_1

    sget-object v1, Ldb$h;->MOVING:Ldb$h;

    if-ne p1, v1, :cond_1

    .line 1206
    invoke-direct {p0}, Ldb;->l()V

    .line 1208
    :cond_1
    sget-object v1, Ldb$4;->a:[I

    invoke-virtual {v0}, Ldb$h;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1219
    :cond_2
    sget-object v0, Ldb$h;->FINISHED:Ldb$h;

    if-ne p1, v0, :cond_5

    .line 1220
    invoke-virtual {p0}, Ldb;->e()V

    goto :goto_0

    .line 1211
    :cond_3
    sget-object v0, Ldb$h;->MOVING:Ldb$h;

    if-ne p1, v0, :cond_4

    .line 1212
    invoke-direct {p0}, Ldb;->l()V

    .line 1214
    :cond_4
    sget-object v0, Ldb$h;->FINISHED:Ldb$h;

    if-ne p1, v0, :cond_5

    .line 1215
    invoke-virtual {p0}, Ldb;->e()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 7

    .line 1362
    iget-object v0, p0, Ldb;->b:Ldd;

    if-eqz v0, :cond_8

    .line 1363
    invoke-virtual {p0, p1}, Ldb;->d(I)Ldd$a;

    move-result-object p1

    .line 1364
    iget v0, p0, Ldb;->f:I

    .line 1365
    invoke-virtual {p1}, Ldd$a;->d()I

    move-result v0

    iput v0, p0, Ldb;->M:I

    .line 1366
    invoke-virtual {p1}, Ldd$a;->c()I

    move-result v0

    iput v0, p0, Ldb;->N:I

    .line 1368
    invoke-virtual {p0}, Ldb;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1369
    iget-object p1, p0, Ldb;->ar:Ldb$f;

    if-nez p1, :cond_0

    .line 1370
    new-instance p1, Ldb$f;

    invoke-direct {p1, p0}, Ldb$f;-><init>(Ldb;)V

    iput-object p1, p0, Ldb;->ar:Ldb$f;

    .line 1372
    :cond_0
    iget-object p1, p0, Ldb;->ar:Ldb$f;

    iget v0, p0, Ldb;->M:I

    invoke-virtual {p1, v0}, Ldb$f;->b(I)V

    .line 1373
    iget-object p1, p0, Ldb;->ar:Ldb$f;

    iget v0, p0, Ldb;->N:I

    invoke-virtual {p1, v0}, Ldb$f;->a(I)V

    return-void

    :cond_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1385
    iget v1, p0, Ldb;->f:I

    iget v2, p0, Ldb;->M:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    move v0, v4

    goto :goto_0

    .line 1387
    :cond_2
    iget v2, p0, Ldb;->N:I

    if-ne v1, v2, :cond_3

    move v0, v3

    .line 1390
    :cond_3
    :goto_0
    iget-object v1, p0, Ldb;->b:Ldd;

    invoke-virtual {v1, p1}, Ldd;->a(Ldd$a;)V

    .line 1391
    iget-object p1, p0, Ldb;->K:Ldb$c;

    iget-object v1, p0, Ldb;->mLayoutWidget:Lbg;

    iget-object v2, p0, Ldb;->b:Ldd;

    iget v5, p0, Ldb;->M:I

    invoke-virtual {v2, v5}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v2

    iget-object v5, p0, Ldb;->b:Ldd;

    iget v6, p0, Ldb;->N:I

    invoke-virtual {v5, v6}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v5

    invoke-virtual {p1, v1, v2, v5}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 1392
    invoke-virtual {p0}, Ldb;->f()V

    .line 1394
    iget p1, p0, Ldb;->i:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_5

    cmpl-float p1, v0, v4

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 1398
    invoke-virtual {p0, p1}, Ldb;->a(Z)V

    .line 1399
    iget-object p1, p0, Ldb;->b:Ldd;

    iget v1, p0, Ldb;->M:I

    invoke-virtual {p1, v1}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_1

    :cond_4
    cmpl-float p1, v0, v3

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 1401
    invoke-virtual {p0, p1}, Ldb;->a(Z)V

    .line 1402
    iget-object p1, p0, Ldb;->b:Ldd;

    iget v1, p0, Ldb;->N:I

    invoke-virtual {p1, v1}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1406
    :cond_5
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v4, v0

    :goto_2
    iput v4, p0, Ldb;->i:F

    .line 1408
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " transitionToStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-virtual {p0}, Ldb;->b()V

    goto :goto_3

    .line 1412
    :cond_7
    invoke-virtual {p0, v0}, Ldb;->setProgress(F)V

    :cond_8
    :goto_3
    return-void
.end method

.method protected setTransition(Ldd$a;)V
    .locals 4

    .line 1418
    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0, p1}, Ldd;->a(Ldd$a;)V

    .line 1419
    sget-object v0, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {p0, v0}, Ldb;->setState(Ldb$h;)V

    .line 1420
    iget v0, p0, Ldb;->f:I

    iget-object v1, p0, Ldb;->b:Ldd;

    invoke-virtual {v1}, Ldd;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1421
    iput v0, p0, Ldb;->i:F

    .line 1422
    iput v0, p0, Ldb;->h:F

    .line 1423
    iput v0, p0, Ldb;->j:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1425
    iput v0, p0, Ldb;->i:F

    .line 1426
    iput v0, p0, Ldb;->h:F

    .line 1427
    iput v0, p0, Ldb;->j:F

    :goto_0
    const/4 v0, 0x1

    .line 1429
    invoke-virtual {p1, v0}, Ldd$a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ldb;->getNanoTime()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Ldb;->T:J

    .line 1434
    iget-object p1, p0, Ldb;->b:Ldd;

    invoke-virtual {p1}, Ldd;->d()I

    move-result p1

    .line 1435
    iget-object v0, p0, Ldb;->b:Ldd;

    invoke-virtual {v0}, Ldd;->e()I

    move-result v0

    .line 1436
    iget v1, p0, Ldb;->M:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Ldb;->N:I

    if-ne v0, v1, :cond_2

    return-void

    .line 1439
    :cond_2
    iput p1, p0, Ldb;->M:I

    .line 1440
    iput v0, p0, Ldb;->N:I

    .line 1441
    iget-object p1, p0, Ldb;->b:Ldd;

    iget v0, p0, Ldb;->M:I

    iget v1, p0, Ldb;->N:I

    invoke-virtual {p1, v0, v1}, Ldd;->a(II)V

    .line 1447
    iget-object p1, p0, Ldb;->K:Ldb$c;

    iget-object v0, p0, Ldb;->mLayoutWidget:Lbg;

    iget-object v1, p0, Ldb;->b:Ldd;

    iget v2, p0, Ldb;->M:I

    invoke-virtual {v1, v2}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v1

    iget-object v2, p0, Ldb;->b:Ldd;

    iget v3, p0, Ldb;->N:I

    invoke-virtual {v2, v3}, Ldd;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldb$c;->a(Lbg;Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V

    .line 1448
    iget-object p1, p0, Ldb;->K:Ldb$c;

    iget v0, p0, Ldb;->M:I

    iget v1, p0, Ldb;->N:I

    invoke-virtual {p1, v0, v1}, Ldb$c;->b(II)V

    .line 1449
    iget-object p1, p0, Ldb;->K:Ldb$c;

    invoke-virtual {p1}, Ldb$c;->a()V

    .line 1451
    invoke-virtual {p0}, Ldb;->f()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 1

    .line 4722
    iget-object v0, p0, Ldb;->b:Ldd;

    if-nez v0, :cond_0

    const-string p1, "MotionLayout"

    const-string v0, "MotionScene not defined"

    .line 4723
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4726
    :cond_0
    invoke-virtual {v0, p1}, Ldd;->d(I)V

    return-void
.end method

.method public setTransitionListener(Ldb$g;)V
    .locals 0

    .line 4290
    iput-object p1, p0, Ldb;->V:Ldb$g;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1

    .line 1680
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    if-nez v0, :cond_0

    .line 1681
    new-instance v0, Ldb$f;

    invoke-direct {v0, p0}, Ldb$f;-><init>(Ldb;)V

    iput-object v0, p0, Ldb;->ar:Ldb$f;

    .line 1683
    :cond_0
    iget-object v0, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {v0, p1}, Ldb$f;->a(Landroid/os/Bundle;)V

    .line 1684
    invoke-virtual {p0}, Ldb;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1685
    iget-object p1, p0, Ldb;->ar:Ldb$f;

    invoke-virtual {p1}, Ldb$f;->a()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2903
    invoke-virtual {p0}, Ldb;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Ldb;->M:I

    invoke-static {v0, v2}, Lcl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldb;->N:I

    .line 2905
    invoke-static {v0, v2}, Lcl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldb;->i:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldb;->e:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

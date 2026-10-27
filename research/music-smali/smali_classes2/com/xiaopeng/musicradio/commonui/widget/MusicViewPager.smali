.class public Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;
.super Landroid/view/ViewGroup;
.source "MusicViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$i;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$a;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$g;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;,
        Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;
    }
.end annotation


# static fields
.field static final a:[I

.field private static final aj:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$i;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:I

.field private L:Landroid/view/VelocityTracker;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Landroidx/core/widget/d;

.field private S:Landroidx/core/widget/d;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:I

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

.field private ac:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

.field private ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$g;

.field private af:I

.field private ag:Ljava/lang/reflect/Method;

.field private ah:I

.field private ai:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ak:Ljava/lang/Runnable;

.field private al:I

.field b:Lcom/xiaopeng/musicradio/commonui/widget/c;

.field c:I

.field private d:I

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

.field private final i:Landroid/graphics/Rect;

.field private j:I

.field private k:Landroid/os/Parcelable;

.field private l:Ljava/lang/ClassLoader;

.field private m:Landroid/widget/Scroller;

.field private n:Z

.field private o:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a:[I

    .line 149
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->e:Ljava/util/Comparator;

    .line 156
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$2;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$2;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->f:Landroid/view/animation/Interpolator;

    .line 261
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$i;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$i;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aj:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 401
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    .line 165
    new-instance p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->h:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 167
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->i:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 171
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->j:I

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->k:Landroid/os/Parcelable;

    .line 173
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->l:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 188
    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->t:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 189
    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    const/4 v0, 0x1

    .line 198
    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    .line 216
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    .line 243
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->U:Z

    .line 279
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$3;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ak:Ljava/lang/Runnable;

    .line 287
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->al:I

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    .line 165
    new-instance p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->h:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 167
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->i:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 171
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->j:I

    const/4 p2, 0x0

    .line 172
    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->k:Landroid/os/Parcelable;

    .line 173
    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->l:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 188
    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->t:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 189
    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    const/4 p2, 0x1

    .line 198
    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    .line 216
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    .line 243
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->U:Z

    .line 279
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$3;

    invoke-direct {p2, p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$3;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ak:Ljava/lang/Runnable;

    .line 287
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->al:I

    .line 407
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a()V

    return-void
.end method

.method private a(IFII)I
    .locals 1

    .line 2434
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->O:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->M:I

    if-le p4, v0, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2437
    :cond_1
    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-lt p1, p3, :cond_2

    const p3, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_2
    const p3, 0x3e99999a    # 0.3f

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 2441
    :goto_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 2442
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 2443
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 2446
    iget p2, p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget p3, p3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    .line 2884
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 2887
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2890
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2891
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2892
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2893
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2895
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2896
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    .line 2897
    check-cast p2, Landroid/view/ViewGroup;

    .line 2898
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2899
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2900
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2901
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2903
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private a(IIII)V
    .locals 1

    if-lez p2, :cond_1

    .line 1686
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1687
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1688
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_1

    .line 1690
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 1691
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1693
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 1697
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    goto :goto_1

    .line 1700
    :cond_1
    iget p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1701
    iget p2, p2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1703
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1704
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    .line 1705
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Z)V

    .line 1706
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(IZIZ)V
    .locals 5

    .line 685
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 689
    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->t:F

    iget v0, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    iget v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    .line 690
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 689
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 693
    invoke-virtual {p0, v0, v1, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(III)V

    if-eqz p4, :cond_3

    .line 695
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->e(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 699
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->e(I)V

    .line 701
    :cond_2
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Z)V

    .line 702
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    .line 703
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2673
    invoke-static {p1}, Lfs;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2674
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2675
    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2679
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2680
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    .line 2681
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    .line 2682
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;ILcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;)V
    .locals 10

    .line 1333
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    .line 1334
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 1335
    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p3, :cond_6

    .line 1338
    iget v3, p3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    .line 1340
    iget v4, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ge v3, v4, :cond_3

    .line 1343
    iget v4, p3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    iget p3, p3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    .line 1345
    :goto_1
    iget v5, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 1346
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 1347
    :goto_2
    iget v6, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-le v3, v6, :cond_1

    iget-object v6, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    .line 1349
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    goto :goto_2

    .line 1351
    :cond_1
    :goto_3
    iget v6, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ge v3, v6, :cond_2

    .line 1354
    iget-object v6, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v6, v3}, Lcom/xiaopeng/musicradio/commonui/widget/c;->d(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1357
    :cond_2
    iput v4, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    .line 1358
    iget v5, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1360
    :cond_3
    iget v4, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-le v3, v4, :cond_6

    .line 1361
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1363
    iget p3, p3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    add-int/lit8 v3, v3, -0x1

    .line 1365
    :goto_4
    iget v5, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-lt v3, v5, :cond_6

    if-ltz v4, :cond_6

    .line 1366
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 1367
    :goto_5
    iget v6, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ge v3, v6, :cond_4

    if-lez v4, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 1369
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    goto :goto_5

    .line 1371
    :cond_4
    :goto_6
    iget v6, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-le v3, v6, :cond_5

    .line 1374
    iget-object v6, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v6, v3}, Lcom/xiaopeng/musicradio/commonui/widget/c;->d(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1377
    :cond_5
    iget v6, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1378
    iput p3, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1384
    :cond_6
    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1385
    iget v3, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    .line 1386
    iget v4, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    add-int/lit8 v4, v4, -0x1

    .line 1387
    iget v5, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-nez v5, :cond_7

    iget v5, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    goto :goto_7

    :cond_7
    const v5, -0x800001

    :goto_7
    iput v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->t:F

    .line 1388
    iget v5, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_8

    iget v5, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    iget v7, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_8

    :cond_8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    add-int/lit8 v5, p2, -0x1

    :goto_9
    if-ltz v5, :cond_b

    .line 1392
    iget-object v7, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 1393
    :goto_a
    iget v8, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-le v4, v8, :cond_9

    .line 1394
    iget-object v8, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v4}, Lcom/xiaopeng/musicradio/commonui/widget/c;->d(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    move v4, v9

    goto :goto_a

    .line 1396
    :cond_9
    iget v8, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    .line 1397
    iput v3, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    .line 1398
    iget v7, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-nez v7, :cond_a

    iput v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->t:F

    :cond_a
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 1400
    :cond_b
    iget v3, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    iget v4, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1401
    iget p1, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_b
    if-ge p2, p3, :cond_e

    .line 1404
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 1405
    :goto_c
    iget v5, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ge p1, v5, :cond_c

    .line 1406
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Lcom/xiaopeng/musicradio/commonui/widget/c;->d(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_c

    .line 1408
    :cond_c
    iget v5, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ne v5, v0, :cond_d

    .line 1409
    iget v5, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    .line 1411
    :cond_d
    iput v3, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    .line 1412
    iget v4, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 1415
    :cond_e
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->U:Z

    return-void
.end method

.method private a(Z)V
    .locals 7

    .line 2005
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->al:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 2008
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollingCacheEnabled(Z)V

    .line 2009
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 2011
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2012
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v3

    .line 2013
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollY()I

    move-result v4

    .line 2014
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 2015
    iget-object v6, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    .line 2017
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    .line 2019
    invoke-direct {p0, v5}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d(I)Z

    .line 2024
    :cond_2
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->z:Z

    move v3, v0

    move v0, v2

    .line 2025
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 2026
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 2027
    iget-boolean v5, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->c:Z

    if-eqz v5, :cond_3

    .line 2029
    iput-boolean v2, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->c:Z

    move v3, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    .line 2034
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ak:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lgj;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2036
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ak:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(FF)Z
    .locals 3

    .line 2042
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->E:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->E:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(IFI)V
    .locals 3

    .line 1954
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ab:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v0, :cond_0

    .line 1955
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->a(IFI)V

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1958
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1959
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v2, :cond_1

    .line 1961
    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->a(IFI)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1965
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ac:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v0, :cond_3

    .line 1966
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->a(IFI)V

    :cond_3
    return-void
.end method

.method private b(Z)V
    .locals 6

    .line 2046
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    if-eqz p1, :cond_0

    .line 2048
    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->af:I

    goto :goto_1

    :cond_0
    move v3, v1

    .line 2050
    :goto_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lgj;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(F)Z
    .locals 9

    .line 2342
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    sub-float/2addr v0, p1

    .line 2343
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2345
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 2347
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2349
    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->t:F

    mul-float/2addr v1, v0

    .line 2350
    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    mul-float/2addr v2, v0

    .line 2354
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 2355
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 2356
    iget v6, v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-eqz v6, :cond_0

    .line 2358
    iget v1, v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v7

    .line 2360
    :goto_0
    iget v6, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget-object v8, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_1

    .line 2362
    iget v2, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    mul-float/2addr v2, v0

    move v7, v4

    :cond_1
    cmpg-float v5, p1, v1

    if-gez v5, :cond_3

    if-eqz v3, :cond_2

    sub-float p1, v1, p1

    .line 2368
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->R:Landroidx/core/widget/d;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroidx/core/widget/d;->a(F)Z

    move-result v4

    :cond_2
    move p1, v1

    goto :goto_1

    :cond_3
    cmpl-float v1, p1, v2

    if-lez v1, :cond_5

    if-eqz v7, :cond_4

    sub-float/2addr p1, v2

    .line 2374
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->S:Landroidx/core/widget/d;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroidx/core/widget/d;->a(F)Z

    move-result p1

    move v4, p1

    :cond_4
    move p1, v2

    .line 2379
    :cond_5
    :goto_1
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2380
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    .line 2381
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d(I)Z

    return v4
.end method

.method private c(Z)V
    .locals 1

    .line 2333
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2335
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/view/View;)Z
    .locals 1

    .line 1529
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1530
    const-class v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$a;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(I)Z
    .locals 7

    .line 1849
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1850
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    if-eqz p1, :cond_0

    return v2

    .line 1855
    :cond_0
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->V:Z

    const/4 p1, 0x0

    .line 1856
    invoke-virtual {p0, v2, p1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IFI)V

    .line 1857
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->V:Z

    if-eqz p1, :cond_1

    return v2

    .line 1858
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1863
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->i()Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v0

    .line 1864
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v3

    .line 1865
    iget v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 1867
    iget v6, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    .line 1868
    iget v3, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1872
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->V:Z

    .line 1873
    invoke-virtual {p0, v6, p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IFI)V

    .line 1874
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->V:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    .line 1875
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(I)V
    .locals 3

    .line 1971
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ab:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v0, :cond_0

    .line 1972
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->a(I)V

    .line 1974
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1975
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1976
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v2, :cond_1

    .line 1978
    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->a(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1982
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ac:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v0, :cond_3

    .line 1983
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->a(I)V

    :cond_3
    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    .line 565
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 566
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 567
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    .line 568
    iget-boolean v1, v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-nez v1, :cond_0

    .line 569
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private f(I)V
    .locals 3

    .line 1988
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ab:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v0, :cond_0

    .line 1989
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->b(I)V

    .line 1991
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1992
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1993
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v2, :cond_1

    .line 1995
    invoke-interface {v2, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->b(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1999
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ac:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    if-eqz v0, :cond_3

    .line 2000
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;->b(I)V

    :cond_3
    return-void
.end method

.method private g()V
    .locals 4

    .line 1317
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ah:I

    if-eqz v0, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ai:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ai:Ljava/util/ArrayList;

    goto :goto_0

    .line 1321
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1323
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 1325
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1326
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ai:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ai:Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aj:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private getClientWidth()I
    .locals 2

    .line 609
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private h()Z
    .locals 2

    const/4 v0, -0x1

    .line 2326
    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    .line 2327
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->j()V

    .line 2328
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->R:Landroidx/core/widget/d;

    invoke-virtual {v0}, Landroidx/core/widget/d;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->S:Landroidx/core/widget/d;

    invoke-virtual {v1}, Landroidx/core/widget/d;->c()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private i()Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;
    .locals 12

    .line 2391
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2392
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    .line 2393
    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move v5, v6

    .line 2400
    :goto_2
    iget-object v10, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_7

    .line 2401
    iget-object v10, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    if-nez v5, :cond_2

    .line 2403
    iget v11, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_2

    .line 2405
    iget-object v10, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->h:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 2406
    iput v8, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    .line 2407
    iput v7, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    .line 2408
    iget-object v7, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget v8, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/commonui/widget/c;->d(I)F

    move-result v7

    iput v7, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-int/lit8 v1, v1, -0x1

    .line 2411
    :cond_2
    iget v8, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    .line 2414
    iget v7, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v5, :cond_4

    cmpl-float v5, v2, v8

    if-ltz v5, :cond_3

    goto :goto_3

    :cond_3
    return-object v3

    :cond_4
    :goto_3
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_6

    .line 2416
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_5

    goto :goto_4

    .line 2423
    :cond_5
    iget v7, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    .line 2425
    iget v9, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move-object v3, v10

    goto :goto_2

    :cond_6
    :goto_4
    return-object v10

    :cond_7
    return-object v3
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    .line 2688
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    .line 2689
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->C:Z

    .line 2691
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2692
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2693
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 2698
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->y:Z

    if-eq v0, p1, :cond_0

    .line 2699
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->y:Z

    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 963
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method a(II)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;
    .locals 2

    .line 1042
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;-><init>()V

    .line 1043
    iput p1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    .line 1044
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->a:Ljava/lang/Object;

    .line 1045
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/commonui/widget/c;->d(I)F

    move-result p1

    iput p1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    if-ltz p2, :cond_1

    .line 1046
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 1049
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1047
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;
    .locals 4

    const/4 v0, 0x0

    .line 1543
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1544
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 1545
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget-object v3, v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method a()V
    .locals 5

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 412
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setFocusable(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 415
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->f:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    .line 416
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 417
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 419
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->F:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 420
    iput v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->M:I

    .line 421
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->N:I

    .line 422
    new-instance v2, Landroidx/core/widget/d;

    invoke-direct {v2, v1}, Landroidx/core/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->R:Landroidx/core/widget/d;

    .line 423
    new-instance v2, Landroidx/core/widget/d;

    invoke-direct {v2, v1}, Landroidx/core/widget/d;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->S:Landroidx/core/widget/d;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 425
    iput v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->O:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 426
    iput v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->P:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 427
    iput v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->D:I

    .line 429
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$d;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V

    invoke-static {p0, v1}, Lgj;->a(Landroid/view/View;Lfh;)V

    .line 431
    invoke-static {p0}, Lgj;->f(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 433
    invoke-static {p0, v0}, Lgj;->d(Landroid/view/View;I)V

    .line 437
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$4;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V

    invoke-static {p0, v0}, Lgj;->a(Landroid/view/View;Lgb;)V

    return-void
.end method

.method a(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1131
    iget v2, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-eq v2, v1, :cond_0

    .line 1132
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v2

    .line 1133
    iput v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1136
    :goto_0
    iget-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-nez v1, :cond_1

    .line 1137
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g()V

    return-void

    .line 1145
    :cond_1
    iget-boolean v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->z:Z

    if-eqz v1, :cond_2

    .line 1147
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g()V

    return-void

    .line 1154
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 1158
    :cond_3
    iget-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;)V

    .line 1160
    iget v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    .line 1161
    iget v4, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1162
    iget-object v6, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 1163
    iget v8, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1165
    iget v7, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d:I

    if-ne v6, v7, :cond_1e

    move v7, v5

    .line 1183
    :goto_1
    iget-object v8, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1184
    iget-object v8, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 1185
    iget v9, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v10, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-lt v9, v10, :cond_4

    .line 1186
    iget v9, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v10, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    .line 1192
    iget v8, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    invoke-virtual {v0, v8, v7}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(II)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v8

    :cond_6
    if-eqz v8, :cond_15

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    .line 1201
    iget-object v11, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 1202
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    const/4 v3, 0x0

    goto :goto_4

    .line 1203
    :cond_8
    iget v14, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    sub-float v14, v13, v14

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float v3, v14, v15

    .line 1205
    :goto_4
    iget v14, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move v5, v7

    const/4 v7, 0x0

    :goto_5
    if-ltz v14, :cond_d

    cmpl-float v16, v7, v3

    if-ltz v16, :cond_a

    if-ge v14, v4, :cond_a

    if-nez v11, :cond_9

    goto :goto_7

    .line 1210
    :cond_9
    iget v9, v11, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ne v14, v9, :cond_c

    iget-boolean v9, v11, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->c:Z

    if-nez v9, :cond_c

    .line 1211
    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1212
    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget-object v11, v11, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v9, v0, v14, v11}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v5, v5, -0x1

    if-ltz v10, :cond_b

    .line 1219
    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_c

    .line 1221
    iget v9, v11, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ne v14, v9, :cond_c

    .line 1222
    iget v9, v11, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v7, v9

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_b

    .line 1224
    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    move-object v11, v9

    :cond_c
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 1233
    :cond_d
    :goto_7
    iget v3, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-int/lit8 v4, v5, 0x1

    .line 1235
    iget v7, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v13

    cmpg-float v9, v3, v7

    if-gez v9, :cond_14

    .line 1237
    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_e

    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    :goto_8
    if-gtz v12, :cond_f

    const/4 v7, 0x0

    goto :goto_9

    .line 1239
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingRight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v12

    div-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 1240
    :goto_9
    iget v10, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    add-int/2addr v10, v15

    :goto_a
    if-ge v10, v6, :cond_14

    cmpl-float v11, v3, v7

    if-ltz v11, :cond_12

    if-le v10, v1, :cond_12

    if-nez v9, :cond_10

    goto :goto_c

    .line 1245
    :cond_10
    iget v11, v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ne v10, v11, :cond_13

    iget-boolean v11, v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->c:Z

    if-nez v11, :cond_13

    .line 1246
    iget-object v11, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1247
    iget-object v11, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget-object v9, v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v11, v0, v10, v9}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1252
    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_11

    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    goto :goto_b

    :cond_12
    if-eqz v9, :cond_13

    .line 1254
    iget v11, v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ne v10, v11, :cond_13

    .line 1255
    iget v9, v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v3, v9

    add-int/lit8 v4, v4, 0x1

    .line 1257
    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_11

    iget-object v9, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    :cond_13
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 1267
    :cond_14
    :goto_c
    invoke-direct {v0, v8, v5, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;ILcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;)V

    .line 1277
    :cond_15
    iget-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget v2, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-eqz v8, :cond_16

    iget-object v3, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->a:Ljava/lang/Object;

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1279
    iget-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(Landroid/view/ViewGroup;)V

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_19

    .line 1285
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1286
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    .line 1287
    iput v2, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->f:I

    .line 1288
    iget-boolean v5, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-nez v5, :cond_17

    iget v5, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->c:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_18

    .line 1290
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 1292
    iget v5, v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    iput v5, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->c:F

    .line 1293
    iget v3, v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iput v3, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->e:I

    goto :goto_f

    :cond_17
    const/4 v6, 0x0

    :cond_18
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1297
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g()V

    .line 1299
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1300
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1301
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v3

    goto :goto_10

    :cond_1a
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_1b

    .line 1302
    iget v1, v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v2, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-eq v1, v2, :cond_1d

    :cond_1b
    const/4 v1, 0x0

    .line 1303
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1304
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1305
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 1306
    iget v3, v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v4, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x2

    .line 1307
    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_12

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1d
    :goto_12
    return-void

    .line 1168
    :cond_1e
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    .line 1170
    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1172
    :goto_13
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s MusicPagerAdapter changed the adapter\'s contents without calling MusicPagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    .line 1177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected a(IFI)V
    .locals 12

    .line 1896
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->W:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 1897
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v0

    .line 1898
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingLeft()I

    move-result v3

    .line 1899
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingRight()I

    move-result v4

    .line 1900
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getWidth()I

    move-result v5

    .line 1901
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    .line 1903
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1904
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    .line 1905
    iget-boolean v10, v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-nez v10, :cond_0

    goto :goto_3

    .line 1907
    :cond_0
    iget v9, v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->b:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_3

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    move v9, v4

    goto :goto_2

    :cond_1
    sub-int v9, v5, v7

    .line 1922
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1923
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_1

    .line 1915
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_2

    .line 1918
    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_2
    add-int/2addr v4, v0

    .line 1928
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_4

    .line 1930
    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_4
    move v4, v9

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1935
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(IFI)V

    .line 1937
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ae:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$g;

    if-eqz p1, :cond_7

    .line 1938
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result p1

    .line 1939
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result p2

    :goto_4
    if-ge v1, p2, :cond_7

    .line 1941
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1942
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    .line 1944
    iget-boolean v0, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-eqz v0, :cond_6

    goto :goto_5

    .line 1945
    :cond_6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1946
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ae:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$g;

    invoke-interface {v3, p3, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$g;->a(Landroid/view/View;F)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1950
    :cond_7
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->V:Z

    return-void
.end method

.method a(III)V
    .locals 9

    .line 984
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 986
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 997
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    .line 999
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1000
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_2

    .line 1002
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v0

    :goto_2
    move v4, v0

    .line 1004
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 1008
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Z)V

    .line 1009
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c()V

    .line 1010
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollState(I)V

    return-void

    .line 1014
    :cond_4
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 1015
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollState(I)V

    .line 1017
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result p1

    .line 1018
    div-int/lit8 p2, p1, 0x2

    .line 1019
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 1021
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 1024
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_5

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 1026
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    .line 1028
    :cond_5
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/commonui/widget/c;->d(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 1029
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    .line 1032
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1036
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->n:Z

    .line 1037
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1038
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->z:Z

    .line 632
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZZ)V

    return-void
.end method

.method public a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    :cond_0
    if-nez p3, :cond_1

    .line 648
    iget p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 649
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 656
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result p1

    sub-int/2addr p1, p3

    .line 658
    :cond_3
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    .line 659
    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 663
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 664
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    iput-boolean p3, v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 667
    :cond_5
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-eq v0, p1, :cond_6

    goto :goto_2

    :cond_6
    move p3, v1

    .line 669
    :goto_2
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    if-eqz v0, :cond_8

    .line 672
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-eqz p3, :cond_7

    .line 674
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->e(I)V

    .line 676
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->requestLayout()V

    goto :goto_3

    .line 678
    :cond_8
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(I)V

    .line 679
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZIZ)V

    :goto_3
    return-void

    .line 645
    :cond_9
    :goto_4
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;)V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ad:Ljava/util/List;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ad:Ljava/util/List;

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ad:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;)V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 2785
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 2786
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2794
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 2797
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 2798
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 2799
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2800
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x42

    .line 2791
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 2788
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c(I)Z

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 2747
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2748
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2749
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2750
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2751
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 2756
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2757
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 2758
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 2759
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2760
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2759
    invoke-virtual/range {v6 .. v11}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move v1, p3

    neg-int v1, v1

    .line 2766
    invoke-static {p1, v1}, Lgj;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2929
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2931
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    .line 2934
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2935
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2936
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2937
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2938
    iget v4, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-ne v4, v5, :cond_0

    .line 2939
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_2

    .line 2950
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 2953
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    .line 2957
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 2961
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2974
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2975
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2976
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2977
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2978
    iget v2, v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-ne v2, v3, :cond_0

    .line 2979
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1503
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1506
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    .line 1508
    iget-boolean v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    invoke-static {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    .line 1509
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->x:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 1510
    iget-boolean v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 1513
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->d:Z

    .line 1514
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1516
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method b(I)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;
    .locals 3

    const/4 v0, 0x0

    .line 1564
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1565
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 1566
    iget v2, v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method b(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;
    .locals 1

    .line 1554
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_1

    .line 1555
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1558
    :cond_0
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 1560
    :cond_2
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 10

    .line 1057
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    .line 1058
    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d:I

    .line 1059
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    .line 1060
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 1061
    :goto_0
    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    move v5, v1

    move v6, v2

    move v1, v4

    move v2, v1

    .line 1064
    :goto_1
    iget-object v7, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    .line 1065
    iget-object v7, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 1066
    iget-object v8, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget-object v9, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    .line 1073
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_2

    .line 1077
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v2, p0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;)V

    move v2, v3

    .line 1081
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget v8, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget-object v9, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1084
    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    iget v7, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ne v5, v7, :cond_3

    .line 1086
    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_3
    :goto_2
    move v5, v3

    goto :goto_3

    .line 1092
    :cond_4
    iget v9, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-eq v9, v8, :cond_6

    .line 1093
    iget v5, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v9, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-ne v5, v9, :cond_5

    move v6, v8

    .line 1098
    :cond_5
    iput v8, v7, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v1, v3

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 1104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(Landroid/view/ViewGroup;)V

    .line 1107
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    sget-object v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->e:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b

    .line 1111
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_4
    if-ge v1, v0, :cond_a

    .line 1113
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1114
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    .line 1115
    iget-boolean v5, v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-nez v5, :cond_9

    const/4 v5, 0x0

    .line 1116
    iput v5, v2, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->c:F

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1120
    :cond_a
    invoke-virtual {p0, v6, v4, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZZ)V

    .line 1121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->requestLayout()V

    :cond_b
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ad:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 604
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;)V
    .locals 1

    .line 745
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->aa:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 746
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .line 1126
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(I)V

    return-void
.end method

.method public c(I)Z
    .locals 6

    .line 2817
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    .line 2822
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    if-ne v4, p0, :cond_1

    move v4, v1

    goto :goto_1

    .line 2823
    :cond_1
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_1
    if-nez v4, :cond_4

    .line 2831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2832
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    const-string v5, " => "

    .line 2835
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2837
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    .line 2837
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v3, v0

    .line 2845
    :goto_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_8

    if-ne p1, v5, :cond_6

    .line 2851
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2852
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_5

    if-lt v1, v2, :cond_5

    .line 2854
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d()Z

    move-result v0

    goto :goto_4

    .line 2856
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_4
    move v2, v0

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_c

    .line 2861
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2862
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->i:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_7

    if-gt v1, v2, :cond_7

    .line 2864
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->e()Z

    move-result v0

    goto :goto_4

    .line 2866
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_4

    :cond_8
    if-eq p1, v5, :cond_b

    if-ne p1, v1, :cond_9

    goto :goto_5

    :cond_9
    if-eq p1, v4, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 2874
    :cond_a
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->e()Z

    move-result v2

    goto :goto_6

    .line 2871
    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d()Z

    move-result v2

    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 2877
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->playSoundEffect(I)V

    :cond_d
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    .line 2720
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2724
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v0

    .line 2725
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    .line 2727
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->t:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    .line 2729
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 3053
    instance-of v0, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    .line 1824
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->n:Z

    .line 1825
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1826
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v0

    .line 1827
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollY()I

    move-result v1

    .line 1828
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1829
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1832
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    .line 1833
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1834
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1835
    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    .line 1840
    :cond_1
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    return-void

    .line 1845
    :cond_2
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Z)V

    return-void
.end method

.method d()Z
    .locals 2

    .line 2909
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2910
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2772
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 3021
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 3022
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3026
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3028
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3029
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 3030
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3031
    iget v4, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-ne v4, v5, :cond_1

    .line 3032
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 2454
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2457
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v0, :cond_0

    .line 2460
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 2484
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->R:Landroidx/core/widget/d;

    invoke-virtual {p1}, Landroidx/core/widget/d;->b()V

    .line 2485
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->S:Landroidx/core/widget/d;

    invoke-virtual {p1}, Landroidx/core/widget/d;->b()V

    goto/16 :goto_1

    .line 2461
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->R:Landroidx/core/widget/d;

    invoke-virtual {v0}, Landroidx/core/widget/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2462
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2463
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2464
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 2466
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 2467
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->t:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2468
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->R:Landroidx/core/widget/d;

    invoke-virtual {v4, v2, v3}, Landroidx/core/widget/d;->a(II)V

    .line 2469
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->R:Landroidx/core/widget/d;

    invoke-virtual {v2, p1}, Landroidx/core/widget/d;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2470
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2472
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->S:Landroidx/core/widget/d;

    invoke-virtual {v0}, Landroidx/core/widget/d;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2473
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2474
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getWidth()I

    move-result v2

    .line 2475
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2477
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2478
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->u:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2479
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->S:Landroidx/core/widget/d;

    invoke-virtual {v4, v3, v2}, Landroidx/core/widget/d;->a(II)V

    .line 2480
    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->S:Landroidx/core/widget/d;

    invoke-virtual {v2, p1}, Landroidx/core/widget/d;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2481
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 2490
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 949
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 950
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method e()Z
    .locals 3

    .line 2917
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 2918
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3043
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 3058
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3048
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Lcom/xiaopeng/musicradio/commonui/widget/c;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 836
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ah:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 837
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ai:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    iget p1, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->f:I

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    .line 636
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .line 862
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .line 918
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1575
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1576
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ak:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 494
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2496
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2499
    iget v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v1, :cond_4

    .line 2500
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v1

    .line 2501
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getWidth()I

    move-result v2

    .line 2503
    iget v3, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2505
    iget-object v5, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 2506
    iget v7, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    .line 2507
    iget-object v8, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2508
    iget v9, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    .line 2509
    iget-object v10, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    iget v10, v10, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    :goto_0
    if-ge v9, v10, :cond_4

    .line 2511
    :goto_1
    iget v11, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-le v9, v11, :cond_0

    if-ge v6, v8, :cond_0

    .line 2512
    iget-object v5, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    goto :goto_1

    .line 2516
    :cond_0
    iget v11, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    if-ne v9, v11, :cond_1

    .line 2517
    iget v7, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    iget v11, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v7, v11

    mul-float/2addr v7, v4

    .line 2518
    iget v11, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    iget v12, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    goto :goto_2

    .line 2520
    :cond_1
    iget-object v11, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v11, v9}, Lcom/xiaopeng/musicradio/commonui/widget/c;->d(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v7

    move v7, v12

    .line 2525
    :goto_2
    iget v12, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    .line 2526
    iget-object v12, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->r:I

    iget v15, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    .line 2527
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->s:I

    .line 2526
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2528
    iget-object v3, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_3
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    .line 2062
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_2

    .line 2075
    iget-boolean v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    if-eqz v1, :cond_1

    return v9

    .line 2079
    :cond_1
    iget-boolean v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->C:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 2179
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 2096
    :cond_4
    iget v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_2

    .line 2102
    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2103
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2104
    iget v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    sub-float v1, v10, v1

    .line 2105
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2106
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2107
    iget v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->J:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_6

    .line 2110
    iget v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2111
    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2113
    iput v10, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2114
    iput v12, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->H:F

    .line 2115
    iput-boolean v9, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->C:Z

    return v8

    .line 2118
    :cond_6
    iget v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->F:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_8

    .line 2120
    iput-boolean v9, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    .line 2121
    invoke-direct {p0, v9}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c(Z)V

    .line 2122
    invoke-virtual {p0, v9}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollState(I)V

    if-lez v14, :cond_7

    .line 2123
    iget v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->I:F

    iget v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->F:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    iget v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->I:F

    iget v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->F:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2125
    iput v12, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->H:F

    .line 2126
    invoke-direct {p0, v9}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 2127
    :cond_8
    iget v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->F:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    .line 2133
    iput-boolean v9, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->C:Z

    .line 2135
    :cond_9
    :goto_1
    iget-boolean v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    if-eqz v0, :cond_c

    .line 2137
    invoke-direct {p0, v10}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2138
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    goto :goto_2

    .line 2149
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->I:F

    iput v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->J:F

    iput v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->H:F

    .line 2151
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    .line 2152
    iput-boolean v8, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->C:Z

    .line 2154
    iput-boolean v9, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->n:Z

    .line 2155
    iget-object v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2156
    iget v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->al:I

    if-ne v0, v1, :cond_b

    iget-object v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    .line 2157
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->P:I

    if-le v0, v1, :cond_b

    .line 2159
    iget-object v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2160
    iput-boolean v8, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->z:Z

    .line 2161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c()V

    .line 2162
    iput-boolean v9, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    .line 2163
    invoke-direct {p0, v9}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c(Z)V

    .line 2164
    invoke-virtual {p0, v9}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollState(I)V

    goto :goto_2

    .line 2166
    :cond_b
    invoke-direct {p0, v8}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Z)V

    .line 2167
    iput-boolean v8, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    .line 2183
    :cond_c
    :goto_2
    iget-object v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_d

    .line 2184
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    .line 2186
    :cond_d
    iget-object v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2192
    iget-boolean v0, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    return v0

    .line 2068
    :cond_e
    :goto_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->h()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1716
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingLeft()I

    move-result v4

    .line 1717
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingTop()I

    move-result v5

    .line 1718
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingRight()I

    move-result v6

    .line 1719
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingBottom()I

    move-result v7

    .line 1720
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    const/16 v12, 0x8

    if-ge v4, v1, :cond_7

    .line 1727
    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1728
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_6

    .line 1729
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    .line 1732
    iget-boolean v14, v12, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-eqz v14, :cond_6

    .line 1733
    iget v14, v12, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->b:I

    and-int/lit8 v14, v14, 0x7

    .line 1734
    iget v12, v12, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->b:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    const/4 v15, 0x5

    if-eq v14, v15, :cond_0

    move v14, v5

    goto :goto_1

    :cond_0
    sub-int v14, v2, v6

    .line 1748
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1749
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_1

    .line 1741
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_1

    .line 1744
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_1
    const/16 v15, 0x10

    if-eq v12, v15, :cond_5

    const/16 v15, 0x30

    if-eq v12, v15, :cond_4

    const/16 v15, 0x50

    if-eq v12, v15, :cond_3

    move v12, v7

    goto :goto_2

    :cond_3
    sub-int v12, v3, v10

    .line 1765
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1766
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_2

    .line 1758
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_2

    .line 1761
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_2
    add-int/2addr v14, v8

    .line 1771
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 1772
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    .line 1770
    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_a

    .line 1781
    invoke-virtual {v0, v4}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1782
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_9

    .line 1783
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    .line 1785
    iget-boolean v9, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-nez v9, :cond_9

    invoke-virtual {v0, v6}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v9

    if-eqz v9, :cond_9

    int-to-float v13, v2

    .line 1786
    iget v9, v9, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    mul-float/2addr v9, v13

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 1789
    iget-boolean v14, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->d:Z

    if-eqz v14, :cond_8

    const/4 v14, 0x0

    .line 1792
    iput-boolean v14, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->d:Z

    .line 1793
    iget v8, v8, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->c:F

    mul-float/2addr v13, v8

    float-to-int v8, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v14, v3, v7

    sub-int/2addr v14, v10

    .line 1796
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1799
    invoke-virtual {v6, v8, v13}, Landroid/view/View;->measure(II)V

    .line 1807
    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    .line 1808
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    .line 1806
    invoke-virtual {v6, v9, v7, v8, v13}, Landroid/view/View;->layout(IIII)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1812
    :cond_a
    iput v7, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->r:I

    sub-int/2addr v3, v10

    .line 1813
    iput v3, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->s:I

    .line 1814
    iput v11, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->W:I

    .line 1816
    iget-boolean v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    if-eqz v1, :cond_b

    .line 1817
    iget v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZIZ)V

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 1819
    :goto_4
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1586
    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    .line 1587
    invoke-static {v1, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1586
    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setMeasuredDimension(II)V

    .line 1589
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getMeasuredWidth()I

    move-result v2

    .line 1590
    div-int/lit8 v3, v2, 0xa

    .line 1591
    iget v4, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->D:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->E:I

    .line 1594
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1595
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1602
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v4

    move v5, v3

    move v3, v2

    move v2, v1

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_c

    .line 1604
    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1605
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_b

    .line 1606
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    if-eqz v6, :cond_b

    .line 1607
    iget-boolean v10, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-eqz v10, :cond_b

    .line 1608
    iget v10, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->b:I

    and-int/lit8 v10, v10, 0x7

    .line 1609
    iget v11, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->b:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_1

    const/16 v12, 0x50

    if-ne v11, v12, :cond_0

    goto :goto_1

    :cond_0
    move v11, v1

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v7

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    const/4 v12, 0x5

    if-ne v10, v12, :cond_2

    goto :goto_3

    :cond_2
    move v7, v1

    :cond_3
    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_4

    move v12, v10

    move v10, v8

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    move v12, v8

    goto :goto_4

    :cond_5
    move v12, v10

    .line 1623
    :goto_4
    iget v13, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_7

    .line 1625
    iget v10, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->width:I

    if-eq v10, v14, :cond_6

    .line 1626
    iget v10, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->width:I

    move v13, v10

    goto :goto_5

    :cond_6
    move v13, v3

    :goto_5
    move v10, v8

    goto :goto_6

    :cond_7
    move v13, v3

    .line 1629
    :goto_6
    iget v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->height:I

    if-eq v1, v15, :cond_9

    .line 1631
    iget v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->height:I

    if-eq v1, v14, :cond_8

    .line 1632
    iget v1, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->height:I

    goto :goto_7

    :cond_8
    move v1, v5

    goto :goto_7

    :cond_9
    move v1, v5

    move v8, v12

    .line 1635
    :goto_7
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1636
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1637
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_a

    .line 1640
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_8

    :cond_a
    if-eqz v7, :cond_b

    .line 1642
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1648
    :cond_c
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->v:I

    .line 1649
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->w:I

    .line 1652
    iput-boolean v7, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->x:Z

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c()V

    const/4 v1, 0x0

    .line 1654
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->x:Z

    .line 1657
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v2

    :goto_9
    if-ge v1, v2, :cond_f

    .line 1659
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1660
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_e

    .line 1665
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;

    if-eqz v5, :cond_d

    .line 1666
    iget-boolean v7, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->a:Z

    if-nez v7, :cond_e

    :cond_d
    int-to-float v7, v3

    .line 1667
    iget v5, v5, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$c;->c:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1669
    iget v7, v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->w:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 2994
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-eq v0, v3, :cond_2

    .line 3005
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3006
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 3007
    invoke-virtual {p0, v5}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/View;)Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 3008
    iget v6, v6, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget v7, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    if-ne v6, v7, :cond_1

    .line 3009
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1483
    instance-of v0, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1484
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1488
    :cond_0
    check-cast p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;

    .line 1489
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1491
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v0, :cond_1

    .line 1492
    iget-object v1, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1493
    iget p1, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZZ)V

    goto :goto_0

    .line 1495
    :cond_1
    iget v0, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->a:I

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->j:I

    .line 1496
    iget-object v0, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->k:Landroid/os/Parcelable;

    .line 1497
    iget-object p1, p1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->l:Ljava/lang/ClassLoader;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1472
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1473
    new-instance v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1474
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    iput v0, v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->a:I

    .line 1475
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v0, :cond_0

    .line 1476
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$SavedState;->b:Landroid/os/Parcelable;

    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1677
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 1681
    iget p2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 2197
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->Q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2204
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 2210
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 2215
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 2216
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    .line 2218
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_1

    .line 2314
    :cond_4
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(Landroid/view/MotionEvent;)V

    .line 2315
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    goto/16 :goto_1

    .line 2307
    :cond_5
    invoke-static {p1}, Lfs;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2308
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2309
    iput v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2310
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    goto/16 :goto_1

    .line 2301
    :cond_6
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    if-eqz p1, :cond_d

    .line 2302
    iget p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZIZ)V

    .line 2303
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->h()Z

    move-result v2

    goto/16 :goto_1

    .line 2236
    :cond_7
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    if-nez v0, :cond_a

    .line 2237
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    .line 2241
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->h()Z

    move-result v2

    goto/16 :goto_1

    .line 2244
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2245
    iget v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2246
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2247
    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->H:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2251
    iget v6, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->F:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    .line 2253
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    .line 2254
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c(Z)V

    .line 2255
    iget v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->I:F

    sub-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_9

    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->F:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->F:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    :goto_0
    iput v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2257
    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->H:F

    .line 2258
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollState(I)V

    .line 2259
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setScrollingCacheEnabled(Z)V

    .line 2262
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2264
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2269
    :cond_a
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    if-eqz v0, :cond_d

    .line 2271
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2272
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2273
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_1

    .line 2277
    :cond_b
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->B:Z

    if-eqz v0, :cond_d

    .line 2278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->L:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 2279
    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->N:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2280
    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    invoke-static {v0, v2}, Lgi;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 2282
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->z:Z

    .line 2283
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getClientWidth()I

    move-result v2

    .line 2284
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getScrollX()I

    move-result v3

    .line 2285
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->i()Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    move-result-object v4

    .line 2286
    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 2287
    iget v6, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2288
    iget v2, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->e:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->d:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    .line 2290
    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2291
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2292
    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->I:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 2293
    invoke-direct {p0, v6, v3, v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IFII)I

    move-result p1

    .line 2295
    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZZI)V

    .line 2297
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->h()Z

    move-result v2

    goto :goto_1

    .line 2225
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->m:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2226
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->z:Z

    .line 2227
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c()V

    .line 2230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->I:F

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->G:F

    .line 2231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->J:F

    iput v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->H:F

    .line 2232
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->K:I

    :cond_d
    :goto_1
    if-eqz v2, :cond_e

    .line 2319
    invoke-static {p0}, Lgj;->e(Landroid/view/View;)V

    :cond_e
    return v1

    :cond_f
    :goto_2
    return v2
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1535
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->x:Z

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1538
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/xiaopeng/musicradio/commonui/widget/c;)V
    .locals 7

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/c;->c(Landroid/database/DataSetObserver;)V

    .line 518
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 519
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;

    .line 521
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget v5, v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->b:I

    iget-object v3, v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$b;->a:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(Landroid/view/ViewGroup;)V

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->f()V

    .line 526
    iput v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c:I

    .line 527
    invoke-virtual {p0, v2, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->scrollTo(II)V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    .line 531
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    .line 532
    iput v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d:I

    .line 534
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    if-eqz v3, :cond_5

    .line 535
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->o:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;

    if-nez v3, :cond_2

    .line 536
    new-instance v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;-><init>(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;)V

    iput-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->o:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;

    .line 538
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->o:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$h;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/commonui/widget/c;->c(Landroid/database/DataSetObserver;)V

    .line 539
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->z:Z

    .line 540
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    const/4 v4, 0x1

    .line 541
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    .line 542
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->d:I

    .line 543
    iget v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->j:I

    if-ltz v5, :cond_3

    .line 544
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b:Lcom/xiaopeng/musicradio/commonui/widget/c;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->k:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->l:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 545
    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->j:I

    invoke-virtual {p0, v3, v2, v4}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZZ)V

    const/4 v3, -0x1

    .line 546
    iput v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->j:I

    .line 547
    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->k:Landroid/os/Parcelable;

    .line 548
    iput-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->l:Ljava/lang/ClassLoader;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 550
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c()V

    goto :goto_1

    .line 552
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->requestLayout()V

    .line 557
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ad:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 558
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_6

    .line 559
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ad:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;

    invoke-interface {v3, p0, v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$e;->a(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;Lcom/xiaopeng/musicradio/commonui/widget/c;Lcom/xiaopeng/musicradio/commonui/widget/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 7

    .line 817
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 818
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ag:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "ViewPager"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 820
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v4, "setChildrenDrawingOrderEnabled"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ag:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    .line 823
    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 827
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ag:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "Error changing children drawing order"

    .line 829
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->z:Z

    .line 621
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->T:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IZZ)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    .line 888
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    if-eq p1, v0, :cond_0

    .line 889
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->A:I

    .line 890
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->c()V

    :cond_0
    return-void
.end method

.method public setOnPageChangeListener(Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 718
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ab:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$f;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 903
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    .line 904
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->p:I

    .line 906
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getWidth()I

    move-result v1

    .line 907
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->a(IIII)V

    .line 909
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .line 939
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ldj;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 929
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->setWillNotDraw(Z)V

    .line 930
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->invalidate()V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 498
    iget v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->al:I

    if-ne v0, p1, :cond_0

    return-void

    .line 502
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->al:I

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->ae:Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager$g;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 505
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->b(Z)V

    .line 507
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->f(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 944
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/widget/MusicViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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

.class public Lcom/xiaopeng/musicradio/widget/j;
.super Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;
.source "RecyclerTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/j$d;,
        Lcom/xiaopeng/musicradio/widget/j$b;,
        Lcom/xiaopeng/musicradio/widget/j$a;,
        Lcom/xiaopeng/musicradio/widget/j$e;,
        Lcom/xiaopeng/musicradio/widget/j$c;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field protected a:Landroid/graphics/Paint;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected o:Lcom/xiaopeng/musicradio/widget/j$c;

.field protected p:Landroidx/viewpager/widget/ViewPager;

.field protected q:Lcom/xiaopeng/musicradio/widget/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/widget/j$a<",
            "*>;"
        }
    .end annotation
.end field

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:F

.field protected v:F

.field protected w:Z

.field protected x:Z

.field public y:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/j;->setWillNotDraw(Z)V

    .line 90
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/j;->a:Landroid/graphics/Paint;

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/j;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance p2, Lcom/xiaopeng/musicradio/widget/j$1;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/xiaopeng/musicradio/widget/j$1;-><init>(Lcom/xiaopeng/musicradio/widget/j;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 98
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/j;->C:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 99
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/j;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p2, 0x0

    .line 100
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/j;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const p2, 0x3f19999a    # 0.6f

    .line 101
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/j;->v:F

    .line 102
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j;->y:Landroid/content/Context;

    .line 103
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/j;->setVuiLayoutLoadable(Z)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 107
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout:[I

    sget v1, Lcom/xiaopeng/musicradio/common/k$h;->rtl_RecyclerTabLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 109
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/j;->setIndicatorColor(I)V

    .line 112
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabIndicatorHeight:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/widget/j;->setIndicatorHeight(I)V

    .line 115
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabTextAppearance:I

    sget v0, Lcom/xiaopeng/musicradio/common/k$h;->rtl_RecyclerTabLayout_Tab:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->f:I

    .line 118
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabPadding:I

    .line 119
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->l:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->k:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->j:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->i:I

    .line 120
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabPaddingStart:I

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j;->i:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->i:I

    .line 122
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabPaddingTop:I

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j;->j:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->j:I

    .line 124
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabPaddingEnd:I

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j;->k:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->k:I

    .line 126
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabPaddingBottom:I

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j;->l:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->l:I

    .line 129
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_orientation:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->C:I

    .line 131
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabSelectedTextColor:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 134
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/j;->g:I

    .line 135
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/j;->h:Z

    .line 138
    :cond_0
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabOnScreenLimit:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->c:I

    .line 140
    iget p3, p0, Lcom/xiaopeng/musicradio/widget/j;->c:I

    if-nez p3, :cond_1

    .line 141
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabMinWidth:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->d:I

    .line 143
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_tabMaxWidth:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/j;->e:I

    .line 149
    :cond_1
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/j;->b:I

    .line 150
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->rtl_RecyclerTabLayout_rtl_scrollEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/widget/j;->x:Z

    .line 151
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 253
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/musicradio/widget/j;->a(IFZ)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->q:Lcom/xiaopeng/musicradio/widget/j$a;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/j$a;->a(I)V

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/j;->q:Lcom/xiaopeng/musicradio/widget/j$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/j$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected a(IFF)V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->q:Lcom/xiaopeng/musicradio/widget/j$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    const v3, 0x3a83126f    # 0.001f

    if-lez v2, :cond_1

    .line 330
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->v:F

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    .line 333
    iget v1, p0, Lcom/xiaopeng/musicradio/widget/j;->v:F

    sub-float/2addr p2, v1

    add-float/2addr p2, v3

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    if-ltz p1, :cond_3

    .line 336
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/j;->q:Lcom/xiaopeng/musicradio/widget/j$a;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/j$a;->b()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 337
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/j;->q:Lcom/xiaopeng/musicradio/widget/j$a;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/j$a;->a(I)V

    .line 338
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/j;->q:Lcom/xiaopeng/musicradio/widget/j$a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/j$a;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public a(IFZ)V
    .locals 8

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->getMeasuredWidth()I

    move-result v4

    if-nez p1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    int-to-float v5, v4

    div-float/2addr v5, v2

    .line 268
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    sub-float/2addr v5, v6

    .line 269
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    if-eqz v1, :cond_2

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 272
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    sub-float/2addr v4, v7

    sub-float/2addr v6, v4

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    float-to-int v2, v5

    if-nez p1, :cond_1

    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v4, v1, p2

    float-to-int v4, v4

    .line 279
    iput v4, p0, Lcom/xiaopeng/musicradio/widget/j;->s:I

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/j;->t:I

    goto :goto_1

    .line 283
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 284
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/j;->s:I

    float-to-int v0, v6

    .line 285
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/j;->t:I

    goto :goto_1

    :cond_2
    float-to-int v2, v5

    .line 290
    iput v3, p0, Lcom/xiaopeng/musicradio/widget/j;->t:I

    .line 291
    iput v3, p0, Lcom/xiaopeng/musicradio/widget/j;->s:I

    :goto_1
    if-eqz p3, :cond_5

    .line 294
    iput v3, p0, Lcom/xiaopeng/musicradio/widget/j;->t:I

    .line 295
    iput v3, p0, Lcom/xiaopeng/musicradio/widget/j;->s:I

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->getMeasuredWidth()I

    move-result p3

    if-lez p3, :cond_4

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/j;->e:I

    if-lez p3, :cond_4

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j;->d:I

    if-ne v0, p3, :cond_4

    neg-int p3, v0

    int-to-float p3, p3

    mul-float/2addr p3, p2

    float-to-int p3, p3

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int v3, p3, v0

    :cond_4
    move v2, v3

    const/4 p3, 0x1

    .line 305
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/j;->w:Z

    .line 308
    :cond_5
    :goto_2
    iget p3, p0, Lcom/xiaopeng/musicradio/widget/j;->u:F

    sub-float p3, p2, p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/musicradio/widget/j;->a(IFF)V

    .line 309
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j;->r:I

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->stopScroll()V

    .line 313
    iget p3, p0, Lcom/xiaopeng/musicradio/widget/j;->A:I

    if-ne p1, p3, :cond_6

    iget p3, p0, Lcom/xiaopeng/musicradio/widget/j;->B:I

    if-eq v2, p3, :cond_7

    .line 314
    :cond_6
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 316
    :cond_7
    iget p3, p0, Lcom/xiaopeng/musicradio/widget/j;->m:I

    if-lez p3, :cond_8

    .line 317
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->invalidate()V

    .line 320
    :cond_8
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j;->A:I

    .line 321
    iput v2, p0, Lcom/xiaopeng/musicradio/widget/j;->B:I

    .line 322
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/j;->u:F

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->p:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/j;->p:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/j;->a(I)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 217
    iget p2, p0, Lcom/xiaopeng/musicradio/widget/j;->r:I

    if-eq p1, p2, :cond_1

    .line 218
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/j;->b(I)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/j;->a(I)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 371
    invoke-static {p0}, Lgj;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected b(I)V
    .locals 6

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 232
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v2, v1

    .line 233
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 237
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/j;->r:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge p1, v0, :cond_1

    .line 238
    new-array v0, v5, [F

    aput v1, v0, v4

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    .line 240
    :cond_1
    new-array v0, v5, [F

    neg-float v1, v1

    aput v1, v0, v4

    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_1
    const-wide/16 v1, 0xc8

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    new-instance v1, Lcom/xiaopeng/musicradio/widget/j$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/widget/j$2;-><init>(Lcom/xiaopeng/musicradio/widget/j;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->o:Lcom/xiaopeng/musicradio/widget/j$c;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/j;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->o:Lcom/xiaopeng/musicradio/widget/j$c;

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/vui/VuiRecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/j;->r:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 346
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/j;->w:Z

    if-eqz p1, :cond_0

    .line 347
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/j;->w:Z

    :cond_0
    return-void

    .line 352
    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/j;->w:Z

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->t:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->s:I

    sub-int/2addr v1, v2

    .line 358
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->t:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->s:I

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->t:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->s:I

    sub-int/2addr v1, v2

    .line 361
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->t:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->s:I

    :goto_0
    add-int/2addr v0, v2

    .line 364
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/j;->m:I

    sub-int/2addr v2, v3

    .line 365
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/j;->getHeight()I

    move-result v3

    int-to-float v5, v1

    int-to-float v6, v2

    int-to-float v7, v0

    int-to-float v8, v3

    .line 367
    iget-object v9, p0, Lcom/xiaopeng/musicradio/widget/j;->a:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setAutoSelectionMode(Z)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->o:Lcom/xiaopeng/musicradio/widget/j$c;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/j;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->o:Lcom/xiaopeng/musicradio/widget/j$c;

    :cond_0
    if-eqz p1, :cond_1

    .line 178
    new-instance p1, Lcom/xiaopeng/musicradio/widget/j$c;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->n:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/musicradio/widget/j$c;-><init>(Lcom/xiaopeng/musicradio/widget/j;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j;->o:Lcom/xiaopeng/musicradio/widget/j$c;

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/j;->o:Lcom/xiaopeng/musicradio/widget/j$c;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/j;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j;->m:I

    return-void
.end method

.method public setPositionThreshold(F)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/j;->v:F

    return-void
.end method

.method public setUpWithAdapter(Lcom/xiaopeng/musicradio/widget/j$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/widget/j$a<",
            "*>;)V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/j;->q:Lcom/xiaopeng/musicradio/widget/j$a;

    .line 201
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/j$a;->a()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->p:Landroidx/viewpager/widget/ViewPager;

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->p:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/j;->p:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/j$e;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/j$e;-><init>(Lcom/xiaopeng/musicradio/widget/j;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/j;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/j;->p:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/j;->a(I)V

    return-void

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ViewPager does not have a PagerAdapter set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUpWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 4

    .line 188
    new-instance v0, Lcom/xiaopeng/musicradio/widget/j$b;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/widget/j$b;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    .line 189
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j;->i:I

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/j;->j:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/j;->k:I

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/j;->l:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/xiaopeng/musicradio/widget/j$b;->a(IIII)V

    .line 190
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j;->f:I

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/j$b;->b(I)V

    .line 191
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/j;->h:Z

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/j;->g:I

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/widget/j$b;->a(ZI)V

    .line 192
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j;->e:I

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/j$b;->c(I)V

    .line 193
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j;->d:I

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/j$b;->d(I)V

    .line 194
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j;->b:I

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/j$b;->e(I)V

    .line 195
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/j;->c:I

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/j$b;->f(I)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/j;->setUpWithAdapter(Lcom/xiaopeng/musicradio/widget/j$a;)V

    return-void
.end method

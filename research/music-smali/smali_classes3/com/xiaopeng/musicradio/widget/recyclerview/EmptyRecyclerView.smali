.class public Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;
.super Lbty;
.source "EmptyRecyclerView.java"


# instance fields
.field private c:Z

.field private d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private final k:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 131
    invoke-direct {p0, p1}, Lbty;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->c:Z

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->e:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->f:Z

    .line 55
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->i:Z

    .line 104
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView$1;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 p1, 0x0

    .line 132
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 136
    invoke-direct {p0, p1, p2}, Lbty;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->c:Z

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->e:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->f:Z

    .line 55
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->i:Z

    .line 104
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView$1;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 137
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lbty;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->c:Z

    const/4 p3, 0x0

    .line 51
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->e:Z

    .line 52
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->f:Z

    .line 55
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->i:Z

    .line 104
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView$1;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 142
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/os/Parcelable;)V
    .locals 9

    .line 76
    const-class v0, Lcom/xiaopeng/lib/libview/observablescrollview/ObservableRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 78
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    const-string v5, "EmptyRecyclerView"

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    .line 79
    const-class v7, Landroid/os/Parcelable;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 80
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    .line 81
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "static"

    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v4, "dstClass find!"

    .line 83
    invoke-static {v5, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 91
    :try_start_0
    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 93
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const-string v1, "superState"

    .line 94
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    invoke-super {p0, v0}, Lbty;->onRestoreInstanceState(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "new instance failed!"

    .line 97
    invoke-static {v5, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "dstClass not found!!"

    .line 100
    invoke-static {v5, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    sget v3, Lcom/xiaopeng/musicradio/common/k$a;->defaultLoadingTips:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/xiaopeng/musicradio/common/k$i;->EmptyRecyclerView:[I

    sget v5, Lcom/xiaopeng/musicradio/common/k$a;->defaultLoadingTips:I

    invoke-virtual {v0, p1, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 160
    :try_start_1
    sget v3, Lcom/xiaopeng/musicradio/common/k$i;->EmptyRecyclerView_tip_margin_bottom:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->g:I

    .line 161
    sget v3, Lcom/xiaopeng/musicradio/common/k$i;->EmptyRecyclerView_tip_margin_top:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->h:I

    .line 162
    sget v3, Lcom/xiaopeng/musicradio/common/k$i;->EmptyRecyclerView_tip_view_class:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    sget v2, Lcom/xiaopeng/musicradio/common/k$i;->EmptyRecyclerView_tip_view_class:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    :try_start_2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 172
    const-class v2, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-ne v2, v0, :cond_2

    const/4 v2, 0x2

    .line 173
    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const-class v5, Landroid/util/AttributeSet;

    aput-object v5, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 181
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setVerticalFadingEdgeEnabled(Z)V

    const/16 p1, 0x28

    .line 184
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setFadingEdgeLength(I)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setVuiLayoutLoadable(Z)V

    .line 188
    sget-object p1, Lbya;->NORMAL:Lbya;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setVuiMode(Lbya;)V

    return-void

    :catchall_0
    move-exception p1

    .line 166
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    throw p1

    :catchall_1
    move-exception p1

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    throw p1
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .line 311
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 312
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 313
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    const/4 v2, -0x2

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 315
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 316
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->g:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 317
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->h:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 318
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 319
    :cond_0
    instance-of v1, v0, Landroid/widget/LinearLayout;

    const/16 v3, 0x11

    if-eqz v1, :cond_1

    .line 320
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 321
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 322
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->g:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 323
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->h:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 324
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 325
    :cond_1
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 326
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 327
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 328
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->g:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 329
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->h:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 330
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 334
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 335
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 336
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    .line 337
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->g:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 338
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->h:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 340
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->e:Z

    return p1
.end method

.method private b(II)V
    .locals 3

    const-string v0, "EmptyRecyclerView"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    .line 387
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_2

    return-void

    .line 397
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 399
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-gt v2, p1, :cond_4

    .line 400
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    if-lt v1, p1, :cond_4

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->l:I

    sub-int/2addr v1, p1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_4

    const-string v1, "smoothMoveToPosition: showing========="

    .line 402
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    .line 404
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView$2;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;II)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    if-ltz p1, :cond_5

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 415
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->l:I

    .line 416
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->scrollToPosition(I)V

    .line 417
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_5
    return-void

    .line 388
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smoothMoveToPosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getScrollState()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tryCount = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c()V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    goto :goto_0

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 288
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    goto :goto_0

    .line 289
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->j:Z

    if-nez v0, :cond_3

    .line 290
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    goto :goto_0

    .line 293
    :cond_2
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->j:Z

    if-nez v0, :cond_3

    .line 294
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private d()Z
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/widget/recyclerview/f;

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/f;->c()Z

    move-result v0

    return v0

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 203
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    goto :goto_2

    .line 204
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->i:Z

    if-eqz v0, :cond_3

    .line 205
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->e:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    .line 208
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    goto :goto_2

    .line 211
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setTipsState(I)V

    .line 216
    :goto_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->f:Z

    :cond_5
    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b(II)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Ljava/lang/String;Lbxu;ZZ)V

    return-void
.end method

.method public getTipsState()I
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-super {p0}, Lbty;->onAttachedToWindow()V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Landroid/view/View;)V

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->c()V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 351
    :goto_0
    invoke-super {p0, p1}, Lbty;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, -0x1

    .line 359
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->stopScroll()V

    return v2

    :cond_3
    :goto_1
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 61
    instance-of v0, p1, Landroid/view/AbsSavedState;

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lbty;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    const-string p1, "mChildrenHeights"

    .line 69
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 252
    :cond_0
    invoke-super {p0, p1}, Lbty;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 257
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->c()V

    return-void
.end method

.method public setAutoClickLoadingEnable(Z)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    :cond_0
    return-void
.end method

.method public setNoResultText(Ljava/lang/String;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnTipsViewClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setTipViewClickable(Z)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setTipsState(I)V
    .locals 2

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->j:Z

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 230
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->i:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->i:Z

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    :cond_1
    return-void
.end method

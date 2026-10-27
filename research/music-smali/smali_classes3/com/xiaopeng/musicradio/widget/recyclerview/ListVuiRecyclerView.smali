.class public Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;
.source "ListVuiRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;,
        Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;,
        Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;

.field private c:Landroidx/recyclerview/widget/GridLayoutManager;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->d:I

    const/4 p1, 0x3

    .line 52
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->d:I

    const/4 v1, 0x3

    .line 52
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->g:I

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->d:I

    const/4 v0, 0x3

    .line 52
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->g:I

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 69
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->RecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 74
    :try_start_0
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->RecyclerView_android_orientation:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/common/k$i;->RecyclerView_spanCount:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    throw p2

    :cond_0
    move p3, p2

    move v0, p3

    .line 80
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, v0, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 81
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setHasFixedSize(Z)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->g:I

    return p0
.end method

.method private setLoadMoreEnableAdvance(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez p1, :cond_2

    .line 115
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->d:I

    if-nez p1, :cond_0

    .line 116
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$a;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$b;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_1

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->e:Z

    goto :goto_0

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->e:Z

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$1;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->e:Z

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->e:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->e:Z

    .line 173
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;

    if-eqz v1, :cond_0

    .line 174
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->e:Z

    invoke-interface {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;->a(Z)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    .line 178
    invoke-virtual {v1, v0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getLoadMoreMode()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->d:I

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0
.end method

.method public setGridLayoutManager(Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 88
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setLoadMoreEnable(Z)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->setLoadMoreEnableAdvance(Z)V

    .line 109
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->f:Z

    return-void
.end method

.method public setLoadMoreMode(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->d:I

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView$c;

    return-void
.end method

.method public setVisibleThreshold(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListVuiRecyclerView;->g:I

    return-void
.end method

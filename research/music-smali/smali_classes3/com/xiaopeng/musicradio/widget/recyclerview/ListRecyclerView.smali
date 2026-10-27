.class public Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;
.super Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
.source "ListRecyclerView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/recyclerview/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$b;,
        Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private b:Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;

.field private c:Landroidx/recyclerview/widget/GridLayoutManager;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->d:I

    const/4 v1, 0x3

    .line 55
    iput v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->g:I

    .line 67
    sget-object v1, Lcom/xiaopeng/musicradio/common/k$i;->RecyclerView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    sget p3, Lcom/xiaopeng/musicradio/common/k$i;->RecyclerView_android_orientation:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    .line 73
    sget v1, Lcom/xiaopeng/musicradio/common/k$i;->RecyclerView_spanCount:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    throw p2

    :cond_0
    move p3, p2

    move v1, p3

    .line 78
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, v1, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 79
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setHasFixedSize(Z)V

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 82
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;

    return-object p0
.end method

.method private setLoadMoreEnableAdvance(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez p1, :cond_2

    .line 118
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->d:I

    if-nez p1, :cond_0

    .line 119
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$a;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    goto :goto_0

    .line 121
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$b;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$b;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_1

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->a:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->e:Z

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->e:Z

    goto :goto_0

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->e:Z

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView$1;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->e:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 217
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 220
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->e:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->g:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->getSpanCount()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c()V

    :cond_0
    return-void
.end method

.method public getLoadMoreMode()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->d:I

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 88
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setLoadMoreEnable(Z)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setLoadMoreEnableAdvance(Z)V

    .line 112
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->f:Z

    return-void
.end method

.method public setLoadMoreMode(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->d:I

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;

    return-void
.end method

.method public setVisibleThreshold(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->g:I

    return-void
.end method

.method public v_()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->e:Z

    return v0
.end method

.class public Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
.super Lcom/xiaopeng/xui/widget/XRecyclerView;
.source "BaseRecycleView.java"


# instance fields
.field private a:I

.field private b:Lcom/bumptech/glide/RequestManager;

.field private c:Z

.field private d:Z

.field private e:Lcom/xiaopeng/musicradio/widget/recyclerview/k;

.field private f:I

.field z:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRecyclerView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a:I

    return p1
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private a(II)V
    .locals 3

    const-string v0, "BaseRecycleView"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v1, :cond_2

    return-void

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 160
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-gt v2, p1, :cond_4

    .line 161
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    if-lt v1, p1, :cond_4

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->f:I

    sub-int/2addr v1, p1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_4

    const-string v1, "smoothMoveToPosition: showing========="

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ge p2, v0, :cond_3

    .line 165
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$2;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;II)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    if-ltz p1, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 176
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->f:I

    .line 177
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->scrollToPosition(I)V

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_5
    return-void

    .line 149
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smoothMoveToPosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getScrollState()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tryCount = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;II)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(II)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    .line 183
    instance-of v0, p1, Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 187
    :cond_0
    instance-of v0, p1, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_1

    .line 188
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Landroid/content/Context;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->c()V

    return-void
.end method

.method protected static b(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a:I

    return p0
.end method

.method private c()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRequestManager()Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    return-object p0
.end method

.method private getRequestManager()Lcom/bumptech/glide/RequestManager;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b:Lcom/bumptech/glide/RequestManager;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method


# virtual methods
.method protected a(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    if-lt v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public b()V
    .locals 1

    .line 63
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView$1;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->z:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->z:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smoothMoveToPosition: ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseRecycleView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/k;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/k;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/k;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/k;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/k;->setTargetPosition(I)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->e:Lcom/xiaopeng/musicradio/widget/recyclerview/k;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->a(II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d:Z

    .line 211
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->b()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRecyclerView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d:Z

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->z:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->z:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

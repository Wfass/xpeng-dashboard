.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RVBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 378
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;)V
    .locals 0

    .line 374
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;IILjava/lang/Object;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(II)V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 472
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 518
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)Z
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b(II)V
    .locals 2

    .line 495
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v1, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChanged()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$1;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a()V

    :goto_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->onItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$2;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(IILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$3;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(II)V

    :goto_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$5;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;III)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 512
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->a(III)V

    :goto_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a$4;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 486
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$a;->b(II)V

    :goto_0
    return-void
.end method

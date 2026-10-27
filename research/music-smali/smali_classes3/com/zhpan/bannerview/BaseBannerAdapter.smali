.class public abstract Lcom/zhpan/bannerview/BaseBannerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/zhpan/bannerview/BaseViewHolder<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x3e8


# instance fields
.field private isCanLoop:Z

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mPageClickListener:Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected abstract bindData(Lcom/zhpan/bannerview/BaseViewHolder;Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BaseViewHolder<",
            "TT;>;TT;II)V"
        }
    .end annotation
.end method

.method public createViewHolder(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/zhpan/bannerview/BaseViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "I)",
            "Lcom/zhpan/bannerview/BaseViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 124
    new-instance p1, Lcom/zhpan/bannerview/BaseViewHolder;

    invoke-direct {p1, p2}, Lcom/zhpan/bannerview/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->isCanLoop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/16 v0, 0x3e8

    return v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    invoke-static {p1, v0}, Lcom/zhpan/bannerview/utils/BannerUtils;->getRealPosition(II)I

    move-result p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getViewType(I)I

    move-result p1

    return p1
.end method

.method public abstract getLayoutId(I)I
.end method

.method getListSize()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCanLoop()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->isCanLoop:Z

    return v0
.end method

.method public synthetic lambda$onCreateViewHolder$0$BaseBannerAdapter(Lcom/zhpan/bannerview/BaseViewHolder;Landroid/view/View;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Lcom/zhpan/bannerview/BaseViewHolder;->getAdapterPosition()I

    move-result p1

    .line 49
    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mPageClickListener:Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    invoke-static {p1, v0}, Lcom/zhpan/bannerview/utils/BannerUtils;->getRealPosition(II)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mPageClickListener:Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;

    invoke-interface {v1, p2, v0, p1}, Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;->onPageClick(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 35
    check-cast p1, Lcom/zhpan/bannerview/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->onBindViewHolder(Lcom/zhpan/bannerview/BaseViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/zhpan/bannerview/BaseViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zhpan/bannerview/BaseViewHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v0

    invoke-static {p2, v0}, Lcom/zhpan/bannerview/utils/BannerUtils;->getRealPosition(II)I

    move-result p2

    .line 61
    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getListSize()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/zhpan/bannerview/BaseBannerAdapter;->bindData(Lcom/zhpan/bannerview/BaseViewHolder;Ljava/lang/Object;II)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zhpan/bannerview/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zhpan/bannerview/BaseViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/zhpan/bannerview/BaseViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->getLayoutId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1, v0, p2}, Lcom/zhpan/bannerview/BaseBannerAdapter;->createViewHolder(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/zhpan/bannerview/BaseViewHolder;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/zhpan/bannerview/-$$Lambda$BaseBannerAdapter$1pZlRff6DAIr0Slr2VmyduerJ1c;

    invoke-direct {p2, p0, p1}, Lcom/zhpan/bannerview/-$$Lambda$BaseBannerAdapter$1pZlRff6DAIr0Slr2VmyduerJ1c;-><init>(Lcom/zhpan/bannerview/BaseBannerAdapter;Lcom/zhpan/bannerview/BaseViewHolder;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method setCanLoop(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->isCanLoop:Z

    return-void
.end method

.method setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method setPageClickListener(Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/zhpan/bannerview/BaseBannerAdapter;->mPageClickListener:Lcom/zhpan/bannerview/BaseBannerAdapter$PageClickListener;

    return-void
.end method

.class public Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "VuiRecyclerViewScrollListener.java"


# instance fields
.field private acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 14
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 19
    if-nez p2, :cond_0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->acH:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->qR()V

    .line 24
    :cond_0
    return-void
.end method

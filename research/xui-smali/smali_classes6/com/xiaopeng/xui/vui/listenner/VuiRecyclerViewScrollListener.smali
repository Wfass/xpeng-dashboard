.class public Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "VuiRecyclerViewScrollListener.java"


# instance fields
.field private mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V
    .locals 1
    .param p1, "view"    # Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 14
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newState"    # I

    .line 18
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 19
    if-nez p2, :cond_0

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->updateVuiScene()V

    .line 24
    :cond_0
    return-void
.end method

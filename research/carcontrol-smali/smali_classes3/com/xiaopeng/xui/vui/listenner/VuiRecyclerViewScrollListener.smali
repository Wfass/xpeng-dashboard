.class public Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "VuiRecyclerViewScrollListener.java"


# instance fields
.field private mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/vui/VuiRecyclerView;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 20
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiRecyclerViewScrollListener;->mVuiRecycleView:Lcom/xiaopeng/xui/vui/VuiRecyclerView;

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/VuiRecyclerView;->updateVuiScene()V

    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;
.super Ljava/lang/Object;
.source "UsbBaseDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iput v2, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFirstVisibleItemPosition:I

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mLastVisibleItemPosition:I

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mRvState:I

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFirstVisibleItemPosition:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mLastVisibleItemPosition:I

    if-ltz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mLastVisibleItemPosition:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v1}, Lbrm;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v1}, Lbrm;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mLastVisibleItemPosition:I

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mLastVisibleItemPosition:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFirstVisibleItemPosition:I

    if-lt v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->j()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mFirstVisibleItemPosition:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget v2, v2, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mLastVisibleItemPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbne;->a(Ljava/util/List;)V

    .line 117
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbnf;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

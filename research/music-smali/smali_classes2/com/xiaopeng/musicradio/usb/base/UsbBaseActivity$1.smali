.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;
.super Ljava/lang/Object;
.source "UsbBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iput v2, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mFirstVisibleItemPosition:I

    .line 102
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mLastVisibleItemPosition:I

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mRvState:I

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/b;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/b;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mFirstVisibleItemPosition:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mLastVisibleItemPosition:I

    if-ltz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mLastVisibleItemPosition:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/b;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/b;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mLastVisibleItemPosition:I

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/b;->j()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mFirstVisibleItemPosition:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity$1;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;

    iget v2, v2, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->mLastVisibleItemPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbne;->a(Ljava/util/List;)V

    .line 110
    invoke-static {}, Lbnc;->d()Lbnf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbnf;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

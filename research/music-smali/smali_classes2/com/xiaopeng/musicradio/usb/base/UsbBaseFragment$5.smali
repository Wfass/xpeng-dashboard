.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;
.super Ljava/lang/Object;
.source "UsbBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    iput v2, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mFirstVisibleItemPosition:I

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLastVisibleItemPosition:I

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mRvState:I

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getMlist()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getMlist()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mFirstVisibleItemPosition:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLastVisibleItemPosition:I

    if-ltz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLastVisibleItemPosition:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getMlist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getMlist()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLastVisibleItemPosition:I

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLastVisibleItemPosition:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mFirstVisibleItemPosition:I

    if-lt v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getMlist()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mFirstVisibleItemPosition:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    iget v2, v2, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->mLastVisibleItemPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment$5;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->getManager()Lbnh;

    move-result-object v1

    invoke-interface {v1, v0}, Lbnh;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

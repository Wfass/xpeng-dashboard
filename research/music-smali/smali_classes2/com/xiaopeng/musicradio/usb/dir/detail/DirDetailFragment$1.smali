.class Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$1;
.super Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;
.source "DirDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;Landroid/content/Context;I)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$1;->findFirstVisibleItemPosition()I

    move-result p1

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$1;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$100(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment$1;->a:Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;->access$000(Lcom/xiaopeng/musicradio/usb/dir/detail/DirDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->getItemCount()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setVisibility(I)V

    return-void
.end method

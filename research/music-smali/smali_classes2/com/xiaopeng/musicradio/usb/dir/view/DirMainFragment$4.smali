.class Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$4;
.super Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;
.source "DirMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;Landroid/content/Context;I)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 169
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$4;->findFirstVisibleItemPosition()I

    move-result p1

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$4;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$100(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment$4;->a:Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;->access$000(Lcom/xiaopeng/musicradio/usb/dir/view/DirMainFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/e;

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

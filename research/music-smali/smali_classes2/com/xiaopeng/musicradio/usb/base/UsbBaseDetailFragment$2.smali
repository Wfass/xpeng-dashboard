.class Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$2;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "UsbBaseDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;Landroid/content/Context;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$2;->findFirstVisibleItemPosition()I

    move-result p1

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$2;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->access$000(Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;)Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment$2;->a:Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v1}, Lbrm;->getItemCount()I

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

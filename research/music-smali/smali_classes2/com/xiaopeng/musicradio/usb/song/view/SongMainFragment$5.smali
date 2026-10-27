.class Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SongMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;Landroid/content/Context;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;->findFirstVisibleItemPosition()I

    move-result p1

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;->findLastVisibleItemPosition()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$800(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$500(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)Lbrm;

    move-result-object v1

    invoke-virtual {v1}, Lbrm;->getItemCount()I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/usb/widget/RecyclerViewFastScroller;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$5;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$900(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    return-void
.end method

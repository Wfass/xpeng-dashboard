.class Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$10;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SongMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$10;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$10;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$402(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;I)I

    if-nez p2, :cond_0

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment$10;->a:Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;->access$900(Lcom/xiaopeng/musicradio/usb/song/view/SongMainFragment;)V

    :cond_0
    return-void
.end method

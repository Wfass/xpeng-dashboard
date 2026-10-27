.class public Lbqt;
.super Lme/drakeet/multitype/c;
.source "UsbSongBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/drakeet/multitype/c<",
        "Lbqw;",
        "Lbqt$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lme/drakeet/multitype/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbqt$a;
    .locals 2

    .line 27
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->usb_song_item_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    new-instance p2, Lbqt$a;

    invoke-direct {p2, p1}, Lbqt$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lbqt$a;

    check-cast p2, Lbqw;

    invoke-virtual {p0, p1, p2}, Lbqt;->a(Lbqt$a;Lbqw;)V

    return-void
.end method

.method protected a(Lbqt$a;Lbqw;)V
    .locals 9

    .line 34
    invoke-virtual {p2}, Lbqw;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {p1}, Lbqt$a;->a(Lbqt$a;)Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->setVisibility(I)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Lbqt$a;->a(Lbqt$a;)Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->setVisibility(I)V

    .line 38
    invoke-static {p1}, Lbqt$a;->a(Lbqt$a;)Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;

    move-result-object v2

    invoke-virtual {p2}, Lbqw;->a()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {p2}, Lbqw;->d()I

    move-result v4

    invoke-virtual {p2}, Lbqw;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2}, Lbqw;->c()Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;

    move-result-object v6

    invoke-virtual {p2}, Lbqw;->e()I

    move-result v7

    invoke-virtual {p2}, Lbqw;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/xiaopeng/musicradio/usb/dir/view/UsbDirSongItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/util/List;Lcom/xiaopeng/musicradio/usb/bean/UsbMusicTreeBean;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lbqt;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lbqt$a;

    move-result-object p1

    return-object p1
.end method

.class public Lbrm;
.super Lcom/xiaopeng/musicradio/widget/common/b;
.source "UsbSongListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/common/b;-><init>(Landroid/content/Context;IILcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/widget/common/b$b;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V
    .locals 7

    .line 23
    iget-object p4, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iget v0, p0, Lbrm;->g:I

    invoke-virtual {p4, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->setAccountType(I)V

    .line 24
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/common/b$b;->a:Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;

    iget-object v5, p0, Lbrm;->h:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    sget v6, Lcom/xiaopeng/musicradio/usb/a$a;->music_empty_usb_songlist:I

    const/4 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZLcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;I)V

    return-void
.end method

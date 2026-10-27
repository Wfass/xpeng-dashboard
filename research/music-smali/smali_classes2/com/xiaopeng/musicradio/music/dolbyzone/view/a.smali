.class public abstract Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "BaseDolbyZoneItemView.java"


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Landroid/view/ViewGroup;

.field protected e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->e:I

    .line 33
    iput-object p0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->d:Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 51
    invoke-static {}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a()Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->album_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 0

    .line 74
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayState(I)V

    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->getDeafultAlbumLogo()I

    move-result v4

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    move v5, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->b:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->c:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->getDeafultAlbumLogo()I

    move-result v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method protected abstract getDeafultAlbumLogo()I
.end method

.method protected abstract getLayoutId()I
.end method

.method public setOnPlayControlListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

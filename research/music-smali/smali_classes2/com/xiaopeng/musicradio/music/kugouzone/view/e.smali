.class public Lcom/xiaopeng/musicradio/music/kugouzone/view/e;
.super Lcom/xiaopeng/musicradio/music/kugouzone/view/a;
.source "KugouZoneCommonRectView.java"


# instance fields
.field private d:Lcom/xiaopeng/xui/widget/XTextView;

.field private e:Lcom/xiaopeng/xui/widget/XImageView;

.field private f:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/view/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/a;->a()V

    .line 46
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->d:Lcom/xiaopeng/xui/widget/XTextView;

    .line 47
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->top_right_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->e:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/music/kugouzone/view/a;->a(IILjava/lang/String;)V

    return-void
.end method

.method protected getDeafultAlbumLogo()I
    .locals 1

    .line 40
    sget v0, Lbez$c;->pic_covers_music_220:I

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 35
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_search_roundrect_layout:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/a;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/view/a;->onDetachedFromWindow()V

    return-void
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMusicRadioItem(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->f:Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/view/e;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPosition(I)V

    return-void
.end method

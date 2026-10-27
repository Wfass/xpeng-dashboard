.class public Lcom/xiaopeng/musicradio/search/result/view/g;
.super Lcom/xiaopeng/musicradio/search/result/view/a;
.source "RoundRectItemView.java"


# instance fields
.field private e:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 45
    invoke-super {p0}, Lcom/xiaopeng/musicradio/search/result/view/a;->a()V

    .line 46
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->top_right_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/g;->e:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method protected getDeafultAlbumLogo()I
    .locals 1

    .line 28
    sget v0, Lcom/xiaopeng/musicradio/search/a$c;->pic_covers_music_220:I

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 23
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_search_roundrect_layout:I

    return v0
.end method

.method public setItemTitle(Ljava/lang/String;)V
    .locals 6

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/g;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/g;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->getTitleView()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 64
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v4

    invoke-virtual {v4}, Lbnz;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 62
    invoke-static {v0, v1, v2, p1, v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/g;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPosition(I)V

    return-void
.end method

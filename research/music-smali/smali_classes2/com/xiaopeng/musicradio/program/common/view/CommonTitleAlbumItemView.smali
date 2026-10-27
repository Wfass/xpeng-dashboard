.class public Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "CommonTitleAlbumItemView.java"


# instance fields
.field private a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

.field private b:Lcom/xiaopeng/xui/widget/XImageView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "CommonTitleAlbumItemView"

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->c:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "CommonTitleAlbumItemView"

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->c:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "CommonTitleAlbumItemView"

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->c:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/program/b$f;->item_common_title_album_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->album_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->top_right_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->c()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayState(I)V

    return-void
.end method

.method public a(IZ)V
    .locals 3

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lcom/xiaopeng/musicradio/program/b$c;->ic_xmly_cover_label_vip:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lcom/xiaopeng/musicradio/program/b$c;->ic_xmly_cover_label_payment:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 6

    .line 60
    iget-object p5, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {p5, p3}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(I)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    sget v4, Lcom/xiaopeng/musicradio/program/b$c;->pic_covers_music_220:I

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->a(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public getPlayControlView()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->getPlayControlView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setNeedRefreshLogo(Z)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setNeedRefreshLogo(Z)V

    return-void
.end method

.method public setPlayListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/common/view/CommonTitleAlbumItemView;->a:Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/AlbumItemLayout;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

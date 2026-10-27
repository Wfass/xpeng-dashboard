.class public Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;
.source "KugouZoneBannerItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout<",
        "Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/a;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/xiaopeng/xui/widget/XImageView;

.field private e:Lcom/xiaopeng/musicradio/widget/PlayControlView;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->f:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->g:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->g()Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->e:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;IIILandroid/view/View;)V
    .locals 0

    .line 73
    iput p3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->f:I

    .line 74
    iput p4, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->g:I

    .line 75
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p3, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;

    invoke-virtual {p3, p1, p2}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 63
    sget v0, Lbez$d;->iv_kugou_zone_banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->d:Lcom/xiaopeng/xui/widget/XImageView;

    .line 64
    sget v0, Lbez$d;->btn_banner_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->e:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->d:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->e:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;->i()Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "KugouZoneBannerItemLayout"

    const-string v1, "refreshLogo: mData logo maybe null "

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, ""

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbez$c;->bg_banner_zone:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/view/KugouZoneBannerItemLayout;->d:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v4, Lbhm;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Lbhm;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)V

    return-void
.end method

.method protected g()Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/banner/presenter/KugouZoneBannerItemPresenter;-><init>()V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 117
    sget v0, Lbez$f;->item_kugou_zone_banner_split:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

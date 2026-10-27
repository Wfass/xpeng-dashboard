.class public Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;
.source "DolbyZoneBannerItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout<",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/a;"
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/xiaopeng/xui/widget/XImageView;

.field private e:Lcom/xiaopeng/musicradio/widget/PlayControlView;

.field private f:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private h:Lcom/xiaopeng/xui/widget/XTextView;

.field private i:Lcom/xiaopeng/xui/widget/XTextView;

.field private j:Lcom/xiaopeng/xui/widget/XFrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->e()Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->e:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILandroid/view/View;)V
    .locals 3

    .line 80
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->b:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p3, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;

    invoke-virtual {p3, p1, p2}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 81
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->h:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->i:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    sget p3, Lbez$d;->tag_image_load_state:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 86
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    sget p3, Lbez$d;->tag_image_load_state:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 88
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setData: imageState = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DolbyZoneBannerItemLayout"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->d:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    sget v2, Lbez$c;->pic_covers_music_220:I

    invoke-static {p2, p3, v0, v1, v2}, Lbxo;->b(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;I)V

    .line 92
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p1

    sget p3, Lbez$c;->pic_covers_music_220:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p2, p1, p3, v0}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 65
    sget v0, Lbez$d;->item_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 66
    sget v0, Lbez$d;->iv_kugou_zone_banner:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->d:Lcom/xiaopeng/xui/widget/XImageView;

    .line 67
    sget v0, Lbez$d;->btn_banner_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->e:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    .line 68
    sget v0, Lbez$d;->iv_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->f:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 69
    sget v0, Lbez$d;->iv_logo_small:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->g:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 70
    sget v0, Lbez$d;->song_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->h:Lcom/xiaopeng/xui/widget/XTextView;

    .line 71
    sget v0, Lbez$d;->singer_name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->i:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/dolbyzone/banner/view/DolbyZoneBannerItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected e()Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;
    .locals 1

    .line 60
    new-instance v0, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/banner/presenter/DolbyZoneBannerItemPresenter;-><init>()V

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 112
    sget v0, Lbez$f;->item_dolby_zone_banner_split:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

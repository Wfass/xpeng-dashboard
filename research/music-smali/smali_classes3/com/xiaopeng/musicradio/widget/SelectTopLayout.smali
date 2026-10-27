.class public Lcom/xiaopeng/musicradio/widget/SelectTopLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "SelectTopLayout.java"


# instance fields
.field private imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

.field private mImgArrow:Lcom/xiaopeng/xui/widget/XImageView;

.field private mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/main/a$e;->select_top_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->img_account:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

    .line 42
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->music_txt:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 43
    sget v0, Lcom/xiaopeng/musicradio/main/a$d;->img_account_switch:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mImgArrow:Lcom/xiaopeng/xui/widget/XImageView;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->reviewOnScreenChange()V

    return-void
.end method


# virtual methods
.method public changeImgAccount(I)V
    .locals 1

    .line 49
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->e()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_qqmusic:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_qq_music:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto/16 :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->c()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_netease:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_netease_music:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto/16 :goto_0

    .line 55
    :cond_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_kugou:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_kugoo_music:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->f()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_himalayas:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_read:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->g()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_himalayas:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_radio:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 64
    :cond_4
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->k()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_bluetooth:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_blue:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_0

    .line 67
    :cond_5
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->l()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->imgAcconut:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$c;->ic_music_logo_usb:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/musicradio/main/a$f;->tab_main_usb:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public down()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mImgArrow:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 105
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public downWithoutAnim()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mImgArrow:Lcom/xiaopeng/xui/widget/XImageView;

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setRotation(F)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mImgArrow:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 89
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mMusicTxt:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mImgArrow:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public up()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mImgArrow:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method public upWithoutAnim()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/SelectTopLayout;->mImgArrow:Lcom/xiaopeng/xui/widget/XImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setRotation(F)V

    return-void
.end method

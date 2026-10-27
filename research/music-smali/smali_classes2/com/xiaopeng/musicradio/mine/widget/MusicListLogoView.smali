.class public Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "MusicListLogoView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a:Landroid/widget/ImageView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lfe;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 120
    iget-object v0, p1, Lfe;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    move v1, v2

    .line 132
    :goto_0
    iget-object v0, p1, Lfe;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->f:I

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lfe;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxq;->a(Landroid/content/Context;)Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;

    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    iget-object p1, p1, Lfe;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v3, "ms_play_all"

    invoke-static {v2, p1, v3}, Laxt;->a(Landroid/view/View;ILjava/lang/String;)V

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    invoke-static {p1, v0}, Laxt;->a(Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    return v1
.end method

.method public getPlayAllText()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->f:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 164
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    invoke-static {p1}, Lcom/xiaopeng/xui/theme/XThemeManager;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->g:Ljava/lang/String;

    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/utils/ac;->a(Ljava/lang/String;ILandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 57
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onFinishInflate()V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->mine_music_list_logo_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 60
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->iv_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->play_all_text_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->play_all_text_view_img:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->c:Landroid/widget/ImageView;

    .line 63
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_source:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->d:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->tv_description:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->e:Landroid/widget/TextView;

    .line 65
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 66
    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->img_logo_page_qq:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 68
    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->img_logo_netease_source:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 70
    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->img_logo_kugou_source:I

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->d:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 73
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView$1;-><init>(Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDescriptionText(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setIvLogoVisibility(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 2

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->g:Ljava/lang/String;

    .line 100
    sget v0, Lcom/xiaopeng/musicradio/mine/a$b;->pic_covers_music_220:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->a:Landroid/widget/ImageView;

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/utils/ac;->a(Ljava/lang/String;ILandroid/widget/ImageView;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPlayAllLayoutVisibility(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTvSourceVisibility(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

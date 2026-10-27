.class public Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;
.super Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;
.source "DolbyZoneSongItemView.java"


# instance fields
.field protected f:Lcom/xiaopeng/xui/widget/XTextView;

.field protected g:Lcom/xiaopeng/xui/widget/XTextView;

.field protected h:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

.field protected i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

.field private j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private k:Lcom/xiaopeng/xui/view/XView;

.field private l:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

.field private m:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    .line 103
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->setVisibility(I)V

    .line 104
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    const/4 v4, 0x1

    if-eq p1, v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v3, p1, v1}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->updatePlayState(IZ)V

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setSelected(Z)V

    goto :goto_1

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setSelected(Z)V

    goto :goto_1

    .line 111
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->setVisibility(I)V

    .line 113
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setVisibility(I)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 117
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->g()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 120
    invoke-static {}, Lbqp;->a()Lbqp;

    move-result-object v2

    invoke-virtual {v2}, Lbqp;->b()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->l:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 131
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->q()I

    move-result v0

    .line 132
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 134
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->a(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/a;->a()V

    .line 53
    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    .line 54
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->iv_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->m:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 55
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 56
    sget v0, Lbez$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 57
    sget v0, Lbez$d;->music_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->h:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    .line 58
    sget v0, Lbez$d;->iv_play_list_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    .line 59
    sget v0, Lbez$d;->layout_item_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 60
    sget v0, Lbez$d;->view_item_vui:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->k:Lcom/xiaopeng/xui/view/XView;

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->b()V

    .line 97
    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/xui/view/XView;->setVuiPosition(I)V

    .line 98
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/view/XView;->getVuiPosition()I

    move-result p2

    iget-object p3, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-static {p2, p3, v0, p1, v1}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 2

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->l:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x3f

    .line 83
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->h:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->getDeafultAlbumLogo()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->m:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setVisibility(I)V

    return-void
.end method

.method protected getDeafultAlbumLogo()I
    .locals 1

    .line 70
    sget v0, Lbez$c;->pic_covers_music_220:I

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 65
    sget v0, Lbez$f;->item_dolby_zone_single_song:I

    return v0
.end method

.method public setIndex(I)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->n:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XView;->setVuiPosition(I)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->k:Lcom/xiaopeng/xui/view/XView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/d;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/view/XView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XView;->setVuiElementId(Ljava/lang/String;)V

    return-void
.end method

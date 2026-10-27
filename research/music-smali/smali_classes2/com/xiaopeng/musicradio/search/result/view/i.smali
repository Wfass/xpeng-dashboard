.class public Lcom/xiaopeng/musicradio/search/result/view/i;
.super Lcom/xiaopeng/musicradio/search/result/view/a;
.source "SongItemView.java"


# instance fields
.field protected e:Lcom/xiaopeng/xui/widget/XTextView;

.field protected f:Lcom/xiaopeng/xui/widget/XTextView;

.field protected g:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

.field protected h:Lcom/xiaopeng/xui/widget/XImageView;

.field protected i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

.field private j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private k:Lcom/xiaopeng/xui/view/XView;

.field private l:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private m:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

.field private n:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 104
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/search/a$c;->bg_btn_love_selector_netease:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/search/a$c;->bg_btn_love_selector:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/i;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->iv_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->l:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 66
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->tv_speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->m:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 68
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 69
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->music_label:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->g:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    .line 70
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->iv_fav_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    .line 71
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->iv_play_list_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    .line 72
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->layout_item_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 73
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->view_item_vui:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->k:Lcom/xiaopeng/xui/view/XView;

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/i;->b()V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 6

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    const/4 v2, 0x1

    if-eq p1, p3, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    invoke-virtual {v0, p1, p3}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->updatePlayState(IZ)V

    .line 134
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p3

    if-nez p3, :cond_1

    .line 135
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->m:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-virtual {p3, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setSelected(Z)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->m:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-virtual {p3, v2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setSelected(Z)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->i:Lcom/xiaopeng/musicradio/widget/PlayStateWidget;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lcom/xiaopeng/musicradio/widget/PlayStateWidget;->setVisibility(I)V

    .line 141
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 143
    :goto_1
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->k:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/xui/view/XView;->setVuiPosition(I)V

    .line 144
    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XImageView;->getVuiPosition()I

    move-result v0

    iget-object p2, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->e:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->j:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->k:Lcom/xiaopeng/xui/view/XView;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->n:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;I)V
    .locals 5

    .line 95
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/16 v1, 0x28

    .line 96
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->g:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {v1, v0, p2}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/i;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->f:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    .line 99
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 100
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v3

    invoke-virtual {v3}, Lbnz;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 98
    invoke-static {p2, v0, v1, p1, v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/i;->getDeafultAlbumLogo()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->l:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/xiaopeng/musicradio/utils/ac;->c(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->e:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 117
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v3

    invoke-virtual {v3}, Lbnz;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 115
    invoke-static {p1, v0, v1, p2, v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;[Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->m:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {p1, v4}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setVisibility(I)V

    return-void
.end method

.method protected getDeafultAlbumLogo()I
    .locals 1

    .line 84
    sget v0, Lcom/xiaopeng/musicradio/search/a$c;->pic_covers_music_220:I

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_search_song_layout:I

    return v0
.end method

.method public setFavClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIndex(I)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->m:Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumSmallLayout;->setText(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiPosition(I)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiElementId(Ljava/lang/String;)V

    return-void
.end method

.method public setIsLove(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->h:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    return-void
.end method

.method public setRecycleView(Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/i;->n:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-void
.end method

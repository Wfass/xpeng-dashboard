.class public Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;
.super Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;
.source "SearchMusicListLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicListLayout;->a()V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;IZI)V
    .locals 8

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->a:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getLogo()Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->pic_covers_music_220:I

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->e:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    .line 62
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 63
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v6

    invoke-virtual {v6}, Lbnz;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 61
    invoke-static {v0, v1, v2, v3, v5}, Lcom/xiaopeng/musicradio/utils/bq;->a(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;[Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->f:Lcom/xiaopeng/xui/widget/XTextView;

    sget v2, Lcom/xiaopeng/musicradio/search/a$a;->x_theme_primary_normal:I

    .line 65
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSingers()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    .line 66
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v5

    invoke-virtual {v5}, Lbnz;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 64
    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;[Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v7, 0x8

    :goto_0
    invoke-virtual {v0, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 68
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getSongPlayTime()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/r;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    const/16 p3, 0x28

    .line 70
    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 71
    iget-object p3, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->j:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    invoke-virtual {p3, p1, p4}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->m:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 73
    iput p2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->n:I

    return-void
.end method

.method public getItemRootView()Lcom/xiaopeng/xui/widget/XRelativeLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;->k:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    return-object v0
.end method

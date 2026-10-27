.class public Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;
.super Ljava/lang/Object;
.source "MusicSongBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33L


# instance fields
.field private album:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

.field private alg:Ljava/lang/String;

.field private artist:Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

.field private canDownload:Z

.field private canPlay:Z

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;"
        }
    .end annotation
.end field

.field private from:I

.field private hash:Ljava/lang/String;

.field private hot:Z

.field private listenFile:Ljava/lang/String;

.field private lyricContent:Ljava/lang/String;

.field private lyricFile:Ljava/lang/String;

.field private lyricType:Ljava/lang/String;

.field private mHighlightSongName:Landroid/text/SpannableStringBuilder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mHightlightSinger:Landroid/text/SpannableStringBuilder;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mSupportSq:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private needVip:Z

.field private originId:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private playable:Z

.field private singers:Ljava/lang/String;

.field private songExtraId:Ljava/lang/String;

.field private songId:Ljava/lang/String;

.field private songName:Ljava/lang/String;

.field private songPlayTime:I

.field private sourceID:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

.field private tryPlayable:Z

.field private unplayableCode:I

.field private unplayableMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->tryPlayable:Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->playable:Z

    return-void
.end method

.method private supportSq(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    .line 182
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 344
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    if-eqz v0, :cond_0

    .line 345
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 346
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;->getId()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 351
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->album:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    return-object v0
.end method

.method public getAlg()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->alg:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getFrom()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->from:I

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlightSongName()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->mHighlightSongName:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getHightlightSinger()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->mHightlightSinger:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getListenFile()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->listenFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->lyricContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricFile()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->lyricFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricType()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->lyricType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginId()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->originId:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSingers()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->singers:Ljava/lang/String;

    return-object v0
.end method

.method public getSongExtraId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songPlayTime:I

    return v0
.end method

.method public getSourceID()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->sourceID:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportSq()Ljava/lang/Boolean;
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isSupportSQ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-object v0
.end method

.method public getUnplayableCode()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->unplayableCode:I

    return v0
.end method

.method public getUnplayableMsg()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->unplayableMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isCanDownload()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->canDownload:Z

    return v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->canPlay:Z

    return v0
.end method

.method public isHot()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->hot:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->needVip:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->playable:Z

    return v0
.end method

.method public isSupportSQ()Z
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getPlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->isCanPlay()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isTryPlayable()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->tryPlayable:Z

    return v0
.end method

.method public setAlbum(Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->album:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    return-void
.end method

.method public setAlg(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->alg:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    return-void
.end method

.method public setCanDownload(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->canDownload:Z

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->canPlay:Z

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;)V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->fileList:Ljava/util/List;

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 331
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->from:I

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->hash:Ljava/lang/String;

    return-void
.end method

.method public setHighlightSongName(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->mHighlightSongName:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setHightlightSinger(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->mHightlightSinger:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setHot(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->hot:Z

    return-void
.end method

.method public setListenFile(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->listenFile:Ljava/lang/String;

    return-void
.end method

.method public setLyricContent(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->lyricContent:Ljava/lang/String;

    return-void
.end method

.method public setLyricFile(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->lyricFile:Ljava/lang/String;

    return-void
.end method

.method public setLyricType(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->lyricType:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->needVip:Z

    return-void
.end method

.method public setOriginId(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->originId:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setPlayable(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->playable:Z

    return-void
.end method

.method public setSingers(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->singers:Ljava/lang/String;

    return-void
.end method

.method public setSongExtraId(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songExtraId:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songName:Ljava/lang/String;

    return-void
.end method

.method public setSongPlayTime(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songPlayTime:I

    return-void
.end method

.method public setSourceID(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->sourceID:Ljava/lang/String;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->style:Ljava/lang/String;

    return-void
.end method

.method public setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-void
.end method

.method public setTryPlayable(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->tryPlayable:Z

    return-void
.end method

.method public setUnplayableCode(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->unplayableCode:I

    return-void
.end method

.method public setUnplayableMsg(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->unplayableMsg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSongBean{artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->artist:Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicArtistBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", canPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->canPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", songName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->originId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

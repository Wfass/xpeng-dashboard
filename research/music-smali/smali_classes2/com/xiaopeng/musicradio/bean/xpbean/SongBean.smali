.class public Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;
.super Ljava/lang/Object;
.source "SongBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;,
        Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;
    }
.end annotation


# instance fields
.field private mAlbum:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album"
    .end annotation
.end field

.field private mArtist:Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artist"
    .end annotation
.end field

.field private mCanPlay:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canPlay"
    .end annotation
.end field

.field private mFileList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fileList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash"
    .end annotation
.end field

.field private mListenFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listenFile"
    .end annotation
.end field

.field private mLyricContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lyricContent"
    .end annotation
.end field

.field private mNeedVip:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "needVip"
    .end annotation
.end field

.field private mSingers:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "singers"
    .end annotation
.end field

.field private mSongName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songName"
    .end annotation
.end field

.field private mStyle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mAlbum:Lcom/xiaopeng/musicradio/bean/xpbean/MusicAlbumBean;

    return-object v0
.end method

.method public getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mArtist:Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$ArtistBean;

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongBean$FileInfoBean;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mFileList:Ljava/util/List;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getListenFile()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mListenFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricContent()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mLyricContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSingers()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mSingers:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mSongName:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mCanPlay:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongBean;->mNeedVip:Z

    return v0
.end method

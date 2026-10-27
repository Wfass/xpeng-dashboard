.class public Lcom/xiaopeng/musicradio/bean/xpbean/UserAlbumListBean;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "UserAlbumListBean.java"


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;

.field private musicRadioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/UserAlbumListBean;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/UserAlbumListBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicRadioList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/UserAlbumListBean;->musicRadioList:Ljava/util/List;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/UserAlbumListBean;->code:I

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/UserAlbumListBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setMusicRadioList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/UserAlbumListBean;->musicRadioList:Ljava/util/List;

    return-void
.end method

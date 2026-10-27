.class public Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;
.super Ljava/lang/Object;
.source "DuiMusicBean.java"


# instance fields
.field private listSign:Ljava/lang/String;

.field private page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

.field private params:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

.field private tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListSign()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->listSign:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Lcom/xiaopeng/musicradio/bean/common/PageBean;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-object v0
.end method

.method public getParams()Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->params:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    return-object v0
.end method

.method public getTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->tracks:Ljava/util/List;

    return-object v0
.end method

.method public setListSign(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->listSign:Ljava/lang/String;

    return-void
.end method

.method public setPage(Lcom/xiaopeng/musicradio/bean/common/PageBean;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->page:Lcom/xiaopeng/musicradio/bean/common/PageBean;

    return-void
.end method

.method public setParams(Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->params:Lcom/xiaopeng/musicradio/bean/dui/DuiMusicParams;

    return-void
.end method

.method public setTracks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dui/DuiMusicBean;->tracks:Ljava/util/List;

    return-void
.end method

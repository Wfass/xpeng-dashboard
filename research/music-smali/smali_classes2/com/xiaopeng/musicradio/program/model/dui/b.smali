.class public Lcom/xiaopeng/musicradio/program/model/dui/b;
.super Ljava/lang/Object;
.source "DuiProgramMediaQueryModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/dui/h$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;)V
    .locals 2

    .line 16
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 18
    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayType(I)V

    .line 19
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setAlbum(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setArtist(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setTitle(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPosition()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setPlayTime(J)V

    .line 23
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getDuration()I

    move-result v0

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/speech/protocol/query/music/bean/PlayInfo;->setRemainingTime(J)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public d()Z
    .locals 4

    .line 56
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    invoke-virtual {v0}, Lbmo;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 66
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    invoke-virtual {v0}, Lbmp;->d()Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

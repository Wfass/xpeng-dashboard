.class public Lbid;
.super Lbqm;
.source "MusicControlModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbid$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lbqm;-><init>()V

    return-void
.end method

.method public static a()Lbid;
    .locals 1

    .line 18
    sget-object v0, Lbid$a;->a:Lbid;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZIZ)V
    .locals 1

    .line 60
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZIZ)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    .line 39
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {p0}, Lbid;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Laqr;->c(I)Laqt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Laqt;->isNotPlayable()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 47
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 52
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->s()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 64
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->w()V

    return-void
.end method

.method public k()Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->supportRandom()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 73
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->M()Z

    move-result v0

    return v0
.end method

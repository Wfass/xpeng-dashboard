.class public Lcom/xiaopeng/musicradio/service/MusicQqService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "MusicQqService.java"

# interfaces
.implements Lbfd;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicQqService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public checkoutDataCollect(I)V
    .locals 1

    .line 28
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    invoke-virtual {v0}, Lbae;->d()V

    .line 29
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-virtual {v0}, Layr;->b()Layq;

    move-result-object v0

    invoke-virtual {v0, p1}, Layq;->a(I)V

    return-void
.end method

.method public getCachedCollectedMusicList()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    invoke-virtual {v0}, Lbae;->g()V

    .line 87
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    const/16 v1, 0x32

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbae;->a(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCollectedMusicCount()I
    .locals 2

    .line 50
    invoke-static {}, Layr;->a()Layr;

    move-result-object v0

    invoke-virtual {v0}, Layr;->b()Layq;

    move-result-object v0

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Layq;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isCustomAlbum(Ljava/lang/Object;)Z
    .locals 1

    .line 76
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0}, Lbac;->b()Lbab;

    move-result-object v0

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbab;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 78
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lbac;->a()Lbac;

    move-result-object v0

    invoke-virtual {v0}, Lbac;->b()Lbab;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lbab;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isLocalLoveMusic(Ljava/lang/Object;)Z
    .locals 1

    .line 41
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_0

    .line 42
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 43
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v0

    invoke-virtual {v0}, Lbcj;->b()Lbci;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateLocalLove(Ljava/lang/Object;)V
    .locals 1

    .line 34
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v0

    invoke-virtual {v0}, Lbcj;->b()Lbci;

    move-result-object v0

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {v0, p1}, Lbci;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method

.method public updateLove(Ljava/lang/Object;Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 56
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_0

    .line 57
    check-cast p1, Ljava/util/List;

    .line 58
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object p2

    invoke-virtual {p2}, Lbcj;->b()Lbci;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lbci;->a(Ljava/util/List;Z)V

    goto :goto_1

    .line 59
    :cond_0
    instance-of p2, p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz p2, :cond_3

    .line 60
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object p2

    invoke-virtual {p2}, Lbcj;->b()Lbci;

    move-result-object p2

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-virtual {p2, p1, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    goto :goto_1

    .line 63
    :cond_1
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_3

    .line 64
    check-cast p1, Ljava/util/List;

    .line 65
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    .line 67
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object p1

    invoke-virtual {p1}, Lbcj;->b()Lbci;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lbci;->a(Ljava/util/List;Z)V

    :cond_3
    :goto_1
    return-void
.end method

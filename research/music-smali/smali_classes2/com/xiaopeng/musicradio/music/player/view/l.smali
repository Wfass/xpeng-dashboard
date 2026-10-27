.class public Lcom/xiaopeng/musicradio/music/player/view/l;
.super Ljava/lang/Object;
.source "MusicSmallPlayer.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/playercomponent/small/view/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->d()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 31
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicSmallPlayerSubViewCreator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 3

    .line 50
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickLove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicSmallPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Layr;->a()Layr;

    move-result-object v1

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v2

    invoke-virtual {v2}, Lbid;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Layr;->a(I)Layq;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1, v0}, Layq;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method

.method public d()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 66
    :cond_0
    invoke-static {}, Lbcj;->a()Lbcj;

    move-result-object v3

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v4

    invoke-virtual {v4}, Lbid;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Lbcj;->a(I)Lbci;

    move-result-object v3

    if-nez v3, :cond_1

    .line 68
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    const/16 v4, 0x3d

    const/4 v5, 0x1

    if-ne v2, v4, :cond_2

    move v1, v5

    .line 71
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v3, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    xor-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public dealLoveEvent(Lasj$r;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 81
    new-instance p1, Lasj$ae;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lasj$ae;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 76
    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v0

    invoke-virtual {v0}, Lbid;->s()I

    move-result v0

    return v0
.end method

.method public onLocalLoveEvent(Lasj$q;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 86
    new-instance p1, Lasj$ae;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lasj$ae;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

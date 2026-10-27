.class public Lbbu;
.super Ljava/lang/Object;
.source "MusicHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbu$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbbu;
    .locals 1

    .line 32
    sget-object v0, Lbbu$a;->a:Lbbu;

    return-object v0
.end method

.method private c()V
    .locals 1

    .line 120
    new-instance v0, Lbbu$3;

    invoke-direct {v0, p0}, Lbbu$3;-><init>(Lbbu;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 3

    const-string v0, "MusicHistoryManager"

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    const-string p1, "musicInfo MUSIC_FROM_USB"

    .line 48
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_1
    new-instance v0, Lbbu$1;

    invoke-direct {v0, p0, p1, p2}, Lbbu$1;-><init>(Lbbu;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void

    :cond_2
    :goto_0
    const-string p1, "musicInfo null or hash null!"

    .line 43
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeMusicHistory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicHistoryManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 80
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lazt;->a()Lazt;

    move-result-object p1

    invoke-virtual {p1}, Lazt;->b()Lazs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lazs;->c(Ljava/util/List;)V

    .line 83
    new-instance p1, Lbbu$2;

    invoke-direct {p1, p0, v0}, Lbbu$2;-><init>(Lbbu;Ljava/util/List;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b()V
    .locals 6

    .line 100
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    :goto_0
    move v1, v2

    .line 108
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v4

    .line 109
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v5

    invoke-virtual {v5}, Lbdu;->d()I

    move-result v5

    if-ne v4, v5, :cond_2

    if-eqz v1, :cond_2

    move v1, v2

    .line 113
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryRefreshPlayingInfo:audioType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",musicInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MusicHistoryManager"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 115
    invoke-direct {p0}, Lbbu;->c()V

    :cond_3
    return-void
.end method

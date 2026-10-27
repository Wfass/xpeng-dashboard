.class public Lbio;
.super Ljava/lang/Object;
.source "QqMusicPlayHandler.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/music/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbio$a;
    }
.end annotation


# instance fields
.field private a:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "*>;"
        }
    .end annotation
.end field

.field private c:J

.field private d:I

.field private e:I

.field private f:Laqu;


# direct methods
.method public constructor <init>(Laqt;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lbio;->a:Lcom/lzy/okgo/adapter/Call;

    .line 51
    iput-object v0, p0, Lbio;->b:Lcom/lzy/okgo/adapter/Call;

    .line 60
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicPlayHandler: ======="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lbio;->d()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lbio;->c:J

    .line 64
    new-instance v0, Laqu;

    invoke-direct {v0, p1}, Laqu;-><init>(Laqt;)V

    iput-object v0, p0, Lbio;->f:Laqu;

    return-void
.end method

.method static synthetic a(Lbio;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZLcom/xiaopeng/musicradio/model/music/f;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lbio;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZLcom/xiaopeng/musicradio/model/music/f;)V

    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZLcom/xiaopeng/musicradio/model/music/f;)V
    .locals 6

    .line 256
    invoke-virtual {p0, p1}, Lbio;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v0

    .line 257
    invoke-direct {p0, p1, v0}, Lbio;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Landroid/util/Pair;

    move-result-object v1

    .line 258
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 259
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lbio;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 260
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play: ======= curqualit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sec = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ad;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ad;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 263
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 265
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isPlayable()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isTryPlayable()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 266
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p2

    sget v0, Lbub$a;->music_vip_can_play_all:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-interface {p4, p1, p3, v2}, Lcom/xiaopeng/musicradio/model/music/f;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZLjava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: unplayable code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_3

    .line 274
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p3

    .line 275
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    sget p3, Lbub$a;->music_can_not_play:I

    invoke-static {p3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p3

    :cond_2
    const v0, 0x4c4b42

    .line 278
    invoke-interface {p4, p1, p2, v0, p3}, Lcom/xiaopeng/musicradio/model/music/f;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-direct {p0, p1, p2}, Lbio;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lbio$a;

    move-result-object p1

    .line 292
    iget p2, p1, Lbio$a;->c:I

    if-ltz p2, :cond_0

    .line 293
    iget p2, p1, Lbio$a;->c:I

    iput p2, p0, Lbio;->d:I

    .line 295
    :cond_0
    new-instance p2, Landroid/util/Pair;

    iget-object v0, p1, Lbio$a;->a:Ljava/lang/String;

    iget p1, p1, Lbio$a;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lbio$a;
    .locals 13

    .line 302
    new-instance v0, Lbio$a;

    invoke-direct {v0}, Lbio$a;-><init>()V

    .line 304
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isPlayable()Z

    move-result v1

    const-string v2, "quality="

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "%s?xpHash=%s"

    const/4 v6, 0x1

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    .line 305
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object v1

    .line 306
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "play: ============ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    .line 308
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "play: list = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    .line 310
    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getPlayUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 311
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->h()I

    move-result v10

    if-ne v10, v6, :cond_1

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_2

    :goto_0
    move-object v8, v9

    .line 318
    :cond_2
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getMatchQualtiy: +ret === "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_3
    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v10

    if-ne v10, p2, :cond_0

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getPlayUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 321
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getPlayUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_4

    .line 323
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "play: song == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v8, :cond_5

    .line 332
    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v6

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 333
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: ======= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result p2

    const/4 v1, -0x1

    .line 335
    iput v1, v0, Lbio$a;->c:I

    .line 338
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isTryPlayable()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 339
    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "try"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v6

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 341
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getTryBegin()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lbio$a;->c:I

    move p2, v6

    .line 343
    :cond_6
    iput-object v7, v0, Lbio$a;->a:Ljava/lang/String;

    .line 344
    iput p2, v0, Lbio$a;->b:I

    return-object v0
.end method

.method private d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 1

    .line 370
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setQuality(I)V

    .line 373
    new-instance p2, Lbio$3;

    invoke-direct {p2, p0, p1}, Lbio$3;-><init>(Lbio;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {p2}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 4

    .line 216
    iget-object v0, p0, Lbio;->b:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    .line 219
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 222
    :cond_1
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshLrc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Lbim;->a()Lbim;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbio;->e()I

    move-result v2

    new-instance v3, Lbio$2;

    invoke-direct {v3, p0, p1}, Lbio$2;-><init>(Lbio;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-virtual {v0, v1, v2, v3}, Lbim;->b(Ljava/lang/String;ILbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lbio;->b:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 405
    iget v0, p0, Lbio;->d:I

    return v0
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)I
    .locals 0

    .line 350
    invoke-direct {p0, p1, p2}, Lbio;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 0

    .line 415
    iput p1, p0, Lbio;->e:I

    return-void
.end method

.method public a(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 4

    .line 355
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 357
    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->supportQuality(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0, p2, p1}, Lbio;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)I

    move-result v0

    .line 359
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rePlayWhenChangeQuality: ======="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " match = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0, p2, v0}, Lbio;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 361
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->G()V

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rePlayWhenChangeQuality: no support======="

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isPlayable()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayable(Z)V

    .line 196
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 197
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isTryPlayable()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryPlayable(Z)V

    .line 198
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    .line 199
    invoke-virtual {p0, p2, p3}, Lbio;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V

    .line 200
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableCode()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableCode(I)V

    .line 201
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUnplayableMsg(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongPlayTime()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongPlayTime(I)V

    const/4 p1, 0x2

    .line 203
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    const-string p3, "QqMusicPlayHandler"

    const-string v1, "run: hash = %s, from = %d"

    invoke-static {p3, v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lbio;->h()Lbae;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lbae;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;)V
    .locals 0

    .line 212
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;->isHot()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZZLcom/xiaopeng/musicradio/model/music/f;)V
    .locals 13

    move-object v6, p0

    move-object v3, p1

    move/from16 v0, p4

    const/4 v1, 0x0

    .line 123
    iput v1, v6, Lbio;->d:I

    .line 124
    invoke-direct {p0, p1}, Lbio;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, v6, Lbio;->c:J

    sub-long/2addr v1, v4

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v7

    sub-long/2addr v4, v7

    .line 127
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "play: needRefreshListenUrl = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " refreshDeltaTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " vipDeltaTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, p1}, Lbio;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    if-nez v0, :cond_1

    const-wide/32 v7, 0x5265c00

    cmp-long v4, v4, v7

    if-gez v4, :cond_1

    cmp-long v1, v1, v7

    if-ltz v1, :cond_1

    .line 132
    invoke-virtual {p0, p1}, Lbio;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    .line 189
    invoke-direct {p0, p1, p2, v4, v5}, Lbio;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZLcom/xiaopeng/musicradio/model/music/f;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    .line 134
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "play: ======== "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " needRefreshListenUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lbio;->b()V

    .line 136
    invoke-virtual {p0, p1}, Lbio;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setQuality(I)V

    .line 137
    invoke-static {}, Lbim;->a()Lbim;

    move-result-object v7

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result v9

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v10

    invoke-virtual {p0}, Lbio;->e()I

    move-result v11

    new-instance v12, Lbio$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lbio$1;-><init>(Lbio;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZLcom/xiaopeng/musicradio/model/music/f;)V

    invoke-virtual/range {v7 .. v12}, Lbim;->a(Ljava/lang/String;IIILbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    iput-object v0, v6, Lbio;->a:Lcom/lzy/okgo/adapter/Call;

    :goto_1
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 388
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;->isFromCache()Z

    move-result p1

    if-nez p1, :cond_0

    .line 389
    invoke-virtual {p0}, Lbio;->f()Lbci;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lbci;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 1

    .line 400
    iget-object v0, p0, Lbio;->f:Laqu;

    invoke-virtual {v0, p1, p2}, Laqu;->a(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    .line 96
    invoke-virtual {p0, p1}, Lbio;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v0

    .line 97
    invoke-direct {p0, p1, v0}, Lbio;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Landroid/util/Pair;

    move-result-object v0

    .line 98
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 285
    invoke-virtual {p0, p1}, Lbio;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v0

    .line 286
    invoke-direct {p0, p1, v0}, Lbio;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lbio$a;

    move-result-object p1

    .line 287
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lbio$a;->a:Ljava/lang/String;

    iget p1, p1, Lbio$a;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 420
    iget-object v0, p0, Lbio;->a:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lbio;->a:Lcom/lzy/okgo/adapter/Call;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 428
    iget v0, p0, Lbio;->e:I

    return v0
.end method

.method protected c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z
    .locals 1

    .line 76
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "sp_vip_change"

    return-object v0
.end method

.method protected d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I
    .locals 1

    .line 105
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsi;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsi;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lbio;->e()I

    move-result v0

    invoke-interface {p1, v0}, Lbsi;->getSongQuality(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected f()Lbci;
    .locals 1

    .line 72
    invoke-static {}, Lbci;->h()Lbci;

    move-result-object v0

    return-object v0
.end method

.method public h()Lbae;
    .locals 1

    .line 252
    invoke-static {}, Lbad;->a()Lbad;

    move-result-object v0

    return-object v0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    const-string v0, "QqMusicPlayHandler"

    return-object v0
.end method

.method public onVipSuccess(Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVipSuccess: ============= "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lbio;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$be;->a()I

    move-result p1

    if-eq v0, p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lbio;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onVipSuccess: not equal account==="

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lbio;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbio;->c:J

    .line 88
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_1

    .line 89
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 90
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/i;->i()V

    :cond_1
    return-void
.end method

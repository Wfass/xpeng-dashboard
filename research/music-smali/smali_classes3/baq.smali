.class public Lbaq;
.super Lazs;
.source "KugouLatelyMusicOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazs<",
        "Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;",
        "Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lazs;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbaq;
    .locals 1

    .line 75
    sget-object v0, Lbaq$a;->a:Lbaq;

    return-object v0
.end method

.method static synthetic a(Lbaq;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lbaq;->b(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private b(Ljava/util/List;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "KugouLatelyMusicOperation"

    const-string v1, "updateV2List:1 ====="

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    .line 206
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz p2, :cond_9

    .line 207
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "updateV2List:2 ====="

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lbaq;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 213
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 217
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateV2List: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    .line 227
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 228
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 229
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 230
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    const/4 v8, 0x4

    .line 231
    invoke-static {v7, v8}, Lcom/xiaopeng/musicradio/utils/ag;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    move-result-object v7

    .line 232
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setUid(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setCacheId(Ljava/lang/Long;)V

    if-nez p3, :cond_3

    .line 235
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getTs()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setTs(J)V

    .line 237
    :cond_3
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 242
    :cond_5
    iget-object p2, p0, Lbaq;->b:Lban;

    new-instance p3, Lbaq$2;

    invoke-direct {p3, p0}, Lbaq$2;-><init>(Lbaq;)V

    invoke-virtual {p2, p1, p3}, Lban;->a(Ljava/util/List;Lban$a;)Z

    .line 256
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_6

    .line 257
    new-instance p1, Lbaq$3;

    invoke-direct {p1, p0}, Lbaq$3;-><init>(Lbaq;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 266
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 267
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 268
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateV2List: sort item = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 270
    :cond_7
    invoke-virtual {p0, v1}, Lbaq;->a(Ljava/util/List;)V

    .line 272
    :cond_8
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$x;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$x;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .locals 0

    .line 28
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    invoke-virtual {p0, p1}, Lbaq;->c(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)V
    .locals 2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setTs(J)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setUid(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    invoke-virtual {p0, p1, p2}, Lbaq;->a(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 104
    new-instance v2, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;-><init>()V

    .line 105
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)V

    .line 106
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, v0}, Lbaq;->d(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLatelyPlayList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " music size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouLatelyMusicOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lbaq$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lbaq$1;-><init>(Lbaq;Ljava/util/List;Ljava/util/List;Z)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 39
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao$Properties;->Hash:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)V
    .locals 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrReplaceK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KugouLatelyMusicOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lbaq;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertOrReplaceK bean"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " id:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    invoke-virtual {p0, p1}, Lbaq;->b(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)V

    return-void
.end method

.method protected c(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;-><init>()V

    .line 88
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->copyTo(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V

    return-object v0
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 44
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    invoke-virtual {p0, p1}, Lbaq;->a(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)V

    return-void
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 49
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
    .locals 4

    .line 94
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;-><init>()V

    .line 95
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)V

    .line 96
    iget-object v1, p0, Lbaq;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertOrReplace bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " id:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KugouLatelyMusicOperation"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lbaq;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    .line 116
    invoke-virtual {p0, v1}, Lbaq;->c(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lbaq;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lbaq;->a(I)Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v1, p0, Lbaq;->b:Lban;

    invoke-virtual {v1, p1}, Lban;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, " size = "

    const-string v3, "KugouLatelyMusicOperation"

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lbaq;->b:Lban;

    invoke-virtual {v1, p1, v0}, Lban;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertOrReplaceListInTx: set "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 123
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 124
    iget-object v5, p0, Lbaq;->b:Lban;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lban;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertOrReplaceListInTx: addAll "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lbaq;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    .line 174
    invoke-virtual {p0}, Lbaq;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 178
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryLatelyPlayList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KugouLatelyMusicOperation"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lbaq;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v2, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    .line 181
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v3, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    .line 182
    invoke-virtual {p0}, Lbaq;->d()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

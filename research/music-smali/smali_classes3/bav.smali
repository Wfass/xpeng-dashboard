.class public Lbav;
.super Lbaj;
.source "KugouMusicRadioOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbav$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbaj<",
        "Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;",
        "Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lbaj;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbav;
    .locals 1

    .line 34
    sget-object v0, Lbav$a;->a:Lbav;

    return-object v0
.end method

.method static synthetic a(Lbav;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lbav;->b(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private b(Ljava/util/List;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 128
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz p2, :cond_9

    .line 129
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 134
    :cond_0
    iget-object v0, p0, Lbav;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lbav;->b()Lorg/greenrobot/greendao/Property;

    move-result-object v1

    invoke-virtual {p0}, Lbav;->f()I

    move-result v2

    invoke-virtual {p0, v2}, Lbav;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 137
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 141
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    .line 143
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    const-string v4, "KugouMusicRadioOperation"

    if-ge v2, v3, :cond_5

    .line 149
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 150
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 151
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    .line 152
    new-instance v6, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-direct {v6}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;-><init>()V

    .line 153
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v7, v6}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)V

    .line 154
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 155
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setUid(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setType(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setTitle(Ljava/lang/String;)V

    if-nez p3, :cond_3

    .line 160
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCacheTime(J)V

    .line 162
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateV2List: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_6

    .line 168
    new-instance p1, Lbav$2;

    invoke-direct {p1, p0}, Lbav$2;-><init>(Lbav;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    .line 178
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateV2List: sort item = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 180
    :cond_7
    invoke-virtual {p0, v0}, Lbav;->b(Ljava/util/List;)V

    .line 182
    :cond_8
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$m;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$m;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;-><init>()V

    .line 69
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)V

    .line 70
    iget-object p1, p0, Lbav;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;Z)V"
        }
    .end annotation

    .line 116
    new-instance v0, Lbav$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lbav$1;-><init>(Lbav;Ljava/util/List;Ljava/util/List;Z)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lbav;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 53
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected e()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 58
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lbav;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/greenrobot/greendao/Property;

    .line 98
    invoke-virtual {p0}, Lbav;->e()Lorg/greenrobot/greendao/Property;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 102
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryLatelyPlayList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KugouMusicRadioOperation"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lbav;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v2, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;->SysUid:Lorg/greenrobot/greendao/Property;

    .line 105
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSysUid()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v3, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v1, [Lorg/greenrobot/greendao/Property;

    .line 106
    invoke-virtual {p0}, Lbav;->e()Lorg/greenrobot/greendao/Property;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

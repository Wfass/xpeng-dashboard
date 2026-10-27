.class public Lbaw;
.super Lazs;
.source "NeteaseLatelyMusicOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbaw$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazs<",
        "Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;",
        "Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lazs;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbaw;
    .locals 1

    .line 64
    sget-object v0, Lbaw$a;->a:Lbaw;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .locals 0

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1}, Lbaw;->c(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V
    .locals 2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setTs(J)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setUid(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1, p2}, Lbaw;->a(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;Ljava/lang/String;)V

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

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 93
    new-instance v2, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-direct {v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;-><init>()V

    .line 94
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lbaw;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 28
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Hash:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V
    .locals 5

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrReplaceK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeteaseLatelyMusicOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lbaw;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertOrReplaceK bean"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSong()Ljava/lang/String;

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

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1}, Lbaw;->b(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V

    return-void
.end method

.method protected c(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;-><init>()V

    .line 77
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->copyTo(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V

    return-object v0
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1}, Lbaw;->a(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V

    return-void
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
    .locals 4

    .line 83
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;-><init>()V

    .line 84
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V

    .line 85
    iget-object v1, p0, Lbaw;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    .line 86
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

    const-string v0, "NeteaseLatelyMusicOperation"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

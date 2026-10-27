.class public Lazr;
.super Lazs;
.source "LatelyMusicOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lazr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lazs<",
        "Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;",
        "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lazs;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lazr;
    .locals 1

    .line 24
    sget-object v0, Lazr$a;->a:Lazr;

    return-object v0
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    invoke-virtual {p0, p1}, Lazr;->c(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
    .locals 2

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setTs(J)V

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setUid(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    invoke-virtual {p0, p1, p2}, Lazr;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lazr;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao$Properties;->Hash:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected b(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
    .locals 5

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertOrReplaceK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cacheId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LatelyMusicOperation2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lazr;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertOrReplaceK bean"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " id:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    invoke-virtual {p0, p1}, Lazr;->b(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V

    return-void
.end method

.method protected c(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
    .locals 0

    return-object p1
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    invoke-virtual {p0, p1}, Lazr;->a(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V

    return-void
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lazr;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast v0, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    move-result-wide v0

    .line 77
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

    const-string v0, "LatelyMusicOperation2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class public Lbbb;
.super Lbaj;
.source "NeteaseMusicRadioOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbaj<",
        "Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;",
        "Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lbaj;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method

.method public static a()Lbbb;
    .locals 1

    .line 24
    sget-object v0, Lbbb$a;->a:Lbbb;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;-><init>()V

    .line 59
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;)V

    .line 60
    iget-object p1, p0, Lbbb;->a:Lorg/greenrobot/greendao/AbstractDao;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;->insertOrReplace(Ljava/lang/Object;)J

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

.method protected b()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 33
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected c()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected d()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao$Properties;->Type:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method protected e()Lorg/greenrobot/greendao/Property;
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao$Properties;->CacheTime:Lorg/greenrobot/greendao/Property;

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

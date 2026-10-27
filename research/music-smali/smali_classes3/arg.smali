.class public Larg;
.super Ljava/lang/Object;
.source "XpCacheOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larg$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Larg;->a:Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    return-void
.end method

.method public static a()Larg;
    .locals 1

    .line 22
    sget-object v0, Larg$a;->a:Larg;

    return-object v0
.end method

.method static synthetic a(Larg;)Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;
    .locals 0

    .line 14
    iget-object p0, p0, Larg;->a:Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Larg;->a:Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;-><init>()V

    .line 35
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->setKey(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/XpCacheInfo;->setValue(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Larg;->a:Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public b()V
    .locals 1

    .line 60
    new-instance v0, Larg$2;

    invoke-direct {v0, p0}, Larg$2;-><init>(Larg;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Larg;->a:Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Larg$1;

    invoke-direct {v0, p0, p1, p2}, Larg$1;-><init>(Larg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c()V
    .locals 1

    .line 82
    iget-object v0, p0, Larg;->a:Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->deleteAll()V

    return-void
.end method

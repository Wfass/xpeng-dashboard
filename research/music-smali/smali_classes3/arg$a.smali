.class Larg$a;
.super Ljava/lang/Object;
.source "XpCacheOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Larg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Larg;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getXpCacheInfoDao()Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Larg;-><init>(Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;)V

    sput-object v0, Larg$a;->a:Larg;

    return-void
.end method

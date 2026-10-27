.class Lbal$a;
.super Ljava/lang/Object;
.source "MusicUrlOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lbal;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getMusicUrlInfoDao()Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbal;-><init>(Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;)V

    sput-object v0, Lbal$a;->a:Lbal;

    return-void
.end method

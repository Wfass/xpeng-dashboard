.class Lbay$a;
.super Ljava/lang/Object;
.source "NeteaseMusicAlbumOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lbay;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getNeteaseMusicAlbumCollectDao()Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbay;-><init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;)V

    sput-object v0, Lbay$a;->a:Lbay;

    return-void
.end method

.class Lbaz$a;
.super Ljava/lang/Object;
.source "NeteaseMusicCustomOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbaz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lbaz;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getNeteaseMusicAlbumCustomDao()Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbaz;-><init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;)V

    sput-object v0, Lbaz$a;->a:Lbaz;

    return-void
.end method

.class Lazx$a;
.super Ljava/lang/Object;
.source "MusicAlbumOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lazx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lazx;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getMusicAlbumCollectDao()Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lazx;-><init>(Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;)V

    sput-object v0, Lazx$a;->a:Lazx;

    return-void
.end method

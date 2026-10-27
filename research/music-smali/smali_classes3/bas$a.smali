.class Lbas$a;
.super Ljava/lang/Object;
.source "KugouMusicAlbumOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbas;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lbas;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getKugouMusicAlbumCollectDao()Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbas;-><init>(Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;)V

    sput-object v0, Lbas$a;->a:Lbas;

    return-void
.end method

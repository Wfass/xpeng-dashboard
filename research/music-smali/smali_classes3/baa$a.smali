.class Lbaa$a;
.super Ljava/lang/Object;
.source "MusicCustomOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbaa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lbaa;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getMusicAlbumCustomDao()Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbaa;-><init>(Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;)V

    sput-object v0, Lbaa$a;->a:Lbaa;

    return-void
.end method

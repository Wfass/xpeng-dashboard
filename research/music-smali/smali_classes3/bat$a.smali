.class Lbat$a;
.super Ljava/lang/Object;
.source "KugouMusicCustomOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lbat;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getKugouMusicAlbumCustomDao()Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbat;-><init>(Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;)V

    sput-object v0, Lbat$a;->a:Lbat;

    return-void
.end method

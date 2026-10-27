.class Lazr$a;
.super Ljava/lang/Object;
.source "LatelyMusicOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lazr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lazr;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getLatelyMusicInfoDao()Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lazr;-><init>(Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;)V

    sput-object v0, Lazr$a;->a:Lazr;

    return-void
.end method

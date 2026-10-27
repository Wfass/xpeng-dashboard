.class Lbaw$a;
.super Ljava/lang/Object;
.source "NeteaseLatelyMusicOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbaw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lbaw;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getNeteaseLatelyMusicInfoDao()Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbaw;-><init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;)V

    sput-object v0, Lbaw$a;->a:Lbaw;

    return-void
.end method

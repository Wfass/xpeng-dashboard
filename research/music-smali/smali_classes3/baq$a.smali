.class Lbaq$a;
.super Ljava/lang/Object;
.source "KugouLatelyMusicOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbaq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lbaq;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getKugouLatelyMusicInfoDao()Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbaq;-><init>(Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;)V

    sput-object v0, Lbaq$a;->a:Lbaq;

    return-void
.end method

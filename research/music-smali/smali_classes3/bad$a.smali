.class Lbad$a;
.super Ljava/lang/Object;
.source "MusicInfoOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbad;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lbad;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getMusicInfoDao()Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbad;-><init>(Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;)V

    sput-object v0, Lbad$a;->a:Lbad;

    return-void
.end method

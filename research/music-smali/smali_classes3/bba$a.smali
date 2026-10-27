.class Lbba$a;
.super Ljava/lang/Object;
.source "NeteaseMusicInfoOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbba;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lbba;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getNeteaseMusicInfoDao()Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbba;-><init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;)V

    sput-object v0, Lbba$a;->a:Lbba;

    return-void
.end method

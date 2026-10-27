.class Lazu$a;
.super Ljava/lang/Object;
.source "LocalLoveOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lazu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lazu;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getLocalLoveDao()Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lazu;-><init>(Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;)V

    sput-object v0, Lazu$a;->a:Lazu;

    return-void
.end method

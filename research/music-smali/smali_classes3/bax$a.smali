.class Lbax$a;
.super Ljava/lang/Object;
.source "NeteaseLocalLoveOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbax;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lbax;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getNeteaseLocalLoveDao()Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbax;-><init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;)V

    sput-object v0, Lbax$a;->a:Lbax;

    return-void
.end method

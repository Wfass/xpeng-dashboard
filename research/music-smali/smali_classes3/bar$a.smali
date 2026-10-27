.class Lbar$a;
.super Ljava/lang/Object;
.source "KugouLocalLoveOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lbar;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getKugouLocalLoveDao()Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbar;-><init>(Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;)V

    sput-object v0, Lbar$a;->a:Lbar;

    return-void
.end method

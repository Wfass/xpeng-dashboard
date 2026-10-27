.class Lbau$a;
.super Ljava/lang/Object;
.source "KugouMusicInfoOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbau;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbau;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lbau;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getKugouMusicInfoDao()Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbau;-><init>(Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;)V

    sput-object v0, Lbau$a;->a:Lbau;

    return-void
.end method

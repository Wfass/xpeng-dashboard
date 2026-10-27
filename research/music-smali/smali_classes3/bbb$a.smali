.class Lbbb$a;
.super Ljava/lang/Object;
.source "NeteaseMusicRadioOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbbb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lbbb;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getNeteaseMusicRadioItemDao()Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbbb;-><init>(Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;)V

    sput-object v0, Lbbb$a;->a:Lbbb;

    return-void
.end method

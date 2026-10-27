.class Lbqx$b;
.super Ljava/lang/Object;
.source "AudioLogoOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static final a:Lbqx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lbqx;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getAudioLogoInfoDao()Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbqx;-><init>(Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;)V

    sput-object v0, Lbqx$b;->a:Lbqx;

    return-void
.end method

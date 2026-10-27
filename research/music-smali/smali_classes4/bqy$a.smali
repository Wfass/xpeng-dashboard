.class Lbqy$a;
.super Ljava/lang/Object;
.source "AudioParseOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbqy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lbqy;

    invoke-static {}, Larb;->a()Larb;

    move-result-object v1

    invoke-virtual {v1}, Larb;->b()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;->getAudioParseInfoDao()Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    move-result-object v1

    invoke-direct {v0, v1}, Lbqy;-><init>(Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;)V

    sput-object v0, Lbqy$a;->a:Lbqy;

    return-void
.end method

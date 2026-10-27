.class public Lcom/xiaopeng/musicradio/utils/bl;
.super Ljava/lang/Object;
.source "SongListUtils.java"


# static fields
.field private static a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bl;->a:Ljava/util/Random;

    return-void
.end method

.method public static a(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 21
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->c()I

    move-result v1

    const/4 v2, 0x4

    if-ne v2, v1, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    .line 27
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bl;->a:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p0

    :cond_1
    :goto_0
    return v0
.end method

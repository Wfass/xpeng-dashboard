.class Lbmq$2$1;
.super Ljava/lang/Object;
.source "ReadingRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmq$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbmq$2;


# direct methods
.method constructor <init>(Lbmq$2;Ljava/util/List;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lbmq$2$1;->b:Lbmq$2;

    iput-object p2, p0, Lbmq$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 84
    iget-object v0, p0, Lbmq$2$1;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    .line 86
    iget-object v2, p0, Lbmq$2$1;->b:Lbmq$2;

    iget-object v2, v2, Lbmq$2;->b:Lbmq;

    invoke-static {v2}, Lbmq;->c(Lbmq;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->getAlbumId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

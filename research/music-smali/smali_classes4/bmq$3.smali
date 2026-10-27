.class Lbmq$3;
.super Lbkv;
.source "ReadingRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmq;->a(JLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:J

.field final synthetic d:Lbmq;


# direct methods
.method constructor <init>(Lbmq;Ljava/lang/Runnable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 102
    iput-object p1, p0, Lbmq$3;->d:Lbmq;

    iput-object p2, p0, Lbmq$3;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lbmq$3;->b:Ljava/lang/Runnable;

    iput-wide p4, p0, Lbmq$3;->c:J

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 118
    iget-object p1, p0, Lbmq$3;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 119
    iget-object p1, p0, Lbmq$3;->d:Lbmq;

    invoke-static {p1}, Lbmq;->e(Lbmq;)Ljava/util/List;

    move-result-object p1

    iget-wide v0, p0, Lbmq$3;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;

    invoke-virtual {p0, p1}, Lbmq$3;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;)V
    .locals 4

    .line 105
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lbmq$3;->d:Lbmq;

    invoke-static {v1}, Lbmq;->d(Lbmq;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumDetailBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$z;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$z;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 109
    iget-object p1, p0, Lbmq$3;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lbmq$3;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 113
    :goto_0
    iget-object p1, p0, Lbmq$3;->d:Lbmq;

    invoke-static {p1}, Lbmq;->e(Lbmq;)Ljava/util/List;

    move-result-object p1

    iget-wide v0, p0, Lbmq$3;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

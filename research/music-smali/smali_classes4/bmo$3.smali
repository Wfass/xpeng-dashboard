.class Lbmo$3;
.super Ljava/lang/Object;
.source "ReadHistoryOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmo;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbmo;


# direct methods
.method constructor <init>(Lbmo;J)V
    .locals 0

    .line 128
    iput-object p1, p0, Lbmo$3;->b:Lbmo;

    iput-wide p2, p0, Lbmo$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    iget-object v0, p0, Lbmo$3;->b:Lbmo;

    invoke-static {v0}, Lbmo;->a(Lbmo;)Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    move-result-object v0

    iget-wide v1, p0, Lbmo$3;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->deleteByKey(Ljava/lang/Object;)V

    .line 132
    iget-wide v0, p0, Lbmo$3;->a:J

    iget-object v2, p0, Lbmo$3;->b:Lbmo;

    invoke-static {v2}, Lbmo;->b(Lbmo;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lbmo$3;->b:Lbmo;

    invoke-virtual {v0}, Lbmo;->e()V

    .line 135
    :cond_0
    new-instance v0, Lasj$v;

    iget-wide v1, p0, Lbmo$3;->a:J

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lasj$v;-><init>(JZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

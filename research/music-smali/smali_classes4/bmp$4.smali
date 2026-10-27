.class Lbmp$4;
.super Ljava/lang/Object;
.source "ReadLoveOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmp;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbmp;


# direct methods
.method constructor <init>(Lbmp;J)V
    .locals 0

    .line 112
    iput-object p1, p0, Lbmp$4;->b:Lbmp;

    iput-wide p2, p0, Lbmp$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 115
    iget-wide v0, p0, Lbmp$4;->a:J

    iget-object v2, p0, Lbmp$4;->b:Lbmp;

    invoke-static {v2}, Lbmp;->b(Lbmp;)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lbmp$4;->b:Lbmp;

    invoke-virtual {v0}, Lbmp;->c()V

    .line 118
    :cond_0
    iget-object v0, p0, Lbmp$4;->b:Lbmp;

    invoke-static {v0}, Lbmp;->a(Lbmp;)Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    move-result-object v0

    iget-wide v1, p0, Lbmp$4;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

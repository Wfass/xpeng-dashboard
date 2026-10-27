.class Lbmp$1;
.super Ljava/lang/Object;
.source "ReadLoveOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmp;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lbmp$1;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 49
    iget-object v0, p0, Lbmp$1;->a:Lbmp;

    invoke-virtual {v0}, Lbmp;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    .line 52
    iget-object v2, p0, Lbmp$1;->a:Lbmp;

    iget-object v2, v2, Lbmp;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lbmp$1;->a:Lbmp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbmp;->a(Lbmp;Z)Z

    return-void
.end method

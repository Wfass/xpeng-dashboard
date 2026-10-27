.class Layq$2$1;
.super Ljava/lang/Object;
.source "MusicCollectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layq$2;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Layq$2;


# direct methods
.method constructor <init>(Layq$2;Ljava/lang/String;J)V
    .locals 0

    .line 232
    iput-object p1, p0, Layq$2$1;->c:Layq$2;

    iput-object p2, p0, Layq$2$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Layq$2$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 235
    iget-object v0, p0, Layq$2$1;->c:Layq$2;

    iget-object v0, v0, Layq$2;->c:Layq;

    invoke-virtual {v0}, Layq;->f()Lazy;

    move-result-object v0

    invoke-virtual {v0}, Lazy;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 236
    new-instance v0, Lasj$l;

    iget-object v1, p0, Layq$2$1;->c:Layq$2;

    iget-object v1, v1, Layq$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lasj$l;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbub$a;->album_collect_count_max:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 238
    iget-object v0, p0, Layq$2$1;->c:Layq$2;

    iget-object v0, v0, Layq$2;->b:Landroidx/lifecycle/r;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Layq$2$1;->c:Layq$2;

    iget-object v0, v0, Layq$2;->b:Landroidx/lifecycle/r;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Layq$2$1;->c:Layq$2;

    iget-object v0, v0, Layq$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    iget-object v1, p0, Layq$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setUid(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Layq$2$1;->c:Layq$2;

    iget-object v0, v0, Layq$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    iget-wide v1, p0, Layq$2$1;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCreateTime(J)V

    .line 245
    iget-object v0, p0, Layq$2$1;->c:Layq$2;

    iget-object v0, v0, Layq$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    iget-wide v1, p0, Layq$2$1;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setCacheTime(J)V

    .line 246
    iget-object v0, p0, Layq$2$1;->c:Layq$2;

    iget-object v0, v0, Layq$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;->setAppend(Z)V

    .line 247
    iget-object v0, p0, Layq$2$1;->c:Layq$2;

    iget-object v0, v0, Layq$2;->c:Layq;

    iget-object v1, p0, Layq$2$1;->c:Layq$2;

    iget-object v1, v1, Layq$2;->a:Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;

    iget-object v2, p0, Layq$2$1;->c:Layq$2;

    iget-object v2, v2, Layq$2;->b:Landroidx/lifecycle/r;

    invoke-static {v0, v1, v2}, Layq;->b(Layq;Lcom/xiaopeng/musicradio/bean/db/MusicAlbumCollect;Landroidx/lifecycle/r;)V

    return-void
.end method

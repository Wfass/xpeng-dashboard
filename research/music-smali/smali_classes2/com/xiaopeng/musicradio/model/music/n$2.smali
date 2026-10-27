.class Lcom/xiaopeng/musicradio/model/music/n$2;
.super Ljava/lang/Object;
.source "UserDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/n;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/model/music/n;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/n;Z)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/model/music/n$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/n;->c(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 347
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/music/n;->d(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "UserDataProvider"

    const-string v2, "rebootPlay: wait"

    .line 349
    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$2;->b:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/music/n;->c(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 352
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 355
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/n$2$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/music/n$2$1;-><init>(Lcom/xiaopeng/musicradio/model/music/n$2;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 355
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

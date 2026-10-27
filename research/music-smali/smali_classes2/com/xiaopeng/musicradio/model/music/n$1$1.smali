.class Lcom/xiaopeng/musicradio/model/music/n$1$1;
.super Ljava/lang/Object;
.source "UserDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/n$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/music/n$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/n$1;Ljava/util/List;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init insert list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/model/music/n;->b(Lcom/xiaopeng/musicradio/model/music/n;Ljava/util/List;)V

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/n;->b()V

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v0

    iput v0, v1, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/n;->b(Lcom/xiaopeng/musicradio/model/music/n;)V

    .line 148
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/n;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/n;->c(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/model/music/n;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$1$1;->b:Lcom/xiaopeng/musicradio/model/music/n$1;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/model/music/n;->c(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 154
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

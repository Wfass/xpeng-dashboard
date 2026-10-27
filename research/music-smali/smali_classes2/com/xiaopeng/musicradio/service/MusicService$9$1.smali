.class Lcom/xiaopeng/musicradio/service/MusicService$9$1;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/service/MusicService$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/service/MusicService$9;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/service/MusicService$9;Ljava/util/List;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/xiaopeng/musicradio/service/MusicService$9$1;->b:Lcom/xiaopeng/musicradio/service/MusicService$9;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/service/MusicService$9$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 622
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->c()V

    .line 623
    iget-object v0, p0, Lcom/xiaopeng/musicradio/service/MusicService$9$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/service/MusicService$9$1;->a:Ljava/util/List;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

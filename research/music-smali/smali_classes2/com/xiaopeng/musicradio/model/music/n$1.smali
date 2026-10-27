.class Lcom/xiaopeng/musicradio/model/music/n$1;
.super Ljava/lang/Object;
.source "UserDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/n;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/music/n;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/n;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-static {}, Lbao;->a()Lbao;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/n$1;->a:Lcom/xiaopeng/musicradio/model/music/n;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/music/n;->y()I

    move-result v3

    invoke-virtual {v2, v3}, Lbao;->a(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/model/music/n;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UserDataProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/n$1$1;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/musicradio/model/music/n$1$1;-><init>(Lcom/xiaopeng/musicradio/model/music/n$1;Ljava/util/List;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

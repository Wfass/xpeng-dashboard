.class Lcom/xiaopeng/musicradio/model/music/k$3$4;
.super Ljava/lang/Object;
.source "NormalDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/music/k$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Laxz;

.field final synthetic c:Lcom/xiaopeng/musicradio/model/music/k$3;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/music/k$3;Ljava/util/List;Laxz;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->c:Lcom/xiaopeng/musicradio/model/music/k$3;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->b:Laxz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->b:Laxz;

    if-eqz v0, :cond_1

    .line 596
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v0

    invoke-virtual {v0}, Lbrx;->b()V

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->c:Lcom/xiaopeng/musicradio/model/music/k$3;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run: =======play ======= "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->b:Laxz;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->c:Lcom/xiaopeng/musicradio/model/music/k$3;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/k;->v()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;I)V

    :cond_1
    return-void

    .line 591
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->c:Lcom/xiaopeng/musicradio/model/music/k$3;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run: infolist is null========"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k$3$4;->c:Lcom/xiaopeng/musicradio/model/music/k$3;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/model/music/k$3;->b:Lcom/xiaopeng/musicradio/model/music/k;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/music/k;->c(Lcom/xiaopeng/musicradio/model/music/k;)V

    return-void
.end method

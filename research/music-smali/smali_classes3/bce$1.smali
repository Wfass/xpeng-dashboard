.class Lbce$1;
.super Lbkv;
.source "KugouCollectVersionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbce;->a(ILbce$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbce;


# direct methods
.method constructor <init>(Lbce;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lbce$1;->a:Lbce;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lbce$1;->a:Lbce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbce;->a(Lbce;Z)Z

    .line 91
    iget-object v0, p0, Lbce$1;->a:Lbce;

    invoke-static {v0, v1, v1}, Lbce;->a(Lbce;ZZ)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KugouCollectVersionMode"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;)V
    .locals 6

    .line 68
    iget-object v0, p0, Lbce$1;->a:Lbce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbce;->a(Lbce;Z)Z

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: mSongVersion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbce$1;->a:Lbce;

    invoke-static {v2}, Lbce;->a(Lbce;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCollectVersion = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbce$1;->a:Lbce;

    invoke-static {v2}, Lbce;->b(Lbce;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bean = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KugouCollectVersionMode"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 71
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lbau;->a(IZ)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-static {}, Lbas;->a()Lbas;

    move-result-object v2

    invoke-virtual {v2}, Lbas;->h()Ljava/util/HashSet;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->getFavouriteSongVersion()I

    move-result v3

    iget-object v4, p0, Lbce$1;->a:Lbce;

    invoke-static {v4}, Lbce;->a(Lbce;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    .line 76
    :goto_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->getOtherCollectVersion()I

    move-result v3

    iget-object v4, p0, Lbce$1;->a:Lbce;

    invoke-static {v4}, Lbce;->b(Lbce;)I

    move-result v4

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v1, v5

    .line 77
    :cond_3
    iget-object v2, p0, Lbce$1;->a:Lbce;

    invoke-static {v2}, Lbce;->c(Lbce;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 78
    iget-object v2, p0, Lbce$1;->a:Lbce;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->getFavouriteSongVersion()I

    move-result v3

    invoke-static {v2, v3}, Lbce;->a(Lbce;I)V

    .line 80
    :cond_4
    iget-object v2, p0, Lbce$1;->a:Lbce;

    invoke-static {v2}, Lbce;->c(Lbce;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 81
    iget-object v2, p0, Lbce$1;->a:Lbce;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean$DataBean;->getOtherCollectVersion()I

    move-result p1

    invoke-static {v2, p1}, Lbce;->b(Lbce;I)V

    .line 84
    :cond_5
    iget-object p1, p0, Lbce$1;->a:Lbce;

    invoke-static {p1, v0, v1}, Lbce;->a(Lbce;ZZ)V

    :cond_6
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;

    invoke-virtual {p0, p1}, Lbce$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/CollectVersionBean;)V

    return-void
.end method

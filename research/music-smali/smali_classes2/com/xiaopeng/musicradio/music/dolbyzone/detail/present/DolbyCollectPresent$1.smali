.class Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;
.super Ljava/lang/Object;
.source "DolbyCollectPresent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;Ljava/util/List;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->a(Ljava/util/List;)V

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;

    invoke-static {}, Lbid;->a()Lbid;

    move-result-object v1

    invoke-virtual {v1}, Lbid;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->b(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent$1;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/detail/present/DolbyCollectPresent;Z)Z

    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1$1;
.super Ljava/lang/Object;
.source "DolbyResourcePreloadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;Ljava/util/List;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1$1;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1$1;->b:Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1;->a:Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;->a(Lcom/xiaopeng/musicradio/music/dolbyzone/view/b;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/view/b$1$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

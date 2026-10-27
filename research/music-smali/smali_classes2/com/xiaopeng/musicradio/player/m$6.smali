.class Lcom/xiaopeng/musicradio/player/m$6;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/k$a;

.field final synthetic b:Lcom/xiaopeng/musicradio/player/m;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/m;Lcom/xiaopeng/musicradio/player/k$a;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m$6;->b:Lcom/xiaopeng/musicradio/player/m;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/player/m$6;->a:Lcom/xiaopeng/musicradio/player/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$6;->b:Lcom/xiaopeng/musicradio/player/m;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$6;->b:Lcom/xiaopeng/musicradio/player/m;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/player/m;->b()V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m$6;->a:Lcom/xiaopeng/musicradio/player/k$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/k$a;->a()V

    :goto_0
    return-void
.end method

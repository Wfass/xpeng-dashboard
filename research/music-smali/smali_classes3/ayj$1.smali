.class Layj$1;
.super Ljava/lang/Object;
.source "PlaybackViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layj;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

.field final synthetic b:Layj;


# direct methods
.method constructor <init>(Layj;Lcom/xiaopeng/musicradio/model/bluetooth/i;)V
    .locals 0

    .line 392
    iput-object p1, p0, Layj$1;->b:Layj;

    iput-object p2, p0, Layj$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onA2dpDisconnected run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Layj$1;->b:Layj;

    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b()Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Layj$1;->a:Lcom/xiaopeng/musicradio/model/bluetooth/i;

    iget-object v1, p0, Layj$1;->b:Layj;

    invoke-static {v1}, Layj;->a(Layj;)Lcom/xiaopeng/musicradio/model/bluetooth/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b()Lcom/xiaopeng/musicradio/model/bluetooth/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/i;->a(Lcom/xiaopeng/musicradio/model/bluetooth/e;)V

    return-void
.end method

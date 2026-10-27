.class Lcom/xiaopeng/musicradio/player/k$1;
.super Ljava/lang/Object;
.source "PlayerActionHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/k;->a(Lcom/xiaopeng/musicradio/player/k$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/player/k$a;

.field final synthetic b:Lcom/xiaopeng/musicradio/player/k;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/k;Lcom/xiaopeng/musicradio/player/k$a;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/k$1;->b:Lcom/xiaopeng/musicradio/player/k;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/player/k$1;->a:Lcom/xiaopeng/musicradio/player/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/k$1;->a:Lcom/xiaopeng/musicradio/player/k$a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/player/k$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PlayerActionHelper"

    .line 30
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

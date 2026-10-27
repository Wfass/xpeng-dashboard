.class Lcom/xiaopeng/musicradio/player/h$1;
.super Ljava/lang/Object;
.source "MediaPlayerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/player/h;->onLoadingChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/player/h;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/player/h;Z)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/h$1;->b:Lcom/xiaopeng/musicradio/player/h;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/player/h$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h$1;->b:Lcom/xiaopeng/musicradio/player/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/h;->a(Lcom/xiaopeng/musicradio/player/h;)Lcom/xiaopeng/musicradio/player/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/h$1;->b:Lcom/xiaopeng/musicradio/player/h;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/player/h;->a(Lcom/xiaopeng/musicradio/player/h;)Lcom/xiaopeng/musicradio/player/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/h$1;->b:Lcom/xiaopeng/musicradio/player/h;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/player/h;->b(Lcom/xiaopeng/musicradio/player/h;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/player/h$1;->a:Z

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/musicradio/player/l;->loadingChange(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

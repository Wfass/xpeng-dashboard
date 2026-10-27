.class Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper$1;
.super Ljava/lang/Object;
.source "MusicPlayerWrapper.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/player/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->wrapCache(Ljava/lang/String;)Lcom/xiaopeng/musicradio/player/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper$1;->a:Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbkx$a;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper$1;->a:Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->access$000(Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;)Lcom/xiaopeng/musicradio/player/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper$1;->a:Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->access$100(Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;)Lcom/xiaopeng/musicradio/player/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/player/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lbkx$a;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/model/player/MusicPlayerWrapper;->onSetData(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

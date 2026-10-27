.class Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a$1;
.super Ljava/lang/Object;
.source "LyricView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a$1;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a$1;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a$1;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a$1;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(IZZ)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a$1;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->postInvalidate()V

    :goto_0
    return-void
.end method

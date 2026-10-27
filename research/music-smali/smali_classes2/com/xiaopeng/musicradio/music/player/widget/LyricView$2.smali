.class Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;
.super Landroid/os/Handler;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/music/player/widget/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 713
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Z)Z

    .line 714
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(IZZ)V

    return-void
.end method

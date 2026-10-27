.class Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;
.super Ljava/lang/Object;
.source "LyricView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 697
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Z)Z

    return-void
.end method

.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$5;
.super Ljava/lang/Object;
.source "MusicPlayerCommonLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$5;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$5;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$1100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)V

    const-string v0, "MusicPlayerCommonLayout"

    const-string v1, "run: ==========createlrc"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

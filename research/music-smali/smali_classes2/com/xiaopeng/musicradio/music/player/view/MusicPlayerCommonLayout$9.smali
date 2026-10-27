.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$9;
.super Ljava/lang/Object;
.source "MusicPlayerCommonLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/playercomponent/big/view/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->closeLrc()V
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

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$9;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$9;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->setLrcShow(Z)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$9;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$1500(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;Z)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$9;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$1600(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;Z)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$9;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->refreshColor()V

    return-void
.end method

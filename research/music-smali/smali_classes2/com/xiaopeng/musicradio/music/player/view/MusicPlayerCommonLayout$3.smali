.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$3;
.super Ljava/lang/Object;
.source "MusicPlayerCommonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$800(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->access$900(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;)Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout$3;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayerCommonLayout;->openLrc()V

    return-void
.end method

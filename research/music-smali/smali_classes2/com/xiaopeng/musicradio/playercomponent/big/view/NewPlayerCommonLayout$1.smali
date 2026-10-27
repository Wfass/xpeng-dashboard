.class Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;
.super Ljava/lang/Object;
.source "NewPlayerCommonLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->access$000(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lble$c;->music_player_like_state_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPreImg:Landroid/widget/ImageView;

    sget v1, Lble$c;->ic_music_lastsong:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mNextImg:Landroid/widget/ImageView;

    sget v1, Lble$c;->ic_music_nextsong:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mDspImg:Landroid/widget/ImageView;

    sget v1, Lble$c;->ic_music_setting_s:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayListImg:Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;

    sget v1, Lble$c;->ic_music_playlist_order:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/SelectedImageView;->setBackgroundResource(I)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->refreshColor()V

    return-void
.end method

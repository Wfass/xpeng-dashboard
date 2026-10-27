.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout$1;
.super Ljava/lang/Object;
.source "PlayerAlbumLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->mBorderImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lble$c;->big_player_album_stroke:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

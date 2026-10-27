.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$1;
.super Ljava/lang/Object;
.source "PlayerBgEffectView.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Landroid/graphics/Bitmap;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$1;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$1;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

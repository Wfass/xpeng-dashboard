.class Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$3;
.super Ljava/lang/Object;
.source "PlayerBgEffectView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$3;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView$3;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerBgEffectView;->invalidate()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

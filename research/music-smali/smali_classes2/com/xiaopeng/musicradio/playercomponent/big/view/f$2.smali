.class Lcom/xiaopeng/musicradio/playercomponent/big/view/f$2;
.super Ljava/lang/Object;
.source "PlayerBgEffectDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/big/view/f;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->b(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;F)F

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->a(Lcom/xiaopeng/musicradio/playercomponent/big/view/f;J)J

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/f$2;->a:Lcom/xiaopeng/musicradio/playercomponent/big/view/f;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/playercomponent/big/view/f;->invalidateSelf()V

    :cond_0
    return-void
.end method

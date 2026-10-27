.class public final synthetic Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradientDrawable$gC5S_tBlvGAi9nTVuFGNoWUPZUk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradientDrawable$gC5S_tBlvGAi9nTVuFGNoWUPZUk;->f$0:Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/-$$Lambda$XStateGradientDrawable$gC5S_tBlvGAi9nTVuFGNoWUPZUk;->f$0:Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/XStateGradientDrawable;->lambda$animateStrokeColor$1$XStateGradientDrawable(Landroid/animation/ValueAnimator;)V

    return-void
.end method

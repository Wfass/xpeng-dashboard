.class public final synthetic Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$PlayingDrawable$Eia5UpfRSxu291HP3NzQjfEldvE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;

.field public final synthetic f$1:Ljava/util/Random;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;Ljava/util/Random;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$PlayingDrawable$Eia5UpfRSxu291HP3NzQjfEldvE;->f$0:Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$PlayingDrawable$Eia5UpfRSxu291HP3NzQjfEldvE;->f$1:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$PlayingDrawable$Eia5UpfRSxu291HP3NzQjfEldvE;->f$0:Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/-$$Lambda$PlayingDrawable$Eia5UpfRSxu291HP3NzQjfEldvE;->f$1:Ljava/util/Random;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/view/widget/PlayingDrawable;->lambda$inflateAttrs$0$PlayingDrawable(Ljava/util/Random;Landroid/animation/ValueAnimator;)V

    return-void
.end method

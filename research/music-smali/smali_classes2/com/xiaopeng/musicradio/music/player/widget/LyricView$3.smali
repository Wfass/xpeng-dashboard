.class Lcom/xiaopeng/musicradio/music/player/widget/LyricView$3;
.super Ljava/lang/Object;
.source "LyricView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$3;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$3;->a:Lcom/xiaopeng/musicradio/music/player/widget/LyricView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;F)F

    return-void
.end method

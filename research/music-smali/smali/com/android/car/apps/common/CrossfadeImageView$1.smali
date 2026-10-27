.class Lcom/android/car/apps/common/CrossfadeImageView$1;
.super Ljava/lang/Object;
.source "CrossfadeImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/apps/common/CrossfadeImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/car/apps/common/CrossfadeImageView;


# direct methods
.method constructor <init>(Lcom/android/car/apps/common/CrossfadeImageView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/car/apps/common/CrossfadeImageView$1;->a:Lcom/android/car/apps/common/CrossfadeImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/android/car/apps/common/CrossfadeImageView$1;->a:Lcom/android/car/apps/common/CrossfadeImageView;

    invoke-static {p1}, Lcom/android/car/apps/common/CrossfadeImageView;->access$000(Lcom/android/car/apps/common/CrossfadeImageView;)Lcom/android/car/apps/common/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/car/apps/common/CrossfadeImageView$1;->a:Lcom/android/car/apps/common/CrossfadeImageView;

    invoke-static {p1}, Lcom/android/car/apps/common/CrossfadeImageView;->access$000(Lcom/android/car/apps/common/CrossfadeImageView;)Lcom/android/car/apps/common/e;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/car/apps/common/e;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

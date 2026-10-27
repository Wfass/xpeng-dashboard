.class Lxiaopeng/widget/SimpleSlider$1;
.super Ljava/lang/Object;
.source "SimpleSlider.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxiaopeng/widget/SimpleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxiaopeng/widget/SimpleSlider;


# direct methods
.method constructor <init>(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 160
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    const v1, 0x102000d

    invoke-static {v0, v1}, Lxiaopeng/widget/SimpleSlider;->access$000(Lxiaopeng/widget/SimpleSlider;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 165
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v0}, Lxiaopeng/widget/SimpleSlider;->access$100(Lxiaopeng/widget/SimpleSlider;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v1, v2, v0, p1, v3}, Lxiaopeng/widget/SimpleSlider;->access$200(Lxiaopeng/widget/SimpleSlider;ILandroid/graphics/drawable/Drawable;FI)V

    .line 172
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 175
    :goto_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v0}, Lxiaopeng/widget/SimpleSlider;->access$300(Lxiaopeng/widget/SimpleSlider;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 177
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    :cond_2
    return-void
.end method

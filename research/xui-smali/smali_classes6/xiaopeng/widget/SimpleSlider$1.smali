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
    .param p1, "this$0"    # Lxiaopeng/widget/SimpleSlider;

    .line 155
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 158
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 159
    .local v0, "value":F
    const/4 v1, 0x0

    .line 160
    .local v1, "invalidated":Z
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    const v3, 0x102000d

    invoke-static {v2, v3}, Lxiaopeng/widget/SimpleSlider;->access$000(Lxiaopeng/widget/SimpleSlider;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 161
    .local v2, "progressDr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 162
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 165
    :cond_0
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v3}, Lxiaopeng/widget/SimpleSlider;->access$100(Lxiaopeng/widget/SimpleSlider;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 166
    .local v3, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 167
    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    iget-object v5, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v5}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v4, v5, v3, v0, v6}, Lxiaopeng/widget/SimpleSlider;->access$200(Lxiaopeng/widget/SimpleSlider;ILandroid/graphics/drawable/Drawable;FI)V

    .line 172
    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 173
    const/4 v1, 0x1

    .line 175
    :cond_1
    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v4}, Lxiaopeng/widget/SimpleSlider;->access$300(Lxiaopeng/widget/SimpleSlider;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 176
    if-nez v1, :cond_2

    .line 177
    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$1;->this$0:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->invalidate()V

    .line 180
    :cond_2
    return-void
.end method

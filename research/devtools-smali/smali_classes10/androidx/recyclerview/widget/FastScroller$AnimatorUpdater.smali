.class Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/FastScroller;


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/FastScroller;)V
    .locals 0

    .line 577
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/FastScroller;Landroidx/recyclerview/widget/FastScroller$1;)V
    .locals 0

    .line 577
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 581
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 582
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-static {v0}, Landroidx/recyclerview/widget/FastScroller;->access$600(Landroidx/recyclerview/widget/FastScroller;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 583
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-static {v0}, Landroidx/recyclerview/widget/FastScroller;->access$700(Landroidx/recyclerview/widget/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 584
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;->this$0:Landroidx/recyclerview/widget/FastScroller;

    invoke-static {p1}, Landroidx/recyclerview/widget/FastScroller;->access$500(Landroidx/recyclerview/widget/FastScroller;)V

    .line 585
    return-void
.end method

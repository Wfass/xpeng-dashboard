.class Lcom/xiaopeng/libtheme/ThemeWrapper$4$1;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$4;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libtheme/ThemeWrapper$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    .line 563
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 566
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 567
    .local v0, "color":I
    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$4$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$4;

    iget-object v1, v1, Lcom/xiaopeng/libtheme/ThemeWrapper$4;->val$view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    return-void
.end method

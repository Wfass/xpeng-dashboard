.class Lcom/xiaopeng/libtheme/ThemeWrapper$3$1;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$3;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libtheme/ThemeWrapper$3;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$3$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 540
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 541
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$3$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper$3;

    iget-object v0, v0, Lcom/xiaopeng/libtheme/ThemeWrapper$3;->val$view:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

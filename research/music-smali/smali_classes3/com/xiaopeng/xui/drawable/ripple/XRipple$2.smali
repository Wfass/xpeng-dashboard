.class Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;
.super Ljava/lang/Object;
.source "XRipple.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/drawable/ripple/XRipple;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$800(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$802(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z

    .line 192
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1000(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1002(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1100(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1202(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$700(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$600(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 184
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$802(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$2;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$902(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z

    return-void
.end method

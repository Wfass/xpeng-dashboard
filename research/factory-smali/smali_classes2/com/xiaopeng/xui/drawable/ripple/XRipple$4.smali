.class Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;
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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 245
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$700(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$600(Lcom/xiaopeng/xui/drawable/ripple/XRipple;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1202(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$902(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z

    .line 241
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/ripple/XRipple$4;->this$0:Lcom/xiaopeng/xui/drawable/ripple/XRipple;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/ripple/XRipple;->access$1202(Lcom/xiaopeng/xui/drawable/ripple/XRipple;Z)Z

    .line 234
    return-void
.end method

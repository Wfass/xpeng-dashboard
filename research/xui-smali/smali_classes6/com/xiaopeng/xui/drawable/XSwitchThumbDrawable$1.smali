.class Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "XSwitchThumbDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 126
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 127
    const-string v0, "XSwitchThumbDrawable"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->access$100(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->access$002(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;Z)Z

    .line 129
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 133
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 134
    const-string v0, "XSwitchThumbDrawable"

    const-string v1, "onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->access$100(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->access$002(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;Z)Z

    .line 136
    return-void
.end method

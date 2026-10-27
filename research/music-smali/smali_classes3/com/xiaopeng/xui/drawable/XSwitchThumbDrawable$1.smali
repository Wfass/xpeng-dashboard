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

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "XSwitchThumbDrawable"

    const-string v0, "onAnimationCancel"

    .line 127
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->access$100(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->access$002(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "XSwitchThumbDrawable"

    const-string v0, "onAnimationCancel"

    .line 134
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;

    invoke-static {p1}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->access$100(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;->access$002(Lcom/xiaopeng/xui/drawable/XSwitchThumbDrawable;Z)Z

    return-void
.end method

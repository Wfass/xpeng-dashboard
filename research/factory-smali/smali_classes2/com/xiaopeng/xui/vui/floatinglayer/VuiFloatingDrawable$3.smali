.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$3;
.super Ljava/lang/Object;
.source "VuiFloatingDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$3;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 116
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$3;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    const-string v1, "onAnimationEnd "

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->access$300(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable$3;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingDrawable;->stop()V

    .line 114
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 109
    return-void
.end method

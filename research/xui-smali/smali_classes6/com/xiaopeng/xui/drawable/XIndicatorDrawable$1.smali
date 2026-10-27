.class Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;
.super Ljava/lang/Object;
.source "XIndicatorDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    .line 134
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$200(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$102(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$400(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$302(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$600(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$502(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$800(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$702(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F

    .line 155
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$000(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$000(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;->onEnd()V

    .line 147
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 160
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$000(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$000(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;->onStart()V

    .line 140
    :cond_0
    return-void
.end method

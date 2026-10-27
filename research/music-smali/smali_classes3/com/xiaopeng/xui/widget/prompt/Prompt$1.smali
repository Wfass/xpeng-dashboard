.class Lcom/xiaopeng/xui/widget/prompt/Prompt$1;
.super Ljava/lang/Object;
.source "Prompt.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/prompt/Prompt;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/prompt/Prompt;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/prompt/Prompt;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt$1;->this$0:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt$1;->this$0:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->access$100(Lcom/xiaopeng/xui/widget/prompt/Prompt;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt$1;->this$0:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->access$000(Lcom/xiaopeng/xui/widget/prompt/Prompt;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

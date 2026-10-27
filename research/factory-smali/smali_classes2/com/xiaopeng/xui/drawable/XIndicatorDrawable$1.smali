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

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$100(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$002(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    iget-object v1, p0, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$1;->this$0:Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;

    invoke-static {v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$300(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;->access$202(Lcom/xiaopeng/xui/drawable/XIndicatorDrawable;F)F

    .line 98
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 92
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 103
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 87
    return-void
.end method

.class Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;
.super Ljava/lang/Object;
.source "XPopPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->moveToPointWithAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

.field final synthetic val$point:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    .line 954
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iput-object p2, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;->val$point:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 965
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;->val$point:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$2000(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/graphics/Point;)V

    .line 966
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 960
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;->this$0:Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout$1;->val$point:Landroid/graphics/Point;

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;->access$2000(Lcom/xiaopeng/xui/app/XPopPanel$BackgroundLayout;Landroid/graphics/Point;)V

    .line 961
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 969
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 956
    return-void
.end method

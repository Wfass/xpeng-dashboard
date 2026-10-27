.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;
.super Ljava/lang/Object;
.source "NavigationBar2.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onFinishDrag$0(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;)V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    aput v2, v1, v3

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->access$400(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;[I)V

    .line 141
    return-void
.end method


# virtual methods
.method public onClickAppArea()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onClickAppArea()V

    .line 175
    return-void
.end method

.method public onFinishDrag(Z)V
    .locals 2
    .param p1, "leftSide"    # Z

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->access$002(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;Z)Z

    .line 139
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NavigationBar2$3$oIn42oZa7pJaKszRoi9VfZ0xjlE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/-$$Lambda$NavigationBar2$3$oIn42oZa7pJaKszRoi9VfZ0xjlE;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onFinishDrag(Z)V

    .line 144
    return-void
.end method

.method public onFinishTouch()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onFinishTouch()V

    .line 149
    return-void
.end method

.method public onMoveToCenter()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onMoveToCenter()V

    .line 164
    return-void
.end method

.method public onMoveToLeftEdge()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onMoveToLeftEdge()V

    .line 154
    return-void
.end method

.method public onMoveToRightEdge()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onMoveToRightEdge()V

    .line 159
    return-void
.end method

.method public onStartTouch()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onStartTouch()V

    .line 133
    return-void
.end method

.method public onUpdateLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->barImpl:Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/AppBarBase;->onUpdateLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 170
    return-void
.end method

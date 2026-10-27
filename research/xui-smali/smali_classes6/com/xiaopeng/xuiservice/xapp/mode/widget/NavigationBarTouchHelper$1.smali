.class Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;
.super Lcom/xiaopeng/input/IInputEventListener$Stub;
.source "NavigationBarTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-direct {p0}, Lcom/xiaopeng/input/IInputEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;Ljava/lang/String;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 189
    return-void

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    return-void

    .line 197
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 198
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 201
    .local v1, "y":I
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 202
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 203
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-lt v1, v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 204
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    .line 205
    return-void

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->access$300(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/graphics/Rect;

    move-result-object v2

    .line 209
    .local v2, "rect":Landroid/graphics/Rect;
    if-nez v2, :cond_3

    .line 210
    return-void

    .line 213
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v3

    .line 214
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x32

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 215
    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x32

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 218
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 219
    return-void

    .line 222
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    iget-object v3, v3, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    invoke-interface {v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onClickAppArea()V

    .line 223
    return-void
.end method

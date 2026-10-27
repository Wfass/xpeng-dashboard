.class public Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;
.super Ljava/lang/Object;
.source "NavigationBarTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;
    }
.end annotation


# instance fields
.field final callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

.field private downBarWidth:I

.field private downBarX:I

.field private downBarY:I

.field private downTouchX:F

.field private downTouchY:F

.field dragging:Z

.field private final inputEventListener:Lcom/xiaopeng/input/IInputEventListener;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final navigationBar:Landroid/view/View;

.field private final screenId:I

.field private final touchSlot:I

.field private windowHeight:I

.field private windowRect:Landroid/graphics/Rect;

.field private windowWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;ILandroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "navigationBar"    # Landroid/view/View;
    .param p3, "screenId"    # I
    .param p4, "windowRect"    # Landroid/graphics/Rect;
    .param p5, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "callback"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->inputEventListener:Lcom/xiaopeng/input/IInputEventListener;

    .line 56
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->touchSlot:I

    .line 57
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->navigationBar:Landroid/view/View;

    .line 58
    iput p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->screenId:I

    .line 59
    iput-object p6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    .line 61
    invoke-virtual {p0, p4, p5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->update(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 15
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->screenId:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->navigationBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private leftSide()Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowWidth:I

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->navigationBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getInputEventListener()Lcom/xiaopeng/input/IInputEventListener;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->inputEventListener:Lcom/xiaopeng/input/IInputEventListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->dragging:Z

    if-eqz v0, :cond_0

    .line 87
    return v2

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downTouchX:F

    sub-float/2addr v0, v3

    .line 91
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downTouchY:F

    sub-float/2addr v3, v4

    .line 94
    .local v3, "dy":F
    mul-float v4, v0, v0

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->touchSlot:I

    iget v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->touchSlot:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 95
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->dragging:Z

    .line 96
    return v2

    .line 102
    .end local v0    # "dx":F
    .end local v3    # "dy":F
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onFinishTouch()V

    .line 104
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->dragging:Z

    if-eqz v0, :cond_1

    .line 105
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->dragging:Z

    .line 106
    return v2

    .line 74
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downTouchX:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downTouchY:F

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->navigationBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downBarWidth:I

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downBarX:I

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downBarY:I

    .line 79
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->dragging:Z

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onStartTouch()V

    .line 83
    nop

    .line 111
    :cond_1
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 119
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downTouchX:F

    sub-float/2addr v0, v1

    .line 120
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downTouchY:F

    sub-float/2addr v1, v2

    .line 122
    .local v1, "dy":F
    iget v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downBarX:I

    float-to-int v3, v0

    add-int/2addr v2, v3

    .line 123
    .local v2, "x":I
    iget v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downBarY:I

    float-to-int v4, v1

    add-int/2addr v3, v4

    .line 125
    .local v3, "y":I
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 127
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    invoke-interface {v4}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onMoveToLeftEdge()V

    goto :goto_0

    .line 129
    :cond_0
    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downBarWidth:I

    .line 130
    .local v4, "w":I
    add-int v5, v2, v4

    iget v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowWidth:I

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 131
    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowWidth:I

    sub-int/2addr v5, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int v2, v5, v6

    .line 132
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    invoke-interface {v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onMoveToRightEdge()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    invoke-interface {v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onMoveToCenter()V

    .line 138
    .end local v4    # "w":I
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v3, v4, :cond_2

    .line 139
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 141
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->navigationBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 142
    .local v4, "h":I
    add-int v5, v3, v4

    iget v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowHeight:I

    iget-object v7, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    if-le v5, v6, :cond_3

    .line 143
    iget v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowHeight:I

    sub-int/2addr v5, v4

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v3, v5, v6

    .line 147
    .end local v4    # "h":I
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 148
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 150
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onUpdateLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 151
    goto :goto_3

    .line 154
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->downBarWidth:I

    .line 155
    .local v0, "w":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->dragging:Z

    .line 157
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->leftSide()Z

    move-result v1

    .line 158
    .local v1, "atLeft":Z
    if-eqz v1, :cond_4

    .line 159
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    .line 161
    :cond_4
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowWidth:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 163
    :goto_2
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onFinishDrag(Z)V

    .line 165
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onUpdateLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->callback:Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;

    invoke-interface {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper$Callback;->onFinishTouch()V

    .end local v0    # "w":I
    .end local v1    # "atLeft":Z
    goto :goto_3

    .line 117
    :pswitch_2
    nop

    .line 172
    :goto_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "windowRect"    # Landroid/graphics/Rect;
    .param p2, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowRect:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowWidth:I

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->windowHeight:I

    .line 68
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBarTouchHelper;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 69
    return-void
.end method

.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;
.super Ljava/lang/Object;
.source "VuiFloatingLayer.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;,
        Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;,
        Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;,
        Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiFloatingLayer"


# instance fields
.field private mAnimationCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLayerInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRunnableTimeOutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnableTouchMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;",
            ">;"
        }
    .end annotation
.end field

.field private mVuiFloatingViewMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mVuiFloatingViewMap:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayerInfoMap:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mAnimationCallbackMap:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTouchMap:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTimeOutMap:Landroid/util/SparseArray;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x50328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->removeView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object v0

    return-object v0
.end method

.method private addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 4
    .param p1, "vuiFloatingView"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "type"    # I

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add to window x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , w : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,h : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update to window x : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , w : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,h : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTimeOut(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    move-result-object v1

    invoke-static {p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->getAnimateTimeOut(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    return-void
.end method

.method private getAnimationCallback(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;
    .locals 2
    .param p1, "type"    # I

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mAnimationCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    .line 88
    .local v0, "animationCallback":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    move-object v0, v1

    .line 90
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mAnimationCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_0
    return-object v0
.end method

.method private getRunnableTimeOut(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;
    .locals 2
    .param p1, "type"    # I

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTimeOutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    .line 135
    .local v0, "runnable":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    move-object v0, v1

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTimeOutMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    :cond_0
    return-object v0
.end method

.method private getRunnableTouch(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;
    .locals 2
    .param p1, "type"    # I

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTouchMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;

    .line 111
    .local v0, "runnable":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;
    if-nez v0, :cond_0

    .line 112
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    move-object v0, v1

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTouchMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    :cond_0
    return-object v0
.end method

.method private getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    .locals 3
    .param p1, "type"    # I

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mVuiFloatingViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    .line 76
    .local v0, "vuiFloatingView":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    if-nez v0, :cond_0

    .line 77
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mVuiFloatingViewMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$UXxtbfMrTLOTVDQw-YOjhAcXvSA;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$UXxtbfMrTLOTVDQw-YOjhAcXvSA;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->setOnTouchListener(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;)V

    .line 83
    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$getVuiFloatingView$0(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "type1"    # I

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTouch(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method

.method public static synthetic lambda$showFloatingLayer$1(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "view"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    .param p3, "animationCallback"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAnimationCallback...type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->registerAnimationCallback(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;)V

    .line 207
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 265
    const-string v0, "VuiFloatingLayer"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private log_I(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 268
    const-string v0, "VuiFloatingLayer"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private removeView(I)V
    .locals 3
    .param p1, "type"    # I

    .line 236
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object v0

    .line 237
    .local v0, "view":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->stopAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    .line 238
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 240
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTimeOut(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove window..type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    const-string v1, "view is null or view all in window"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void
.end method

.method private setFloatingLocation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;I)V
    .locals 5
    .param p1, "vuiFloatingView"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    .param p2, "info"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;
    .param p3, "type"    # I

    .line 162
    if-nez p2, :cond_0

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getVisibleWidth()I

    move-result v0

    .line 166
    .local v0, "viewWidth":I
    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getVisibleHeight()I

    move-result v1

    .line 167
    .local v1, "viewHeight":I
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 168
    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 170
    invoke-static {p3, p2, v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLocationUtils;->getLocation(ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;II)[I

    move-result-object v2

    .line 171
    .local v2, "point":[I
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    aget v4, v2, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 172
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    aget v4, v2, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 174
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v3, v4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->setLocation(II)V

    .line 176
    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, p1, v3, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->addView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    .line 177
    return-void
.end method

.method private startAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 1
    .param p1, "view"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    .line 248
    const-string v0, "startAnimation..."

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->start()V

    goto :goto_0

    .line 252
    :cond_0
    const-string v0, "view is null"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void
.end method

.method private stopAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 1
    .param p1, "view"    # Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    .line 257
    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->stop()V

    goto :goto_0

    .line 260
    :cond_0
    const-string v0, "view is null"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void
.end method


# virtual methods
.method public hideFloatingLayer(I)V
    .locals 2
    .param p1, "type"    # I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFloatingLayer...type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object v0

    .line 218
    .local v0, "view":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->stopAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->removeView(I)V

    .line 220
    return-void
.end method

.method public showFloatingLayer(Landroid/view/View;III)V
    .locals 6
    .param p1, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I
    .param p3, "centerOffsetX"    # I
    .param p4, "centerOffsetY"    # I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFloatingLayer...type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTouch(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTimeOut(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayerInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;

    .line 187
    .local v0, "info":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;
    if-nez v0, :cond_0

    .line 188
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;)V

    move-object v0, v1

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayerInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetHeight:I

    .line 194
    iput p3, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetX:I

    .line 195
    iput p4, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetY:I

    .line 196
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    .line 197
    iget-object v1, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 198
    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object v1

    .line 201
    .local v1, "view":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getAnimationCallback(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    move-result-object v2

    .line 203
    .local v2, "animationCallback":Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;
    invoke-virtual {v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->unRegisterAnimationCallback()V

    .line 204
    new-instance v3, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;

    invoke-direct {v3, p0, p2, v1, v2}, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->removeView(I)V

    .line 209
    invoke-virtual {v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->prepare()V

    .line 210
    invoke-direct {p0, v1, v0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->setFloatingLocation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;I)V

    .line 211
    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->startAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    .line 212
    return-void
.end method

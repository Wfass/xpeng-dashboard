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

.field private mScreenId:I

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

.field startAnimationRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mVuiFloatingViewMap:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayerInfoMap:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mAnimationCallbackMap:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTouchMap:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTimeOutMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mScreenId:I

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->removeView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object p0

    return-object p0
.end method

.method private addView(Landroid/view/View;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 10

    .line 287
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, " ,h : "

    const-string v2, " , w : "

    const-string v3, ", y :"

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 289
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    iget v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mScreenId:I

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getViewScreenId(Landroid/view/View;)I

    move-result p1

    move v0, p1

    .line 295
    :cond_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    move-object v6, p2

    move-object v7, p3

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->addView(Landroid/content/Context;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add to window x : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ,screenId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ,mScreenId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mScreenId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update to window x : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    .line 308
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTimeOut(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    move-result-object p2

    invoke-static {p4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiImageDecoderUtils;->getAnimateTimeOut(I)I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    .line 77
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 79
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isIsV3CoverV5()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x843

    .line 80
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x801

    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const v1, 0x50328

    .line 85
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    .line 91
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-object v0
.end method

.method private getAnimationCallback(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mAnimationCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mAnimationCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getRunnableTimeOut(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTimeOutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTimeOutMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getRunnableTouch(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTouchMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    .line 150
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mRunnableTouchMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mVuiFloatingViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;-><init>(Landroid/content/Context;I)V

    .line 115
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mVuiFloatingViewMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$F3MR8yKoW36vyI0uuKqb9QtqM4E;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$F3MR8yKoW36vyI0uuKqb9QtqM4E;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->setOnTouchListener(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$OnTouchListener;)V

    :cond_0
    return-object v0
.end method

.method private isSharedDisplay()Z
    .locals 3

    const-string v0, "persist.sys.xp.shared_display.enable"

    const/4 v1, 0x0

    .line 229
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "VuiFloatingLayer"

    .line 341
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private log_I(Ljava/lang/String;)V
    .locals 1

    const-string v0, "VuiFloatingLayer"

    .line 345
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private removeView(I)V
    .locals 2

    .line 312
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object v0

    .line 313
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->stopAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTimeOut(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove window..type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "view is null or view all in window"

    .line 319
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setFloatingLocation(Landroid/view/View;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;I)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 203
    invoke-virtual {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getVisibleWidth()I

    move-result v1

    .line 204
    invoke-virtual {p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->getVisibleHeight()I

    move-result v2

    .line 205
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 206
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 208
    invoke-static {p4, p3, v1, v2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLocationUtils;->getLocation(ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;II)[I

    move-result-object v2

    const/4 v3, 0x0

    .line 209
    aget v4, v2, v3

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v4, 0x1

    .line 210
    aget v5, v2, v4

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 212
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->isSharedDisplay()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v6, 0x92c

    if-lt v5, v6, :cond_1

    .line 214
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/lit16 v4, v4, -0x960

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v4, 0x2

    .line 215
    invoke-direct {p0, v0, v4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->setXpFlags(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-direct {p0, v0, v4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->setXpFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 220
    :cond_2
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFloatingLocation  point : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLayoutParams.x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,viewWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    .line 223
    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p2, p3, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->setLocation(II)V

    .line 225
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->addView(Landroid/view/View;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    return-void
.end method

.method private setXpFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXpFlags screenId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 98
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "xpFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    or-int/lit8 v1, v1, 0x20

    .line 105
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 107
    :goto_1
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private startAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 1

    const-string v0, "startAnimation..."

    .line 324
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "view is null"

    .line 328
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private stopAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->stop()V

    goto :goto_0

    :cond_0
    const-string p1, "view is null"

    .line 336
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hideFloatingLayer(I)V
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideFloatingLayer...type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->startAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 281
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->stopAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->removeView(I)V

    return-void
.end method

.method public synthetic lambda$getVuiFloatingView$0$VuiFloatingLayer(II)V
    .locals 2

    .line 117
    iget-object p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTouch(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$showFloatingLayer$1$VuiFloatingLayer(ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;)V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAnimationCallback...type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->registerAnimationCallback(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;)V

    return-void
.end method

.method public synthetic lambda$showFloatingLayer$2$VuiFloatingLayer(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->startAnimation(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    return-void
.end method

.method public setScreenId(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mScreenId:I

    return-void
.end method

.method public showFloatingLayer(Landroid/view/View;III)V
    .locals 4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFloatingLayer...type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log_I(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTouch(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTouch;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getRunnableTimeOut(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayerInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;)V

    .line 242
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->mLayerInfoMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetWidth:I

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->targetHeight:I

    .line 247
    iput p3, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetX:I

    .line 248
    iput p4, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->mCenterOffsetY:I

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 249
    iput-object p3, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    .line 250
    iget-object p3, v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->location:[I

    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 251
    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->log(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getVuiFloatingView(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object p3

    .line 254
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->getAnimationCallback(I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    move-result-object p4

    .line 256
    invoke-virtual {p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->unRegisterAnimationCallback()V

    .line 257
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$Gk465cVpu0Pjw9tKwY1PCgn7Low;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$Gk465cVpu0Pjw9tKwY1PCgn7Low;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p3, v1, v2, v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->removeView(I)V

    .line 262
    invoke-virtual {p3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->prepare()V

    .line 263
    invoke-direct {p0, p1, p3, v0, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->setFloatingLocation(Landroid/view/View;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$LayerInfo;I)V

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->startAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 267
    :cond_1
    new-instance p1, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$aadO659GVaWpIZuDzVkzVrI03GM;

    invoke-direct {p1, p0, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$aadO659GVaWpIZuDzVkzVrI03GM;-><init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->startAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x32

    .line 268
    invoke-virtual {p3, p1, v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

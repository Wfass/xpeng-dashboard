.class public Lcom/xiaopeng/xui/widget/media/XMediaGestureController;
.super Landroid/widget/FrameLayout;
.source "XMediaGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS:I = 0x2

.field private static final FF_REW:I = 0x3

.field private static final NONE:I = 0x0

.field private static final VOLUME:I = 0x1


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private gesturePlayerListener:Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

.field private mScrollMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->mScrollMode:I

    .line 34
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XMediaGestureController;
    .param p1, "x1"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    .line 12
    iget v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->mScrollMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XMediaGestureController;
    .param p1, "x1"    # I

    .line 12
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->mScrollMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gesturePlayerListener:Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)V

    .line 45
    .local v0, "genseePlayOnGestureListener":Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gestureDetector:Landroid/view/GestureDetector;

    .line 47
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 49
    new-instance v1, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XMediaGestureController$S2oRQlcPDnLLVv_6s-jhIEx-Zz0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XMediaGestureController$S2oRQlcPDnLLVv_6s-jhIEx-Zz0;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)V

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gesturePlayerListener:Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gesturePlayerListener:Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    invoke-interface {v0, p2}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onUp(Landroid/view/MotionEvent;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public setGesturePlayerListener(Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;)V
    .locals 0
    .param p1, "gesturePlayerListener"    # Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gesturePlayerListener:Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    .line 63
    return-void
.end method

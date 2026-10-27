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

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->mScrollMode:I

    .line 34
    new-instance p2, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$1;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->mScrollMode:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I
    .locals 0

    .line 12
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->mScrollMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gesturePlayerListener:Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 44
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)V

    .line 45
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gestureDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x0

    .line 47
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 49
    new-instance p1, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XMediaGestureController$WV8K1hUk3W1Hne4wzBWr-WiBW3s;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XMediaGestureController$WV8K1hUk3W1Hne4wzBWr-WiBW3s;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$XMediaGestureController(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gesturePlayerListener:Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1, p2}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onUp(Landroid/view/MotionEvent;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setGesturePlayerListener(Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->gesturePlayerListener:Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    return-void
.end method

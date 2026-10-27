.class public Lcom/android/car/ui/NestedContainer;
.super Landroid/widget/FrameLayout;
.source "NestedContainer.java"


# instance fields
.field private final mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

.field private mFocusDescendant:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Lcom/android/car/ui/-$$Lambda$NestedContainer$Yv1mjzx-gCAPEnDbPU5hY8u9MQI;

    invoke-direct {p1, p0}, Lcom/android/car/ui/-$$Lambda$NestedContainer$Yv1mjzx-gCAPEnDbPU5hY8u9MQI;-><init>(Lcom/android/car/ui/NestedContainer;)V

    iput-object p1, p0, Lcom/android/car/ui/NestedContainer;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 53
    invoke-direct {p0}, Lcom/android/car/ui/NestedContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Lcom/android/car/ui/-$$Lambda$NestedContainer$Yv1mjzx-gCAPEnDbPU5hY8u9MQI;

    invoke-direct {p1, p0}, Lcom/android/car/ui/-$$Lambda$NestedContainer$Yv1mjzx-gCAPEnDbPU5hY8u9MQI;-><init>(Lcom/android/car/ui/NestedContainer;)V

    iput-object p1, p0, Lcom/android/car/ui/NestedContainer;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 58
    invoke-direct {p0}, Lcom/android/car/ui/NestedContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Lcom/android/car/ui/-$$Lambda$NestedContainer$Yv1mjzx-gCAPEnDbPU5hY8u9MQI;

    invoke-direct {p1, p0}, Lcom/android/car/ui/-$$Lambda$NestedContainer$Yv1mjzx-gCAPEnDbPU5hY8u9MQI;-><init>(Lcom/android/car/ui/NestedContainer;)V

    iput-object p1, p0, Lcom/android/car/ui/NestedContainer;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 63
    invoke-direct {p0}, Lcom/android/car/ui/NestedContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance p1, Lcom/android/car/ui/-$$Lambda$NestedContainer$Yv1mjzx-gCAPEnDbPU5hY8u9MQI;

    invoke-direct {p1, p0}, Lcom/android/car/ui/-$$Lambda$NestedContainer$Yv1mjzx-gCAPEnDbPU5hY8u9MQI;-><init>(Lcom/android/car/ui/NestedContainer;)V

    iput-object p1, p0, Lcom/android/car/ui/NestedContainer;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 68
    invoke-direct {p0}, Lcom/android/car/ui/NestedContainer;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const/high16 v0, 0x60000

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/car/ui/NestedContainer;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/car/ui/NestedContainer;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 91
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x17

    const/high16 v3, 0x60000

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/car/ui/NestedContainer;->mFocusDescendant:Z

    if-nez v0, :cond_3

    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    const/high16 p1, 0x40000

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/car/ui/NestedContainer;->setDescendantFocusability(I)V

    .line 96
    invoke-static {p0}, Lais;->g(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    iput-boolean v1, p0, Lcom/android/car/ui/NestedContainer;->mFocusDescendant:Z

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/car/ui/NestedContainer;->setDescendantFocusability(I)V

    :cond_2
    :goto_0
    return v1

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    const/4 v4, 0x0

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/car/ui/NestedContainer;->mFocusDescendant:Z

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/car/ui/NestedContainer;->setDescendantFocusability(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/car/ui/NestedContainer;->requestFocus()Z

    .line 110
    iput-boolean v4, p0, Lcom/android/car/ui/NestedContainer;->mFocusDescendant:Z

    :cond_4
    return v1

    :cond_5
    return v4
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 127
    iget-boolean p2, p0, Lcom/android/car/ui/NestedContainer;->mFocusDescendant:Z

    if-eqz p2, :cond_0

    invoke-static {p1, p0}, Lais;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public synthetic lambda$new$0$NestedContainer(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 45
    iget-boolean p1, p0, Lcom/android/car/ui/NestedContainer;->mFocusDescendant:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/car/ui/NestedContainer;->isFocused()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/car/ui/NestedContainer;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/car/ui/NestedContainer;->mFocusDescendant:Z

    const/high16 p1, 0x60000

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/car/ui/NestedContainer;->setDescendantFocusability(I)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 78
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 79
    invoke-virtual {p0}, Lcom/android/car/ui/NestedContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/NestedContainer;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/car/ui/NestedContainer;->mFocusDescendant:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/car/ui/NestedContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/ui/NestedContainer;->mFocusChangeListener:Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

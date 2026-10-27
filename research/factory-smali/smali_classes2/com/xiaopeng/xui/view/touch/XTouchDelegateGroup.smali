.class public Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;
.super Landroid/view/TouchDelegate;
.source "XTouchDelegateGroup.java"


# static fields
.field private static final IGNORED:Landroid/graphics/Rect;


# instance fields
.field private currentTouchDelegate:Landroid/view/TouchDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private touchDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/view/touch/XTouchDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->IGNORED:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "ancestor"    # Landroid/view/View;

    .line 43
    sget-object v0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->IGNORED:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public addTouchDelegate(Lcom/xiaopeng/xui/view/touch/XTouchDelegate;)V
    .locals 4
    .param p1, "touchDelegate"    # Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    .line 49
    if-nez p1, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    .line 53
    .local v1, "exist":Lcom/xiaopeng/xui/view/touch/XTouchDelegate;
    invoke-virtual {v1}, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;->getDelegateViewHold()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;->getDelegateViewHold()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 55
    goto :goto_1

    .line 57
    .end local v1    # "exist":Lcom/xiaopeng/xui/view/touch/XTouchDelegate;
    :cond_1
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public clearTouchDelegates()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    return-void
.end method

.method public getTouchDelegates()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/view/touch/XTouchDelegate;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 80
    .local v0, "action":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 83
    return v1

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 86
    iget-object v4, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;

    .line 88
    .local v4, "touchDelegate":Lcom/xiaopeng/xui/view/touch/XTouchDelegate;
    invoke-virtual {v4}, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;->getDelegateViewHold()Landroid/view/View;

    move-result-object v5

    .line 89
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 94
    .local v6, "savedX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 95
    .local v7, "savedY":F
    invoke-virtual {v4, p1}, Lcom/xiaopeng/xui/view/touch/XTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 97
    .local v8, "handled":Z
    invoke-virtual {p1, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 99
    if-eqz v8, :cond_2

    .line 100
    iput-object v4, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->currentTouchDelegate:Landroid/view/TouchDelegate;

    .line 101
    return v2

    .line 85
    .end local v4    # "touchDelegate":Lcom/xiaopeng/xui/view/touch/XTouchDelegate;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "savedX":F
    .end local v7    # "savedY":F
    .end local v8    # "handled":Z
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 104
    .end local v3    # "i":I
    :cond_3
    return v1

    .line 107
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->currentTouchDelegate:Landroid/view/TouchDelegate;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->currentTouchDelegate:Landroid/view/TouchDelegate;

    invoke-virtual {v3, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    nop

    .line 109
    .local v1, "handled":Z
    :cond_5
    if-eq v0, v2, :cond_6

    const/16 v2, 0x20

    if-ne v0, v2, :cond_7

    .line 110
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->currentTouchDelegate:Landroid/view/TouchDelegate;

    .line 113
    :cond_7
    return v1
.end method

.method public removeTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1
    .param p1, "touchDelegate"    # Landroid/view/TouchDelegate;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->touchDelegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->currentTouchDelegate:Landroid/view/TouchDelegate;

    if-ne p1, v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/view/touch/XTouchDelegateGroup;->currentTouchDelegate:Landroid/view/TouchDelegate;

    .line 66
    :cond_0
    return-void
.end method

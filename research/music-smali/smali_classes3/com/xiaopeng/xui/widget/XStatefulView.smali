.class public Lcom/xiaopeng/xui/widget/XStatefulView;
.super Lcom/xiaopeng/xui/widget/XConstraintLayout;
.source "XStatefulView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final STATE_CLOSE:I = 0x0

.field public static final STATE_DOING:I = 0x1

.field public static final STATE_ERROR:I = 0x4

.field public static final STATE_OPEN:I = 0x3

.field public static final STATE_PAUSE:I = 0x2


# instance fields
.field protected closeId:I

.field protected currentState:I

.field protected doingId:I

.field protected errorId:I

.field onStateChangeListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected openId:I

.field protected pauseId:I

.field protected preState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XStatefulView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XStatefulView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XStatefulView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 22
    iput p3, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    .line 23
    iput p3, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    .line 26
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    .line 42
    sget-object p4, Lbyg$n;->XStatefulView:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    sget p2, Lbyg$n;->XStatefulView_stateful_close_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->closeId:I

    .line 44
    sget p2, Lbyg$n;->XStatefulView_stateful_doing_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->doingId:I

    .line 45
    sget p2, Lbyg$n;->XStatefulView_stateful_pause_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->pauseId:I

    .line 46
    sget p2, Lbyg$n;->XStatefulView_stateful_error_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->errorId:I

    .line 47
    sget p2, Lbyg$n;->XStatefulView_stateful_open_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->openId:I

    .line 48
    sget p2, Lbyg$n;->XStatefulView_stateful_state:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addOnStateChangeListener(Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getState()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    return v0
.end method

.method public removeOnStateChangeListener()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeOnStateChangeListener(Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setClose()I
    .locals 4

    .line 99
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;

    .line 108
    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;->onStateChange(II)V

    goto :goto_0

    .line 115
    :cond_1
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    return v0
.end method

.method public setDoing()I
    .locals 4

    .line 79
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;

    .line 88
    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;->onStateChange(II)V

    goto :goto_0

    .line 95
    :cond_1
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    return v0
.end method

.method public setError(I)I
    .locals 4

    .line 139
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    const/4 v0, 0x4

    .line 140
    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;

    .line 143
    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;->onStateChange(II)V

    .line 144
    invoke-interface {v1, p1}, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;->onError(I)V

    goto :goto_0

    .line 147
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    return p1
.end method

.method public setOpen()I
    .locals 4

    .line 119
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    const/4 v0, 0x3

    .line 125
    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;

    .line 128
    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;->onStateChange(II)V

    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    return v0
.end method

.method public setPause()I
    .locals 4

    .line 67
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    const/4 v0, 0x2

    .line 68
    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;

    .line 71
    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;->onStateChange(II)V

    goto :goto_0

    .line 75
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    return v0
.end method

.method public setState(I)V
    .locals 3

    .line 53
    iget v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    .line 54
    iput p1, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->currentState:I

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->onStateChangeListener:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;

    .line 57
    iget v2, p0, Lcom/xiaopeng/xui/widget/XStatefulView;->preState:I

    invoke-interface {v1, v2, p1}, Lcom/xiaopeng/xui/widget/XStatefulView$OnStateChangeListener;->onStateChange(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

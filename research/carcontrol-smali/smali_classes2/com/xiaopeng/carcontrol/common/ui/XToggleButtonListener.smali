.class public Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;
.super Ljava/lang/Object;
.source "XToggleButtonListener.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/toggle/XToggleLayout$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;
    }
.end annotation


# instance fields
.field private NORMAL_CLICK_INTERVAL:J

.field private mCallback:Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;

.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastClickTime:J


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->NORMAL_CLICK_INTERVAL:J

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;JLcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "consumer",
            "interval",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;J",
            "Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->NORMAL_CLICK_INTERVAL:J

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mConsumer:Ljava/util/function/Consumer;

    .line 43
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->NORMAL_CLICK_INTERVAL:J

    .line 44
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->NORMAL_CLICK_INTERVAL:J

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mFunction:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;JLcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "function",
            "interval",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;J",
            "Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->NORMAL_CLICK_INTERVAL:J

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mFunction:Ljava/util/function/Function;

    .line 63
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->NORMAL_CLICK_INTERVAL:J

    .line 64
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xToggleLayout",
            "b"
        }
    .end annotation

    return-void
.end method

.method public onInterceptClickCheck(Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/toggle/XToggleLayout;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mLastClickTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 71
    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mLastClickTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->NORMAL_CLICK_INTERVAL:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInterceptCheck: isFastClick view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLastClickTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mLastClickTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interval:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->NORMAL_CLICK_INTERVAL:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SwitchInterceptListener"

    .line 72
    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;

    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v2, p1, v0}, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener$IntervalCallback;->onFastClick(Landroid/view/View;Z)V

    :cond_0
    return v1

    .line 82
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mLastClickTime:J

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 85
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v1

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XToggleButtonListener;->mFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

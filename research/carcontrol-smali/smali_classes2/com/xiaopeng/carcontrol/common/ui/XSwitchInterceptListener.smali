.class public Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;
.super Ljava/lang/Object;
.source "XSwitchInterceptListener.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSwitch$OnInterceptListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;
    }
.end annotation


# instance fields
.field private NORMAL_CLICK_INTERVAL:J

.field private mCallback:Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;

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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->NORMAL_CLICK_INTERVAL:J

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;JLcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;)V
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
            "Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->NORMAL_CLICK_INTERVAL:J

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mConsumer:Ljava/util/function/Consumer;

    .line 42
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->NORMAL_CLICK_INTERVAL:J

    .line 43
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;

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

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->NORMAL_CLICK_INTERVAL:J

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mFunction:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;JLcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;)V
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
            "Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->NORMAL_CLICK_INTERVAL:J

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mFunction:Ljava/util/function/Function;

    .line 62
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->NORMAL_CLICK_INTERVAL:J

    .line 63
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;

    return-void
.end method

.method private isVuiAction(Landroid/view/View;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "reset"
        }
    .end annotation

    .line 104
    instance-of v0, p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    check-cast p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {p1}, Lcom/xiaopeng/vui/commons/IVuiElement;->isPerformVuiAction()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 107
    invoke-interface {p1, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setPerformVuiAction(Z)V

    :cond_0
    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public onInterceptCheck(Landroid/view/View;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isChecked"
        }
    .end annotation

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSwitch;->isFromUser()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->isVuiAction(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 73
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mLastClickTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 74
    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mLastClickTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_4

    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->NORMAL_CLICK_INTERVAL:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterceptCheck: isFastClick view: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mLastClickTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mLastClickTime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " gap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " interval:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->NORMAL_CLICK_INTERVAL:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SwitchInterceptListener"

    .line 75
    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;

    if-eqz v0, :cond_3

    .line 81
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener$IntervalCallback;->onFastClick(Landroid/view/View;Z)V

    :cond_3
    return v1

    .line 85
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mLastClickTime:J

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mConsumer:Ljava/util/function/Consumer;

    if-eqz p1, :cond_5

    .line 88
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v2

    .line 92
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSwitchInterceptListener;->mFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_6

    .line 93
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_6
    return v2
.end method

.class public Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;
.super Ljava/lang/Object;
.source "XSegmentedListener.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;
    }
.end annotation


# instance fields
.field private NORMAL_CLICK_INTERVAL:J

.field private mCallback:Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;

.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->NORMAL_CLICK_INTERVAL:J

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;JLcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;)V
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
            "Ljava/lang/Integer;",
            ">;J",
            "Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->NORMAL_CLICK_INTERVAL:J

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mConsumer:Ljava/util/function/Consumer;

    .line 41
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->NORMAL_CLICK_INTERVAL:J

    .line 42
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;

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
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->NORMAL_CLICK_INTERVAL:J

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mFunction:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;JLcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;)V
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
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;J",
            "Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->NORMAL_CLICK_INTERVAL:J

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mFunction:Ljava/util/function/Function;

    .line 61
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->NORMAL_CLICK_INTERVAL:J

    .line 62
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;

    return-void
.end method


# virtual methods
.method public onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "index"
        }
    .end annotation

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mLastClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 68
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mLastClickTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->NORMAL_CLICK_INTERVAL:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptChange: isFastClick view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastClickTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mLastClickTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " interval:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->NORMAL_CLICK_INTERVAL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SegmentedListener"

    .line 69
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener$IntervalCallback;->onFastClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 79
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mLastClickTime:J

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return v0

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XSegmentedListener;->mFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public onSelectionChange(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xSegmented",
            "index",
            "fromUser"
        }
    .end annotation

    return-void
.end method

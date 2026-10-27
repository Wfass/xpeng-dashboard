.class public Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;
.super Ljava/lang/Object;
.source "XViewClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener$IntervalCallback;
    }
.end annotation


# instance fields
.field private NORMAL_CLICK_INTERVAL:J

.field private mCallback:Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener$IntervalCallback;

.field private mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
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
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->NORMAL_CLICK_INTERVAL:J

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;JLcom/xiaopeng/carcontrol/common/ui/XViewClickListener$IntervalCallback;)V
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
            "Landroid/view/View;",
            ">;J",
            "Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener$IntervalCallback;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->NORMAL_CLICK_INTERVAL:J

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mConsumer:Ljava/util/function/Consumer;

    .line 37
    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->NORMAL_CLICK_INTERVAL:J

    .line 38
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener$IntervalCallback;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mLastClickTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mLastClickTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->NORMAL_CLICK_INTERVAL:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptCheck: isFastClick view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastClickTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mLastClickTime:J

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

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->NORMAL_CLICK_INTERVAL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XViewClickListener"

    .line 45
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/common/util/XPLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mCallback:Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener$IntervalCallback;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener$IntervalCallback;->onFastClick(Landroid/view/View;)V

    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mLastClickTime:J

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/common/ui/XViewClickListener;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_2

    .line 58
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

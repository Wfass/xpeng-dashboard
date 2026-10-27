.class Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;
.super Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;
.source "XActivityDismissExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XActivityDismissExtendImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XActivityDismiss"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mDismissDelay:J

.field private mDismissType:I

.field private final mHandler:Landroid/os/Handler;

.field private mOnDismissListener:Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;

.field private mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method private _dismiss(I)V
    .locals 3
    .param p1, "cause"    # I

    .line 107
    const-string v0, "XActivityDismiss"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_dismiss: type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , cause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertCauseToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    .line 110
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XActivityUtils;->moveTaskToBack(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaopeng/xui/utils/XActivityUtils;->finish(Landroid/app/Activity;)V

    .line 113
    nop

    .line 118
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertCauseToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "cause"    # I

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 124
    const-string v0, "user"

    return-object v0

    .line 132
    :pswitch_0
    const-string v0, "timeout"

    return-object v0

    .line 130
    :pswitch_1
    const-string v0, "outside"

    return-object v0

    .line 128
    :pswitch_2
    const-string v0, "pause"

    return-object v0

    .line 126
    :pswitch_3
    const-string v0, "back"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 137
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 142
    const-string v0, "finish"

    return-object v0

    .line 139
    :cond_0
    const-string v0, "moveToBack"

    return-object v0
.end method

.method public static synthetic lambda$dismiss$0(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;I)V
    .locals 1
    .param p1, "cause"    # I

    .line 87
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->_dismiss(I)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;->afterDismiss(I)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss(I)V
    .locals 4
    .param p1, "cause"    # I
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListener:Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListener:Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;

    iget v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;->onDismiss(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "XActivityDismiss"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: intercept for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertCauseToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;->beforeDismiss(I)V

    .line 80
    :cond_1
    iget-wide v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 81
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->_dismiss(I)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "XActivityDismiss"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , cause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertCauseToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 86
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissExtend$XActivityDismissExtendImpl$tIuePlo6tgyIqeCB2NgnAPhvdYk;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissExtend$XActivityDismissExtendImpl$tIuePlo6tgyIqeCB2NgnAPhvdYk;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    .line 104
    :cond_0
    return-void
.end method

.method public setDismissDelay(J)V
    .locals 3
    .param p1, "delay"    # J

    .line 51
    iput-wide p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    .line 52
    const-string v0, "XActivityDismiss"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDismissDelay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setDismissType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    .line 68
    return-void
.end method

.method public setOnDismissListener(Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListener:Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;

    .line 58
    return-void
.end method

.method setOnDismissListenerEx(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;)V
    .locals 0
    .param p1, "listenerEx"    # Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mDismissType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDismissDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

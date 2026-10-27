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


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private _dismiss(I)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_dismiss: type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , cause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertCauseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XActivityDismiss"

    .line 106
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/utils/XActivityUtils;->moveTaskToBack(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xiaopeng/xui/utils/XActivityUtils;->finish(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private convertCauseToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "user"

    return-object p1

    :cond_0
    const-string p1, "timeout"

    return-object p1

    :cond_1
    const-string p1, "outside"

    return-object p1

    :cond_2
    const-string p1, "pause"

    return-object p1

    :cond_3
    const-string p1, "back"

    return-object p1
.end method

.method private convertTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "finish"

    return-object p1

    :cond_0
    const-string p1, "moveToBack"

    return-object p1
.end method


# virtual methods
.method public dismiss(I)V
    .locals 6

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListener:Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;

    const-string v1, "XActivityDismiss"

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    invoke-interface {v0, p1, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;->onDismiss(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: intercept for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertCauseToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;->beforeDismiss(I)V

    .line 79
    :cond_1
    iget-wide v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 80
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->_dismiss(I)V

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , cause : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->convertCauseToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 85
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissExtend$XActivityDismissExtendImpl$88suYoVCKDXANih9pewktN1TrnQ;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/delegate/-$$Lambda$XActivityDismissExtend$XActivityDismissExtendImpl$88suYoVCKDXANih9pewktN1TrnQ;-><init>(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic lambda$dismiss$0$XActivityDismissExtend$XActivityDismissExtendImpl(I)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->_dismiss(I)V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;->afterDismiss(I)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDelayRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setDismissDelay(J)V
    .locals 2

    .line 50
    iput-wide p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDismissDelay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XActivityDismiss"

    invoke-static {p2, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setDismissType(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    return-void
.end method

.method public setOnDismissListener(Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListener:Lcom/xiaopeng/xui/app/delegate/XActivityDismiss$OnDismissListener;

    return-void
.end method

.method setOnDismissListenerEx(Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mOnDismissListenerEx:Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$OnDismissListenerEx;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mDismissType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDismissDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDismissExtend$XActivityDismissExtendImpl;->mDismissDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;
.super Landroid/widget/TextView;
.source "TimeCountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private Tr:Z

.field private Ts:J

.field private Tt:J

.field private Tu:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tr:Z

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tt:J

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tu:Z

    .line 34
    new-instance p1, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView$1;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tr:Z

    .line 31
    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tt:J

    .line 32
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tu:Z

    .line 34
    new-instance p1, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView$1;-><init>(Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method private nR()V
    .locals 7

    .line 115
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tu:Z

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Ts:J

    sub-long/2addr v0, v2

    .line 117
    iget-wide v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tt:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 118
    const-wide/16 v2, 0x3c

    rem-long v4, v0, v2

    long-to-int v4, v4

    .line 119
    div-long v5, v0, v2

    rem-long/2addr v5, v2

    long-to-int v2, v5

    .line 120
    const-wide/16 v5, 0xe10

    div-long/2addr v0, v5

    long-to-int v0, v0

    .line 121
    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    goto :goto_0

    .line 122
    :goto_1
    if-lt v2, v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    goto :goto_2

    .line 123
    :goto_3
    if-lt v4, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    goto :goto_4

    .line 124
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 126
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method


# virtual methods
.method public nO()V
    .locals 2

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Ts:J

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tt:J

    .line 65
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->setVisibility(I)V

    .line 66
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tu:Z

    .line 67
    return-void
.end method

.method public nP()V
    .locals 2

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tr:Z

    .line 71
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->setVisibility(I)V

    .line 75
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 79
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 80
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tu:Z

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tt:J

    .line 82
    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Ts:J

    .line 83
    return-void
.end method

.method public nQ()V
    .locals 6

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tu:Z

    .line 87
    iget-wide v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tt:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Ts:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tt:J

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Ts:J

    .line 89
    return-void
.end method

.method public run()V
    .locals 4

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tr:Z

    .line 94
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tr:Z

    if-eqz v0, :cond_2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->nR()V

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 104
    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 106
    :goto_1
    const/16 v3, 0x1f4

    if-le v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/xiaopeng/devtools/view/smartdrive/bcan/TimeCountView;->Tu:Z

    if-eqz v2, :cond_0

    goto :goto_2

    .line 111
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    .line 109
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1

    .line 112
    :cond_2
    return-void
.end method

.class public Lcom/xiaopeng/xui/utils/XCountDownHandler;
.super Landroid/os/Handler;
.source "XCountDownHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private count:I

.field private index:I

.field private mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    if-eqz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mTag:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->count:I

    iget v2, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;->onCountDown(Ljava/lang/String;II)V

    .line 30
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    if-eqz p1, :cond_1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;->onCountDownOver(Ljava/lang/String;)V

    .line 35
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 36
    iput p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public start(I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->start(Ljava/lang/String;I)V

    return-void
.end method

.method public start(Ljava/lang/String;I)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mTag:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->stop()V

    .line 48
    iput p2, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->count:I

    .line 49
    iput p2, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->removeMessages(I)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    if-eqz v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;->onCountDownStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

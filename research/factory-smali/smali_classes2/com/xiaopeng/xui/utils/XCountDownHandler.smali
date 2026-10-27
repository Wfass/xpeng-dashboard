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
    .param p1, "callBack"    # Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    .line 20
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mTag:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->count:I

    iget v3, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;->onCountDown(Ljava/lang/String;II)V

    .line 27
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;->onCountDownOver(Ljava/lang/String;)V

    .line 32
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    if-lez v0, :cond_2

    .line 33
    iget v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    .line 34
    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 36
    :cond_2
    return-void
.end method

.method public start(I)V
    .locals 1
    .param p1, "count"    # I

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->start(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public start(Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mTag:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->stop()V

    .line 45
    iput p2, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->count:I

    .line 46
    iput p2, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->index:I

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->sendEmptyMessage(I)Z

    .line 48
    return-void
.end method

.method public stop()V
    .locals 2

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/utils/XCountDownHandler;->removeMessages(I)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mCallBack:Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;

    iget-object v1, p0, Lcom/xiaopeng/xui/utils/XCountDownHandler;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/utils/XCountDownHandler$CallBack;->onCountDownStop(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

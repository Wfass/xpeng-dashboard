.class Lcom/xiaopeng/xui/widget/dialogview/XCountDown;
.super Landroid/os/Handler;
.source "XCountDown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;
    }
.end annotation


# instance fields
.field private count:I

.field private index:I

.field private mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

.field private mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    .line 19
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mTag:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->count:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;->onCountDown(Ljava/lang/String;II)V

    .line 26
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;->onCountDownOver(Ljava/lang/String;)V

    .line 31
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    if-lez v0, :cond_2

    .line 32
    iget v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    .line 33
    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    :cond_2
    return-void
.end method

.method start(I)V
    .locals 1
    .param p1, "count"    # I

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->start(Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method start(Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mTag:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->stop()V

    .line 44
    iput p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->count:I

    .line 45
    iput p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->sendEmptyMessage(I)Z

    .line 47
    return-void
.end method

.method stop()V
    .locals 2

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;->onCountDownStop(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

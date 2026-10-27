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

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mTag:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->count:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;->onCountDown(Ljava/lang/String;II)V

    .line 26
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    if-nez p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    if-eqz p1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;->onCountDownOver(Ljava/lang/String;)V

    .line 31
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 32
    iput p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    .line 33
    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method start(I)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->start(Ljava/lang/String;I)V

    return-void
.end method

.method start(Ljava/lang/String;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mTag:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->stop()V

    .line 44
    iput p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->count:I

    .line 45
    iput p2, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->index:I

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->sendEmptyMessage(I)Z

    return-void
.end method

.method stop()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mCallBack:Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;

    if-eqz v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/XCountDown;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/XCountDown$CallBack;->onCountDownStop(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

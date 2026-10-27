.class Lcom/xiaopeng/xui/widget/dialogview/a;
.super Landroid/os/Handler;
.source "XCountDown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/dialogview/a$a;
    }
.end annotation


# instance fields
.field private ait:Lcom/xiaopeng/xui/widget/dialogview/a$a;

.field private count:I

.field private index:I

.field private mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/dialogview/a$a;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->ait:Lcom/xiaopeng/xui/widget/dialogview/a$a;

    .line 19
    return-void
.end method


# virtual methods
.method F(Ljava/lang/String;I)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->mTag:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/dialogview/a;->stop()V

    .line 44
    iput p2, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->count:I

    .line 45
    iput p2, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->index:I

    .line 46
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/dialogview/a;->sendEmptyMessage(I)Z

    .line 47
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 23
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->ait:Lcom/xiaopeng/xui/widget/dialogview/a$a;

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->ait:Lcom/xiaopeng/xui/widget/dialogview/a$a;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->mTag:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->count:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->index:I

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/xui/widget/dialogview/a$a;->h(Ljava/lang/String;II)V

    .line 26
    :cond_0
    iget p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->index:I

    if-nez p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->ait:Lcom/xiaopeng/xui/widget/dialogview/a$a;

    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->ait:Lcom/xiaopeng/xui/widget/dialogview/a$a;

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->mTag:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/a$a;->fo(Ljava/lang/String;)V

    .line 31
    :cond_1
    iget p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->index:I

    if-lez p1, :cond_2

    .line 32
    iget p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->index:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->index:I

    .line 33
    const/4 p1, 0x0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/a;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    :cond_2
    return-void
.end method

.method stop()V
    .locals 2

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/dialogview/a;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->ait:Lcom/xiaopeng/xui/widget/dialogview/a$a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->ait:Lcom/xiaopeng/xui/widget/dialogview/a$a;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/dialogview/a;->mTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/a$a;->fp(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

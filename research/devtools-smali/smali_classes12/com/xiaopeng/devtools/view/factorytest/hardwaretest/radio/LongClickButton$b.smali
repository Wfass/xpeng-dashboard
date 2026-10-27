.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;
.super Ljava/lang/Object;
.source "LongClickButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic KV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

.field private KW:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;Landroid/view/View;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->KV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->mView:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->mView:Landroid/view/View;

    .line 68
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->KV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->KW:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->KW:I

    .line 74
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->KW:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->KV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$c;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton$b;->KV:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/LongClickButton;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 81
    :cond_1
    return-void
.end method

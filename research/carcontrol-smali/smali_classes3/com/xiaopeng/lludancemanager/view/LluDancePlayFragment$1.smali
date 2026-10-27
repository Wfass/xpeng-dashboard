.class Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment$1;
.super Landroid/os/CountDownTimer;
.source "LluDancePlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->startCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "x0",
            "x1"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->access$200(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 230
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 231
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment$1;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;

    invoke-static {p2}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->access$000(Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-static {}, Lcom/xiaopeng/lludancemanager/view/LluDancePlayFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Karl log open time optimize start play count down on tick = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

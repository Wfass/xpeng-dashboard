.class Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;
.super Landroid/os/CountDownTimer;
.source "CheckCarMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->startCheckTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;JJ)V
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

    .line 394
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    const-string v1, " mCheckTimer onFinish"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$1100(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isNeedMock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    iget-object v0, v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check countdown onTick progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " millisUntilFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    iget-object p2, p2, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->mCheckList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 400
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->access$1008(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;->onMockChecking(I)V

    :cond_0
    return-void
.end method

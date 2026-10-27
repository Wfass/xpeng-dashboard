.class Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;
.super Ljava/lang/Object;
.source "AccountViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamInfoResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestExamUrl(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 585
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExamFailure(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "reason"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExamInfoFailed Request qr code from server failure, code :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "X_EXAM_AccountViewModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onExamInfoSuccess(JLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "url"
        }
    .end annotation

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExamInfoSuccess taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "X_EXAM_AccountViewModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;->examState:I

    .line 590
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    move-result-object p1

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/util/SafeExamUtils;->wrapCarTypeParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;->examUrl:Ljava/lang/String;

    .line 591
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$2;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamUrlResult;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

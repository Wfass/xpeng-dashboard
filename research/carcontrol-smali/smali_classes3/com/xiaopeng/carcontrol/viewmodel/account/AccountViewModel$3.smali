.class Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;
.super Ljava/lang/Object;
.source "AccountViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamResultResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestExamResult(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field final synthetic val$origin:I

.field final synthetic val$taskId:J


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$taskId",
            "val$origin"
        }
    .end annotation

    .line 621
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->val$origin:I

    iput-wide p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->val$taskId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExamFailure(ILjava/lang/String;)V
    .locals 3
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

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExamResultFailed from server failure, code :"

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

    .line 656
    iget p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->val$origin:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 657
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$800(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;

    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->val$taskId:J

    const/4 v2, 0x2

    invoke-direct {p2, v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;-><init>(JI)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onExamTaskSuccess(JII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taskId",
            "result",
            "origin"
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExamResultSuccess Exam  single result, taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p4, v1, :cond_2

    if-ne p3, v0, :cond_1

    .line 628
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p4

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;

    invoke-direct {v1, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;-><init>(JI)V

    invoke-virtual {p4, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 629
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lio/reactivex/disposables/Disposable;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 630
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$400(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lio/reactivex/disposables/Disposable;

    move-result-object p4

    invoke-interface {p4}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 632
    :cond_0
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V

    :cond_1
    return-void

    :cond_2
    if-ne p4, v0, :cond_3

    .line 639
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$600(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p4

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;-><init>(JI)V

    invoke-virtual {p4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 640
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V

    return-void

    :cond_3
    if-nez p4, :cond_5

    if-eq p3, v0, :cond_4

    .line 647
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$700(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    .line 649
    :cond_4
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$3;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V

    :cond_5
    return-void
.end method

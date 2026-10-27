.class Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;
.super Ljava/lang/Object;
.source "AccountViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/account/response/ExamGroupResultResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->requestGroupRequest(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field final synthetic val$origin:I

.field final synthetic val$taskIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$origin",
            "val$taskIds"
        }
    .end annotation

    .line 759
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->val$taskIds:Ljava/util/List;

    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->val$origin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origin"
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompleted taskIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->val$taskIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X_EXAM_AccountViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 765
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    const-wide/16 v1, 0x64

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpSafeExamResult(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLccSafeExamResult(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V

    .line 766
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    const-wide/16 v1, 0x65

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getNgpSafeExamResult(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1200(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getCngpSafeExamResult(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getLccSafeExamResult(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V

    .line 767
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    const-wide/16 v1, 0x67

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getMemParkExamResult(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1000(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScuController;->getApaSafeExamResult(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V

    .line 769
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v0, v6}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1302(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;I)I

    .line 770
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v0, v5}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1402(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Z)Z

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onExamFailure(ILjava/lang/String;)V
    .locals 4
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

    .line 808
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

    .line 809
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$800(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamError;-><init>(JI)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 811
    iget p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->val$origin:I

    if-nez p1, :cond_0

    .line 812
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1300(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 813
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1308(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)I

    .line 814
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CheckXPilotExamResultTask when exam request failed, retryCount :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1300(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1402(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Z)Z

    .line 817
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1700(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-static {p2, p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

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

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExamResultSuccess Exam  group result, taskId: "

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

    if-ne p4, v0, :cond_4

    const-string p4, "isSupportCNgp"

    .line 780
    invoke-static {p4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "isSupportLidarSafeExam"

    invoke-static {p4}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-wide/16 v0, 0x7

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    .line 782
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1600(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p4

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;-><init>(JI)V

    invoke-virtual {p4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x8

    cmp-long p4, p1, v0

    if-nez p4, :cond_3

    .line 784
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1600(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p4

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;-><init>(JI)V

    invoke-virtual {p4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3

    cmp-long p4, p1, v0

    if-nez p4, :cond_2

    .line 788
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1600(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p4

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;-><init>(JI)V

    invoke-virtual {p4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x2

    cmp-long p4, p1, v0

    if-nez p4, :cond_3

    .line 790
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$1600(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p4

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/bean/ExamResult;-><init>(JI)V

    invoke-virtual {p4, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 793
    :cond_3
    :goto_0
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V

    return-void

    :cond_4
    if-nez p4, :cond_6

    if-eq p3, v0, :cond_5

    .line 800
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$700(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V

    .line 802
    :cond_5
    iget-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel$5;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    invoke-static {p4, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->access$500(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;JI)V

    :cond_6
    return-void
.end method

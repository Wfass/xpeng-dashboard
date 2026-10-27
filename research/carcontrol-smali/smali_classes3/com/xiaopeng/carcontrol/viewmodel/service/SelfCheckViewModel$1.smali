.class Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$1;
.super Ljava/lang/Object;
.source "SelfCheckViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckCancel()V
    .locals 0

    return-void
.end method

.method public onCheckComplete()V
    .locals 8

    .line 94
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isSeverity()Z

    move-result v0

    .line 95
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->hasIssue()Z

    move-result v1

    .line 96
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v3}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->generateJsonForUi(IZ)Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckComplete, isServerity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasIssue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "extras = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SelfCheckViewModel"

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v4, 0x12

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->cancelInfoflowCard(I)V

    :cond_0
    const-string v7, "isSupportNewSelfCheckArch"

    .line 104
    invoke-static {v7}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_4

    const-string v1, "isSupportShowSelfCheckCard"

    .line 106
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 109
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Check_onCheckComplete data is wrong!"

    .line 110
    invoke-static {v5, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 119
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_finish:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_finish_have_serious_issue:I

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFaultCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    .line 120
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/16 v4, 0x13

    .line 125
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_finish_have_issue:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFaultCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    .line 125
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFaultStr()Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v3

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showSelfCheckCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "isSupportNotifyNormalCheckResult"

    .line 131
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->generateJsonForUi(IZ)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_finish:I

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showSelfCheckCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCheckError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const-string v0, "isSupportShowSelfCheckCard"

    .line 161
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SelfCheckViewModel"

    const-string v1, "Check_onCheckError "

    .line 164
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    .line 167
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_exception:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void
.end method

.method public onCheckStart()V
    .locals 3

    const-string v0, "SelfCheckViewModel"

    const-string v1, "onCheckStart"

    const/4 v2, 0x0

    .line 47
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    return-void
.end method

.method public onCheckStop()V
    .locals 3

    const-string v0, "SelfCheckViewModel"

    const-string v1, "Check_onCheckStop"

    const/4 v2, 0x0

    .line 148
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isChecking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isCheckComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isSeverity()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "stopSelfCheck clear info card..."

    .line 154
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    :cond_2
    return-void
.end method

.method public onChecking(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    return-void
.end method

.method public onMockChecking(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    const-string v0, "isSupportShowSelfCheckCard"

    .line 53
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getCategoryItem(I)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "SelfCheckViewModel"

    const-string v0, "Check_onMockChecking categoryItem is null"

    .line 58
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->generateMockExtrasForInfoflow(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    const/16 v2, 0x12

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_status:I

    .line 64
    invoke-static {v3}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_progress:I

    .line 65
    invoke-static {v4}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showSelfCheckCard(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

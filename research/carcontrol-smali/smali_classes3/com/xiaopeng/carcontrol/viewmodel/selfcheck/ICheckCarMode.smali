.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarMode;
.super Ljava/lang/Object;
.source "ICheckCarMode.java"


# virtual methods
.method public abstract generateJsonForUi(IZ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "needDetail"
        }
    .end annotation
.end method

.method public abstract generateMockExtrasForInfoflow(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedCount"
        }
    .end annotation
.end method

.method public abstract getCategoryItem(I)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract getCategoryItemSize()I
.end method

.method public abstract getCheckSize()I
.end method

.method public abstract getCheckedCount()I
.end method

.method public abstract getFaultCount()I
.end method

.method public abstract getFaultStr()Ljava/lang/String;
.end method

.method public abstract getFirstFaultItem()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;
.end method

.method public abstract getTTs()Ljava/lang/String;
.end method

.method public abstract hasIssue()Z
.end method

.method public abstract isCheckComplete()Z
.end method

.method public abstract isChecking()Z
.end method

.method public abstract isSeverity()Z
.end method

.method public abstract receiveGreet()V
.end method

.method public abstract setViewListener(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewListener"
        }
    .end annotation
.end method

.method public abstract startCheck()V
.end method

.method public abstract stopCheck()V
.end method

.method public abstract uploadForAIAssistant(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonStr"
        }
    .end annotation
.end method

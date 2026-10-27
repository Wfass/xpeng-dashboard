.class public interface abstract Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;
.super Ljava/lang/Object;
.source "BugReportListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/INodeListener;


# virtual methods
.method public abstract onBugReportBegin()V
.end method

.method public onBugReportBegin(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .line 21
    return-void
.end method

.method public onBugReportCancel()V
    .locals 0

    .line 27
    return-void
.end method

.method public abstract onBugReportEnd(Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;)V
.end method

.method public abstract onBugReportEndtts()V
.end method

.method public onBugReportSubmit()V
    .locals 0

    .line 42
    return-void
.end method

.method public abstract onBugReportVolume(Ljava/lang/String;)V
.end method

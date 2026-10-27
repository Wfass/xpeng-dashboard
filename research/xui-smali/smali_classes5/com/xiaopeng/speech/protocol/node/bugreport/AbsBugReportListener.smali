.class public abstract Lcom/xiaopeng/speech/protocol/node/bugreport/AbsBugReportListener;
.super Ljava/lang/Object;
.source "AbsBugReportListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBugReportBegin()V
    .locals 0

    .line 12
    return-void
.end method

.method public onBugReportCancel()V
    .locals 0

    .line 32
    return-void
.end method

.method public onBugReportEnd(Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;)V
    .locals 0
    .param p1, "endValue"    # Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;

    .line 17
    return-void
.end method

.method public onBugReportEndtts()V
    .locals 0

    .line 27
    return-void
.end method

.method public onBugReportSubmit()V
    .locals 0

    .line 37
    return-void
.end method

.method public onBugReportVolume(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 22
    return-void
.end method

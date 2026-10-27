.class public Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;
.super Ljava/lang/Object;
.source "CheckDataResponse.java"


# instance fields
.field private volatile mDetailResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mErrorCode:I

.field private volatile mHasIssue:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mErrorCode:I

    .line 13
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mHasIssue:Z

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mDetailResult:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDetailResult(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    .line 26
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mDetailResult:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDetailResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mDetailResult:Ljava/util/List;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mErrorCode:I

    return v0
.end method

.method public hasIssue()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mHasIssue:Z

    return v0
.end method

.method public setDetailResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mDetailResult:Ljava/util/List;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 42
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mErrorCode:I

    return-void
.end method

.method public setHasIssue(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasIssue"
        }
    .end annotation

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->mHasIssue:Z

    return-void
.end method

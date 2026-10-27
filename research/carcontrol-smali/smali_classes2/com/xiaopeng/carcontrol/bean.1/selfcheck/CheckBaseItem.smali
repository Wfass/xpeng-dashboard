.class public abstract Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;
.super Ljava/lang/Object;
.source "CheckBaseItem.java"


# instance fields
.field private mLevel:I

.field private volatile mResult:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mResult:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    return-void
.end method


# virtual methods
.method public addResulValueItem(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sigName",
            "sigValue"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mResult:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->addDetailResult(Ljava/lang/String;I)V

    return-void
.end method

.method public cancelCheck()V
    .locals 0

    return-void
.end method

.method public getLevel()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mLevel:I

    return v0
.end method

.method public getResult()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mResult:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasIssue()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mResult:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->hasIssue()Z

    move-result v0

    return v0
.end method

.method public setHasIssue(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasIssue"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mResult:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;->setHasIssue(Z)V

    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 38
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mLevel:I

    return-void
.end method

.method public setResult(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckBaseItem;->mResult:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDataResponse;

    return-void
.end method

.method public startCheck()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public stopCheck()V
    .locals 0

    return-void
.end method

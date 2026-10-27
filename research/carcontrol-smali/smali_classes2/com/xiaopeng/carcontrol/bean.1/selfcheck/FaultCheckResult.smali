.class public Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;
.super Ljava/lang/Object;
.source "FaultCheckResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;
    }
.end annotation


# instance fields
.field private mCheckedCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checkedCount"
    .end annotation
.end field

.field private mDetailResult:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detailResult"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFaultCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "faultCount"
    .end annotation
.end field

.field private mStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private mTotalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalCount"
    .end annotation
.end field

.field private mTts:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tts"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mDetailResult:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDetailResult(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "result",
            "level"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mDetailResult:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;-><init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCheckedCount()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mCheckedCount:I

    return v0
.end method

.method public getDetailResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult$DetailResult;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mDetailResult:Ljava/util/List;

    return-object v0
.end method

.method public getFaultCount()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mFaultCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mStatus:I

    return v0
.end method

.method public getTTS()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mTts:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mTotalCount:I

    return v0
.end method

.method public setCheckedCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkedCount"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mCheckedCount:I

    return-void
.end method

.method public setFaultCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "faultCount"
        }
    .end annotation

    .line 58
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mFaultCount:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 34
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mStatus:I

    return-void
.end method

.method public setTTS(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "TTS"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mTts:Ljava/lang/String;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalCount"
        }
    .end annotation

    .line 42
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/FaultCheckResult;->mTotalCount:I

    return-void
.end method

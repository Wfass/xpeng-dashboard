.class public Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;
.super Ljava/lang/Object;
.source "CheckResult.java"


# instance fields
.field private mSigName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sigName"
    .end annotation
.end field

.field private mSigVal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sigVal"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sigName",
            "sigVal"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;->mSigName:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;->mSigVal:I

    return-void
.end method


# virtual methods
.method public getSigName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;->mSigName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigVal()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;->mSigVal:I

    return v0
.end method

.method public setSigName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigName"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;->mSigName:Ljava/lang/String;

    return-void
.end method

.method public setSigVal(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigVal"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;->mSigVal:I

    return-void
.end method

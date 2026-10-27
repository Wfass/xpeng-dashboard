.class public Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;
.super Ljava/lang/Object;
.source "CheckErrorDetail.java"


# instance fields
.field private mEcu:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecu"
    .end annotation
.end field

.field private mEcuName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ecuName"
    .end annotation
.end field

.field private mErrorName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorName"
    .end annotation
.end field

.field private mItemResult:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detail"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;",
            ">;"
        }
    .end annotation
.end field

.field private mKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private mLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level"
    .end annotation
.end field

.field private mSys:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sys"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mItemResult:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addResultItem(Ljava/lang/String;I)V
    .locals 2
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

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mItemResult:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;

    invoke-direct {v1, p1, p2}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckResult;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEcu()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mEcu:Ljava/lang/String;

    return-object v0
.end method

.method public getEcuName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mEcuName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mErrorName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getSys()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mSys:Ljava/lang/String;

    return-object v0
.end method

.method public setEcu(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ecu"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mEcu:Ljava/lang/String;

    return-void
.end method

.method public setEcuName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ecuName"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mEcuName:Ljava/lang/String;

    return-void
.end method

.method public setErrorName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorName"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mErrorName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mLevel:Ljava/lang/String;

    return-void
.end method

.method public setSys(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sys"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;->mSys:Ljava/lang/String;

    return-void
.end method

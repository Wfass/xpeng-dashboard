.class public Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;
.super Ljava/lang/Object;
.source "CheckUploadData.java"


# instance fields
.field private mCduId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cduId"
    .end annotation
.end field

.field private mErrorDetail:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errorDetail"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private mTs:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field

.field private mVin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mErrorDetail:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addErrorDetailAll(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;",
            ">;)V"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mErrorDetail:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCduId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mCduId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetail()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mErrorDetail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mStatus:I

    return v0
.end method

.method public getTs()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mTs:J

    return-wide v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mVin:Ljava/lang/String;

    return-object v0
.end method

.method public setCduId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cduId"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mCduId:Ljava/lang/String;

    return-void
.end method

.method public setErrorDetail(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDetail"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckErrorDetail;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mErrorDetail:Ljava/util/ArrayList;

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
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mStatus:I

    return-void
.end method

.method public setTs(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ts"
        }
    .end annotation

    .line 26
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mTs:J

    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vin"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckUploadData;->mVin:Ljava/lang/String;

    return-void
.end method

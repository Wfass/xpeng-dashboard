.class public Lcom/xiaopeng/commonfunc/bean/car/McuGetGpsInfoMsg;
.super Ljava/lang/Object;
.source "McuGetGpsInfoMsg.java"


# instance fields
.field public mGpsMsg:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "data"    # I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/McuGetGpsInfoMsg;->mGpsMsg:I

    .line 9
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 12
    const-string v0, ""

    .line 13
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mGpsMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/car/McuGetGpsInfoMsg;->mGpsMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    return-object v0
.end method

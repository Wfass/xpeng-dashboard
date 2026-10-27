.class public Lcom/xiaopeng/commonfunc/bean/car/DidResponse;
.super Ljava/lang/Object;
.source "DidResponse.java"


# instance fields
.field private mAddress:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field private mCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private mDid:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "did"
    .end annotation
.end field

.field private mMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private mValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mAddress:I

    .line 20
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mDid:I

    .line 21
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mValue:Ljava/lang/String;

    .line 22
    iput p4, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mCode:I

    .line 23
    iput-object p5, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mMessage:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getAddress()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mAddress:I

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mCode:I

    return v0
.end method

.method public getDid()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mDid:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mAddress:I

    .line 32
    return-void
.end method

.method public setCode(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mCode:I

    .line 56
    return-void
.end method

.method public setDid(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mDid:I

    .line 40
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mMessage:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mValue:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DidResponse{mAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mDid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

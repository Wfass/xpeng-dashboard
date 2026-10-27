.class public Lcom/xiaopeng/devtools/bean/car/DidRequest;
.super Ljava/lang/Object;
.source "DidRequest.java"


# instance fields
.field private mAddress:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field private mDid:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "did"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/DidRequest;->mAddress:I

    .line 14
    iput p2, p0, Lcom/xiaopeng/devtools/bean/car/DidRequest;->mDid:I

    .line 15
    return-void
.end method


# virtual methods
.method public getAddress()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/DidRequest;->mAddress:I

    return v0
.end method

.method public getDid()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/xiaopeng/devtools/bean/car/DidRequest;->mDid:I

    return v0
.end method

.method public setAddress(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/DidRequest;->mAddress:I

    .line 23
    return-void
.end method

.method public setDid(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/xiaopeng/devtools/bean/car/DidRequest;->mDid:I

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DidRequest{mAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/DidRequest;->mAddress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/devtools/bean/car/DidRequest;->mDid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

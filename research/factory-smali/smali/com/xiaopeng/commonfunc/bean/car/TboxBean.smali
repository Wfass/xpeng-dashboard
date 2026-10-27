.class public Lcom/xiaopeng/commonfunc/bean/car/TboxBean;
.super Ljava/lang/Object;
.source "TboxBean.java"


# instance fields
.field private mRequest:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Request"
    .end annotation
.end field

.field private mStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Status"
    .end annotation
.end field

.field private mStringValue1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StringValue1"
    .end annotation
.end field

.field private mStringValue2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "StringValue2"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mRequest"    # I
    .param p2, "mStatus"    # I
    .param p3, "mStringValue1"    # Ljava/lang/String;
    .param p4, "mStringValue2"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mRequest:I

    .line 18
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStatus:I

    .line 19
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStringValue1:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStringValue2:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getRequest()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mRequest:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStatus:I

    return v0
.end method

.method public getStringValue1()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStringValue1:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue2()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStringValue2:Ljava/lang/String;

    return-object v0
.end method

.method public setRequest(I)V
    .locals 0
    .param p1, "mRequest"    # I

    .line 28
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mRequest:I

    .line 29
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "mStatus"    # I

    .line 36
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStatus:I

    .line 37
    return-void
.end method

.method public setStringValue1(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStringValue1"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStringValue1:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStringValue2(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStringValue2"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStringValue2:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TboxBean{mRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStringValue1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStringValue1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mStringValue2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxBean;->mStringValue2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/xiaopeng/logictree/c;
.super Ljava/lang/Object;
.source "LogicTree.java"


# instance fields
.field private XQ:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "param"
    .end annotation
.end field

.field private XR:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "parseMethod"
    .end annotation
.end field

.field private XS:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "results"
    .end annotation
.end field

.field private XT:[Lcom/xiaopeng/logictree/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nextActions"
    .end annotation
.end field

.field private XU:Lcom/xiaopeng/logictree/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "defaultAction"
    .end annotation
.end field

.field private XV:Lcom/xiaopeng/logictree/c;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noResultAction"
    .end annotation
.end field

.field private mAction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field


# virtual methods
.method public dU(I)Lcom/xiaopeng/logictree/c;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/logictree/c;->XT:[Lcom/xiaopeng/logictree/c;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/logictree/c;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public pG()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/logictree/c;->XQ:Ljava/lang/String;

    return-object v0
.end method

.method public pH()[Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/logictree/c;->XS:[Ljava/lang/String;

    return-object v0
.end method

.method public pI()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/logictree/c;->XT:[Lcom/xiaopeng/logictree/c;

    array-length v0, v0

    return v0
.end method

.method public pJ()Lcom/xiaopeng/logictree/c;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/logictree/c;->XU:Lcom/xiaopeng/logictree/c;

    return-object v0
.end method

.method public pK()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/logictree/c;->XR:I

    return v0
.end method

.method public pL()Lcom/xiaopeng/logictree/c;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/logictree/c;->XV:Lcom/xiaopeng/logictree/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogicTree{mAction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/logictree/c;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mParam=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/logictree/c;->XQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mParseMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/logictree/c;->XR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/logictree/c;->XS:[Ljava/lang/String;

    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNextAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/logictree/c;->XT:[Lcom/xiaopeng/logictree/c;

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/logictree/c;->XU:Lcom/xiaopeng/logictree/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNoResultAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/logictree/c;->XV:Lcom/xiaopeng/logictree/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    return-object v0
.end method

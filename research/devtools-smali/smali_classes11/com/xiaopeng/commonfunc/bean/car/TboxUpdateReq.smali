.class public Lcom/xiaopeng/commonfunc/bean/car/TboxUpdateReq;
.super Ljava/lang/Object;
.source "TboxUpdateReq.java"


# instance fields
.field public File:Ljava/lang/String;

.field public Key:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxUpdateReq;->Key:I

    .line 12
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxUpdateReq;->File:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxUpdateReq;->File:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxUpdateReq;->Key:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TboxUpdateReq{Key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxUpdateReq;->Key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", File=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxUpdateReq;->File:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

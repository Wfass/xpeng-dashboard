.class public Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;
.super Ljava/lang/Object;
.source "TboxCanControlIPMsg.java"


# instance fields
.field private Key:I

.field private Value:Lcom/xiaopeng/commonfunc/bean/car/IPNPort;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(ILcom/xiaopeng/commonfunc/bean/car/IPNPort;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;->Key:I

    .line 16
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;->Value:Lcom/xiaopeng/commonfunc/bean/car/IPNPort;

    .line 17
    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;->Key:I

    return v0
.end method

.method public getValue()Lcom/xiaopeng/commonfunc/bean/car/IPNPort;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;->Value:Lcom/xiaopeng/commonfunc/bean/car/IPNPort;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TboxCanControlIPMsg{Key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;->Key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;->Value:Lcom/xiaopeng/commonfunc/bean/car/IPNPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

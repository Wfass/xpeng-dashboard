.class public Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;
.super Ljava/lang/Object;
.source "EcuUpdateReq.java"


# instance fields
.field private ImgLocation:Ljava/lang/String;

.field private Target:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "imgLocation"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;->Target:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;->ImgLocation:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getImgLocation()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;->ImgLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;->Target:Ljava/lang/String;

    return-object v0
.end method

.method public setImgLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgLocation"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;->ImgLocation:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;->Target:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcuUpdateReq{Target=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;->Target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ImgLocation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/car/EcuUpdateReq;->ImgLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

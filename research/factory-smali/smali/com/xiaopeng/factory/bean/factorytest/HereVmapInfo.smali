.class public Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;
.super Ljava/lang/Object;
.source "HereVmapInfo.java"


# instance fields
.field private mContentLicense:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Content license level"
    .end annotation
.end field

.field private mJira:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Jira"
    .end annotation
.end field

.field private mMapSupplier:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MapSupplier"
    .end annotation
.end field

.field private mMapVer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Map Version"
    .end annotation
.end field

.field private mPartNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Part Number"
    .end annotation
.end field

.field private mRegion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Region"
    .end annotation
.end field

.field private mTransTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Transaction tag"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegion"    # Ljava/lang/String;
    .param p2, "mTransTag"    # Ljava/lang/String;
    .param p3, "mMapSupplier"    # Ljava/lang/String;
    .param p4, "mMapVer"    # Ljava/lang/String;
    .param p5, "mContentLicense"    # Ljava/lang/String;
    .param p6, "mPartNumber"    # Ljava/lang/String;
    .param p7, "mJira"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mRegion:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mTransTag:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mMapSupplier:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mMapVer:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mContentLicense:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mPartNumber:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mJira:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getContentLicense()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mContentLicense:Ljava/lang/String;

    return-object v0
.end method

.method public getJira()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mJira:Ljava/lang/String;

    return-object v0
.end method

.method public getMapSupplier()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mMapSupplier:Ljava/lang/String;

    return-object v0
.end method

.method public getMapVer()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mMapVer:Ljava/lang/String;

    return-object v0
.end method

.method public getPartNumber()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mPartNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getTransTag()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mTransTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContentLicense(Ljava/lang/String;)V
    .locals 0
    .param p1, "mContentLicense"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mContentLicense:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setJira(Ljava/lang/String;)V
    .locals 0
    .param p1, "mJira"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mJira:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setMapSupplier(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMapSupplier"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mMapSupplier:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setMapVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMapVer"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mMapVer:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPartNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPartNumber"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mPartNumber:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegion"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mRegion:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTransTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTransTag"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mTransTag:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HereVmapInfo{mRegion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTransTag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mTransTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMapSupplier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mMapSupplier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMapVer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mMapVer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mContentLicense=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mContentLicense:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPartNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mPartNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mJira=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/factory/bean/factorytest/HereVmapInfo;->mJira:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

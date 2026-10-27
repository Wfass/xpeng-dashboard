.class public Lcom/xiaopeng/commonfunc/bean/VmapConfig;
.super Ljava/lang/Object;
.source "VmapConfig.java"


# instance fields
.field private region:Ljava/lang/String;

.field private vendor:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->version:I

    .line 17
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->vendor:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->region:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->version:I

    return v0
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->region:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->vendor:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->version:I

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmapConfig{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->vendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", region=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/VmapConfig;->region:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

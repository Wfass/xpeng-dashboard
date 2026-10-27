.class public Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;
.super Ljava/lang/Object;
.source "VmapConfig.java"


# instance fields
.field private region:Ljava/lang/String;

.field private vendor:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "vendor"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->version:I

    .line 17
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->vendor:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->region:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->version:I

    return v0
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0
    .param p1, "region"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->region:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0
    .param p1, "vendor"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->vendor:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 26
    iput p1, p0, Lcom/xiaopeng/factory/bean/factorytest/VmapConfig;->version:I

    .line 27
    return-void
.end method

.class public Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
.super Ljava/lang/Object;
.source "XAppActivityInfo.java"


# instance fields
.field private activityName:Ljava/lang/String;

.field private areaType:Ljava/lang/String;

.field private componentName:Landroid/content/ComponentName;

.field private mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

.field private pkgName:Ljava/lang/String;

.field private screenId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->areaType:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->screenId:I

    return v0
.end method

.method public getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    return-object v0
.end method

.method public setActivityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityName"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->activityName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setAreaType(Ljava/lang/String;)V
    .locals 0
    .param p1, "areaType"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->areaType:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setComponentName(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->componentName:Landroid/content/ComponentName;

    .line 57
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->pkgName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setScreenId(I)V
    .locals 0
    .param p1, "screenId"    # I

    .line 24
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->screenId:I

    .line 25
    return-void
.end method

.method public setXpPackageInfo(Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->mXpPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityInfo{screenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->screenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", areaType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->areaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pkgName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", activityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", componentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

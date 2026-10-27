.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
.super Ljava/lang/Object;
.source "AmbientLightCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ATLEffect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    }
.end annotation


# instance fields
.field EffectData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;",
            ">;"
        }
    .end annotation
.end field

.field effectName:Ljava/lang/String;

.field effectType:I

.field enableDefaultData:I

.field enableDrivingGroup:I

.field enableMusicSpectrum:I

.field enableSpeedData:I

.field enableUserSelectedColor:I

.field executeTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1857
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableMusicSpectrum:I

    .line 1858
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableSpeedData:I

    .line 1859
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->executeTime:I

    .line 1860
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableDefaultData:I

    .line 1861
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableDrivingGroup:I

    .line 1862
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableUserSelectedColor:I

    .line 1865
    return-void
.end method


# virtual methods
.method public getDefaultData()I
    .locals 1

    .line 1927
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableDefaultData:I

    return v0
.end method

.method public getEffectData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;",
            ">;"
        }
    .end annotation

    .line 1882
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->EffectData:Ljava/util/List;

    return-object v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->effectName:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectType()I
    .locals 1

    .line 1891
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->effectType:I

    return v0
.end method

.method public getEnableDrivingGroup()I
    .locals 1

    .line 1936
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableDrivingGroup:I

    return v0
.end method

.method public getEnableMusicSpectrum()I
    .locals 1

    .line 1900
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableMusicSpectrum:I

    return v0
.end method

.method public getEnableSpeedData()I
    .locals 1

    .line 1909
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableSpeedData:I

    return v0
.end method

.method public getEnableUserSelectedColor()I
    .locals 1

    .line 1945
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableUserSelectedColor:I

    return v0
.end method

.method public getExecuteTime()I
    .locals 1

    .line 1918
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->executeTime:I

    return v0
.end method

.method public setDefaultData(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .param p1, "enableDefaultData"    # I

    .line 1922
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableDefaultData:I

    .line 1923
    return-object p0
.end method

.method public setEffectData(Ljava/util/List;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;"
        }
    .end annotation

    .line 1877
    .local p1, "effectData":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->EffectData:Ljava/util/List;

    .line 1878
    return-object p0
.end method

.method public setEffectName(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .param p1, "effectName"    # Ljava/lang/String;

    .line 1868
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->effectName:Ljava/lang/String;

    .line 1869
    return-object p0
.end method

.method public setEffectType(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .param p1, "effectType"    # I

    .line 1886
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->effectType:I

    .line 1887
    return-object p0
.end method

.method public setEnableDrivingGroup(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .param p1, "enableDrivingGroup"    # I

    .line 1931
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableDrivingGroup:I

    .line 1932
    return-object p0
.end method

.method public setEnableMusicSpectrum(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .param p1, "enableMusicSpectrum"    # I

    .line 1895
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableMusicSpectrum:I

    .line 1896
    return-object p0
.end method

.method public setEnableSpeedData(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .param p1, "enableSpeedData"    # I

    .line 1904
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableSpeedData:I

    .line 1905
    return-object p0
.end method

.method public setEnableUserSelectedColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .param p1, "enableUserSelectedColor"    # I

    .line 1940
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->enableUserSelectedColor:I

    .line 1941
    return-object p0
.end method

.method public setExecuteTime(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
    .locals 0
    .param p1, "executeTime"    # I

    .line 1913
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;->executeTime:I

    .line 1914
    return-object p0
.end method

.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
.super Ljava/lang/Object;
.source "AmbientLightCapability.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EffectData"
.end annotation


# instance fields
.field bright:I

.field color:I

.field colorSwitch:Z

.field delayTime:J

.field enableRandom:I

.field fade:I

.field groupNum:I

.field periodTime:I

.field randomArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field randomMax:I

.field randomMin:I

.field timeInterval:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1949
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->groupNum:I

    .line 1950
    const/16 v0, 0xb

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->color:I

    .line 1951
    const/16 v0, 0x64

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->bright:I

    .line 1952
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->fade:I

    .line 1953
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->timeInterval:I

    .line 1954
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->periodTime:I

    .line 1955
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->delayTime:J

    .line 1956
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->colorSwitch:Z

    .line 1957
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->enableRandom:I

    .line 1958
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomMax:I

    .line 1959
    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomMin:I

    .line 1960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomArray:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .locals 1

    .line 2044
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->bright:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 2040
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->color:I

    return v0
.end method

.method public getColorswitch()Z
    .locals 1

    .line 2068
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->colorSwitch:Z

    return v0
.end method

.method public getDelayTime()J
    .locals 2

    .line 2064
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->delayTime:J

    return-wide v0
.end method

.method public getEnableRandom()I
    .locals 1

    .line 2009
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->enableRandom:I

    return v0
.end method

.method public getFade()I
    .locals 1

    .line 2048
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->fade:I

    return v0
.end method

.method public getGroupNum()I
    .locals 1

    .line 2060
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->groupNum:I

    return v0
.end method

.method public getPeriodTime()I
    .locals 1

    .line 2056
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->periodTime:I

    return v0
.end method

.method public getRandomArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2036
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomArray:Ljava/util/List;

    return-object v0
.end method

.method public getRandomMax()I
    .locals 1

    .line 2018
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomMax:I

    return v0
.end method

.method public getRandomMin()I
    .locals 1

    .line 2027
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomMin:I

    return v0
.end method

.method public getTimeInterval()I
    .locals 1

    .line 2052
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->timeInterval:I

    return v0
.end method

.method public setBrightness(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "bright"    # I

    .line 1968
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->bright:I

    .line 1969
    return-object p0
.end method

.method public setColor(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "color"    # I

    .line 1963
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->color:I

    .line 1964
    return-object p0
.end method

.method public setColorswitch(Z)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "colorSwitch"    # Z

    .line 1998
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->colorSwitch:Z

    .line 1999
    return-object p0
.end method

.method public setDelayTime(J)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "delayTime"    # J

    .line 1993
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->delayTime:J

    .line 1994
    return-object p0
.end method

.method public setEnableRandom(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "enableRandom"    # I

    .line 2004
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->enableRandom:I

    .line 2005
    return-object p0
.end method

.method public setFade(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "fade"    # I

    .line 1973
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->fade:I

    .line 1974
    return-object p0
.end method

.method public setGroupNum(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "groupNum"    # I

    .line 1988
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->groupNum:I

    .line 1989
    return-object p0
.end method

.method public setPeriodTime(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "periodTime"    # I

    .line 1983
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->periodTime:I

    .line 1984
    return-object p0
.end method

.method public setRandomArray(Ljava/util/List;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;"
        }
    .end annotation

    .line 2031
    .local p1, "randomArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomArray:Ljava/util/List;

    .line 2032
    return-object p0
.end method

.method public setRandomMax(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "randomMax"    # I

    .line 2013
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomMax:I

    .line 2014
    return-object p0
.end method

.method public setRandomMin(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "randomMin"    # I

    .line 2022
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->randomMin:I

    .line 2023
    return-object p0
.end method

.method public setTimeInterval(I)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;
    .locals 0
    .param p1, "timeInterval"    # I

    .line 1978
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightCapability$ATLEffect$EffectData;->timeInterval:I

    .line 1979
    return-object p0
.end method

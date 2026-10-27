.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;
.super Ljava/lang/Object;
.source "StartNaviBean.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;
    }
.end annotation


# static fields
.field public static final PATH_PREF_AVOID_CONGESTION:I = 0x4

.field public static final PATH_PREF_AVOID_FEE_CONGESTION:I = 0x8

.field public static final PATH_PREF_DEFAULT:I = 0x0

.field public static final PATH_PREF_HIGH_SPEED:I = 0x2

.field public static final PATH_PREF_LOW_FEE:I = 0x1

.field public static final PATH_PREF_NO_HIGH_SPEED:I = 0x6

.field public static final PATH_PREF_NO_HIGH_SPEED_FEE_CONGESTION:I = 0x9

.field public static final PATH_PREF_NO_HIGH_SPEED_NO_FEE:I = 0x7


# instance fields
.field private fullSceneSwitch:Z

.field private isImediateNavi:Z

.field private naviType:I

.field private pathRef:I

.field private poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

.field private routeSelectRef:I

.field private speechInfo:Lorg/json/JSONObject;

.field private type:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->fullSceneSwitch:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->speechInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;ILjava/lang/String;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->fullSceneSwitch:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->speechInfo:Lorg/json/JSONObject;

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 142
    iput p2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->pathRef:I

    const-string/jumbo p1, "waypoint"

    .line 144
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    sget-object p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->WAYPOINT:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->type:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    goto :goto_0

    .line 147
    :cond_0
    sget-object p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->POI:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->type:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->fullSceneSwitch:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->speechInfo:Lorg/json/JSONObject;

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    .line 126
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->convertPathRef(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->pathRef:I

    const-string/jumbo p1, "waypoint"

    .line 128
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    sget-object p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->WAYPOINT:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->type:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    goto :goto_0

    .line 131
    :cond_0
    sget-object p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->POI:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->type:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    :goto_0
    return-void
.end method

.method private convertPathRef(Ljava/lang/String;)I
    .locals 7

    .line 258
    invoke-static {}, Lcom/xiaopeng/speech/config/CarSpeechConfigFacade;->isOverseasCarType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/NaviPreferenceBean;->prefNameToPrefId(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 261
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "\u4e0d\u8d70\u9ad8\u901f\u4e14\u907f\u514d\u6536\u8d39"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "\u9ad8\u901f\u4f18\u5148"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "\u8eb2\u907f\u62e5\u5835"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "\u4e0d\u8d70\u9ad8\u901f"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "\u8d39\u7528\u5c11"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "\u4e0d\u8d70\u9ad8\u901f\u8eb2\u907f\u6536\u8d39\u548c\u62e5\u5835"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "\u8eb2\u907f\u6536\u8d39\u548c\u62e5\u5835"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v0, v6

    :goto_0
    packed-switch v0, :pswitch_data_0

    return v6

    :pswitch_0
    const/4 p1, 0x7

    return p1

    :pswitch_1
    return v4

    :pswitch_2
    return v3

    :pswitch_3
    return v2

    :pswitch_4
    return v5

    :pswitch_5
    const/16 p1, 0x9

    return p1

    :pswitch_6
    const/16 p1, 0x8

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1cc10e14 -> :sswitch_6
        -0x93779de -> :sswitch_5
        0x220aee2 -> :sswitch_4
        0x25a11c8a -> :sswitch_3
        0x43085abd -> :sswitch_2
        0x488a3fb7 -> :sswitch_1
        0x795d79bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNaviType()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->naviType:I

    return v0
.end method

.method public getPathRef()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->pathRef:I

    return v0
.end method

.method public getPoiBean()Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-object v0
.end method

.method public getRouteSelectRef()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->routeSelectRef:I

    return v0
.end method

.method public getSpeechInfo()Lorg/json/JSONObject;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->speechInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getType()Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->type:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    return-object v0
.end method

.method public isFullSceneSwitch()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->fullSceneSwitch:Z

    return v0
.end method

.method public isImediateNavi()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->isImediateNavi:Z

    return v0
.end method

.method public setFullSceneSwitch(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->fullSceneSwitch:Z

    return-void
.end method

.method public setImediateNavi(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->isImediateNavi:Z

    return-void
.end method

.method public setNaviType(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->naviType:I

    return-void
.end method

.method public setPathRef(I)V
    .locals 0

    .line 186
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->pathRef:I

    return-void
.end method

.method public setPoiBean(Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    return-void
.end method

.method public setRouteSelectRef(I)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->routeSelectRef:I

    return-void
.end method

.method public setSpeechInfo(Lorg/json/JSONObject;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->speechInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public setType(Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->type:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartNaviBean{poiBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->poiBean:Lcom/xiaopeng/speech/protocol/node/navi/bean/PoiBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", naviType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->naviType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routeSelectRef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->routeSelectRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pathRef=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->pathRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dialogInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;->speechInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;
.super Ljava/lang/Object;
.source "SmartLightService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LightCurveMap"
.end annotation


# instance fields
.field private lights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;",
            ">;"
        }
    .end annotation
.end field

.field private mLuxDay:I

.field private mLuxNight:I

.field private minBrightness:I

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->mLuxDay:I

    return v0
.end method

.method static synthetic access$2000(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->mLuxNight:I

    return v0
.end method

.method static synthetic access$2100(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->minBrightness:I

    return v0
.end method

.method static synthetic access$2200(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBrightness(I)I
    .locals 6
    .param p1, "lux"    # I

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->lights:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;

    .line 76
    .local v0, "min":Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->lights:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;

    .line 78
    .local v1, "max":Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->lights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;

    .line 79
    .local v3, "it":Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;
    iget v4, v3, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;->lux:I

    if-ge v4, p1, :cond_0

    .line 80
    move-object v1, v3

    move-object v0, v3

    .line 85
    .end local v3    # "it":Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;
    goto :goto_0

    .line 82
    .restart local v3    # "it":Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;
    :cond_0
    move-object v1, v3

    .line 83
    nop

    .line 87
    .end local v3    # "it":Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;
    :cond_1
    iget v2, v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;->lux:I

    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;->lux:I

    sub-int/2addr v2, v3

    .line 88
    .local v2, "detaLux":I
    iget v3, v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;->brightness:I

    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;->brightness:I

    sub-int/2addr v3, v4

    .line 90
    .local v3, "detaBrightness":I
    if-nez v3, :cond_2

    .line 91
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;->brightness:I

    return v4

    .line 94
    :cond_2
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;->brightness:I

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;->lux:I

    sub-int v5, p1, v5

    mul-int/2addr v5, v3

    div-int/2addr v5, v2

    add-int/2addr v4, v5

    return v4
.end method

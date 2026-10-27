.class abstract Lcom/xiaopeng/lib/feature/BaseConfig;
.super Ljava/lang/Object;
.source "BaseConfig.java"

# interfaces
.implements Lcom/xiaopeng/lib/feature/ICallBack;


# static fields
.field static final CFC_CODE_HIGH:I = 0x3

.field public static final CFC_CODE_INVALID:I = 0x0

.field public static final CFC_CODE_LOW:I = 0x1

.field public static final CFC_CODE_MIDDLE:I = 0x2

.field public static final CFC_CODE_TRIP:I = 0x4

.field public static final IS_DEVELOPING:Z = false

.field protected static final PROPERTY_BODY_COLOR:Ljava/lang/String; = "persist.sys.xiaopeng.bodyColor"

.field protected static final PROPERTY_CFC:Ljava/lang/String; = "persist.sys.xiaopeng.cfcVehicleLevel"

.field public static final PROPERTY_MIRROR:Ljava/lang/String; = "persist.sys.xiaopeng.MIRROR"

.field public static final PROPERTY_MULTITEMPAREA:Ljava/lang/String; = "persist.sys.xiaopeng.multiTempArea"

.field public static final PROPERTY_NOT_SUPPORT:Ljava/lang/String; = "0"

.field public static final PROPERTY_SUPPORT:Ljava/lang/String; = "1"

.field public static final TAG:Ljava/lang/String;

.field static final TEMP_AREA_DUAL:I = 0x2

.field protected static sCduType:Ljava/lang/String;

.field protected static sCfcCode:Ljava/lang/Integer;

.field protected static sFeatureSupport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCfcCode:Ljava/lang/Integer;

    .line 15
    sput-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCduType:Ljava/lang/String;

    .line 25
    const-class v0, Lcom/xiaopeng/lib/feature/BaseConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCarCduType()Ljava/lang/String;
    .locals 2

    .line 60
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCduType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    :try_start_0
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCduType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Q2"

    sput-object v1, Lcom/xiaopeng/lib/feature/BaseConfig;->sCduType:Ljava/lang/String;

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCduType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCfcCode()I
    .locals 2

    .line 33
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCfcCode:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 38
    const-string v0, "persist.sys.xiaopeng.cfcVehicleLevel"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "cfcInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x0

    .local v1, "cfc":I
    goto :goto_0

    .line 43
    .end local v1    # "cfc":I
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .restart local v1    # "cfc":I
    goto :goto_0

    .line 44
    .end local v1    # "cfc":I
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .end local v0    # "cfcInfo":Ljava/lang/String;
    .local v1, "cfc":I
    :goto_0
    move v0, v1

    .line 50
    .end local v1    # "cfc":I
    .local v0, "cfc":I
    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x1

    .line 53
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/lib/feature/BaseConfig;->sCfcCode:Ljava/lang/Integer;

    .line 55
    .end local v0    # "cfc":I
    :cond_2
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCfcCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 84
    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "propValue":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/lib/feature/BaseConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read prop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v0
.end method

.method protected getRightLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sLanguageCode"    # Ljava/lang/String;
    .param p3, "resultStr"    # Ljava/lang/String;

    .line 91
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const-string v0, "ar"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "iw"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    :cond_0
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 97
    aget-object v4, v0, v3

    const-string v5, "ar"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v0, v3

    const-string v5, "iw"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    if-nez v1, :cond_1

    .line 99
    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 101
    :cond_1
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 96
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 109
    .end local v0    # "split":[Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 5
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 73
    .local v0, "support":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 74
    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "propValue":Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/lib/feature/BaseConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read prop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    sget-object v2, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .end local v1    # "propValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public hasSettingsFeature(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "defVaule"    # I

    .line 121
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 122
    .local v0, "support":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, "value":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    sget-object v2, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v1    # "value":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

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

.field public static final TAG:Ljava/lang/String; = "BaseConfig"

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
    .locals 1

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

    goto :goto_0

    :catch_0
    const-string v0, "Q2"

    .line 64
    sput-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCduType:Ljava/lang/String;

    .line 68
    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCduType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCfcCode()I
    .locals 3

    .line 33
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCfcCode:Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "persist.sys.xiaopeng.cfcVehicleLevel"

    .line 38
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 53
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCfcCode:Ljava/lang/Integer;

    .line 55
    :cond_2
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sCfcCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "0"

    .line 84
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/xiaopeng/lib/feature/BaseConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read prop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " value: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected getRightLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 91
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 92
    invoke-static {}, Landroid/car/XpCarFeatures;->getVehicleRudderType()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    const-string p1, "ar"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "iw"

    if-nez p2, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_0
    const-string p2, ","

    .line 93
    invoke-virtual {p3, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 96
    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_3

    .line 97
    aget-object v4, p3, v2

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, p3, v2

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v3, :cond_1

    .line 99
    aget-object v4, p3, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 4

    .line 72
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "0"

    .line 74
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/xiaopeng/lib/feature/BaseConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read prop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public hasSettingsFeature(Ljava/lang/String;I)Z
    .locals 1

    .line 121
    sget-object v0, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 123
    invoke-static {}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getInstance()Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    sget-object p2, Lcom/xiaopeng/lib/feature/BaseConfig;->sFeatureSupport:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.class final Lcom/xiaopeng/lib/feature/ParseEngine;
.super Ljava/lang/Object;
.source "ParseEngine.java"


# static fields
.field static final ALLOW_NULL_TAG:Ljava/lang/String; = "ALLOW_NULL_TAG"

.field private static final LOC_VERSION:Ljava/lang/String; = "persist.sys.xiaopeng.locVersion"

.field static final PROPERTY_NOT_SUPPORT:Ljava/lang/String; = "0"

.field static final PROPERTY_SUPPORT:Ljava/lang/String; = "1"

.field static final SEAT_DRV_INDEX:I = 0x0

.field static final SEAT_PSN_INDEX:I = 0x1

.field static final SEAT_RL_INDEX:I = 0x2

.field static final SEAT_RR_INDEX:I = 0x3

.field static final SEAT_TL_INDEX:I = 0x4

.field static final SEAT_TR_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ParseEngine"


# instance fields
.field private mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

.field private mLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotSupport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/feature/ICallBack;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mSupportList:Ljava/util/List;

    const-string v0, "getLanguageName"

    const-string v1, "getLanguageCode"

    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mLanguageList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mLocalVersions:Ljava/util/List;

    const-string v0, "isSupportTrafficJamMode"

    const-string v1, "isSupportEsl"

    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mNotSupport:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    return-void
.end method

.method private getCarFeatureInt(Ljava/lang/String;)I
    .locals 0

    .line 240
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureValue(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getCarFeatureValue(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 549
    :try_start_0
    const-class v1, Landroid/car/XpCarFeatures;

    new-array v2, v0, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    .line 550
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  error : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ParseEngine"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private getCustomerNumbers()Ljava/lang/String;
    .locals 3

    .line 166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "NL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "IL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "DK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string v0, ""

    goto :goto_1

    :pswitch_0
    const-string v0, "+46 812160608"

    goto :goto_1

    :pswitch_1
    const-string v0, "+47 80017060"

    goto :goto_1

    :pswitch_2
    const-string v0, "+31 202626822"

    goto :goto_1

    :pswitch_3
    const-string v0, "+972 6020"

    goto :goto_1

    :pswitch_4
    const-string v0, "+45 78724343"

    goto :goto_1

    :pswitch_5
    const-string v0, "400-783-6688,020-62235799"

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x86b -> :sswitch_5
        0x887 -> :sswitch_4
        0x923 -> :sswitch_3
        0x9be -> :sswitch_2
        0x9c1 -> :sswitch_1
        0xa52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFeatureInt(Ljava/lang/String;)I
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/feature/ICallBack;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse getFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  error : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParseEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method private getFeatureLinkConfig(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 432
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getReverseFeatureLinkConfig(Ljava/lang/String;)Z
    .locals 0

    .line 442
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getSysPropertyBool(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getSysPropertyIntEqual(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 146
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private getSystemProperty(Ljava/lang/String;)I
    .locals 2

    const-string v0, ","

    .line 453
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 454
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private hasFeatures(Ljava/lang/String;)Z
    .locals 6

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 215
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 216
    aget-object v3, v0, v2

    .line 218
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v4, v3}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    return v1

    :catch_0
    move-exception v3

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse hasFeatures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ParseEngine"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private haveSettingFeature(Ljava/lang/String;)Z
    .locals 5

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 352
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    return v2

    .line 358
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v3, v0}, Lcom/xiaopeng/lib/feature/ICallBack;->hasSettingsFeature(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse isCarFutureSatisfyValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  error : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParseEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method private isBelongInCDUList(Ljava/lang/String;)Z
    .locals 1

    .line 316
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private isCarFeatureOK(Ljava/lang/String;)Z
    .locals 1

    .line 537
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCarFutureEqualValue(Ljava/lang/String;)Z
    .locals 4

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 397
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    return v2

    .line 400
    :cond_0
    aget-object v1, v0, v2

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureValue(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    .line 403
    :try_start_0
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_1

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse isCarFutureEqualValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  error : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParseEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2
.end method

.method private isCarFutureSatisfyValue(Ljava/lang/String;)Z
    .locals 4

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 375
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    return v2

    .line 378
    :cond_0
    aget-object v1, v0, v2

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureValue(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    .line 381
    :try_start_0
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p1, :cond_1

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse isCarFutureSatisfyValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  error : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParseEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2
.end method

.method private isCfCContain(Ljava/lang/String;)Z
    .locals 3

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v0}, Lcom/xiaopeng/lib/feature/ICallBack;->getCfcCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse isCfCContain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  error : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ParseEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCfcEqual(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v1}, Lcom/xiaopeng/lib/feature/ICallBack;->getCfcCode()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse isCfcEqual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  error : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ParseEngine"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private isCfcGreater(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v1}, Lcom/xiaopeng/lib/feature/ICallBack;->getCfcCode()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p1, :cond_0

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse isCfcGreater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  error : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ParseEngine"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private isCfcNotEqual(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v1}, Lcom/xiaopeng/lib/feature/ICallBack;->getCfcCode()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, p1, :cond_0

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse isCfcNotEqual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "  error : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ParseEngine"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method private isMixCarFeature(Ljava/lang/String;)Z
    .locals 3

    const-string v0, ","

    .line 417
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 418
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 421
    :cond_0
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    aget-object p1, p1, v2

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private isSupportByCarFeatures(Lcom/xiaopeng/lib/feature/ConfigBean;)Z
    .locals 3

    .line 520
    iget-object p1, p1, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 521
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 522
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isSystemPropEqual(Ljava/lang/String;)Z
    .locals 2

    const-string v0, ","

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 159
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 160
    aget-object p1, p1, v1

    .line 161
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private isVpmNotReady()Z
    .locals 1

    const-string v0, "isVpmHwMiss"

    .line 150
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isVpmSwReady"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isXPUFor28()Z
    .locals 1

    const-string v0, "isSupportScu"

    .line 154
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportAvm"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "isSupportXpu"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private mergeMultiConfig(Ljava/lang/String;)Z
    .locals 6

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 329
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 330
    aget-object v3, v0, v2

    .line 332
    :try_start_0
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v3

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse mergeMultiConfig "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ParseEngine"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private takeDirectResult(Ljava/lang/String;Lcom/xiaopeng/lib/feature/ConfigBean;)Ljava/lang/Object;
    .locals 4

    .line 465
    iget-object p2, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->result:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mLanguageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "persist.sys.xiaopeng.locVersion"

    .line 467
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ParseEngine"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mLocalVersions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "ALLOW_NULL_TAG"

    .line 474
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mNotSupport:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 479
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method


# virtual methods
.method isSupportSeatMassage(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    .line 201
    :cond_0
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMSecRowRtMassageFeature()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 199
    :cond_2
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMSecRowLtMassageFeature()I

    move-result p1

    if-ne p1, v1, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 197
    :cond_4
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMPMassageFeature()I

    move-result p1

    if-ne p1, v1, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 195
    :cond_6
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMDMassageFeature()I

    move-result p1

    if-ne p1, v1, :cond_7

    move v0, v1

    :cond_7
    return v0
.end method

.method isSupportType(I)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mSupportList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs parse(Ljava/lang/String;Lcom/xiaopeng/lib/feature/ConfigBean;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 60
    :cond_0
    iget v1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return-object v0

    .line 136
    :pswitch_1
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getSysPropertyIntEqual(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 134
    :pswitch_2
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getSysPropertyBool(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 132
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isVpmNotReady()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 96
    :pswitch_4
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFutureEqualValue(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 130
    :pswitch_5
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isSystemPropEqual(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_6
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_7
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCustomerNumbers()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_8
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isXPUFor28()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_9
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 128
    :pswitch_a
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isSupportSeatMassage(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 74
    :pswitch_b
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 126
    :pswitch_c
    aget-object p1, p3, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 124
    :pswitch_d
    aget-object p1, p3, v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 122
    :pswitch_e
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 120
    :pswitch_f
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Q5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 118
    :pswitch_10
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 116
    :pswitch_11
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getFeatureInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_12
    iget-object p1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    iget-object p2, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 114
    :pswitch_13
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->hasFeatures(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 112
    :pswitch_14
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCfcGreater(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 110
    :pswitch_15
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getReverseFeatureLinkConfig(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 108
    :pswitch_16
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCfcNotEqual(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 106
    :pswitch_17
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCfCContain(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 104
    :pswitch_18
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCfcEqual(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 102
    :pswitch_19
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isBelongInCDUList(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 100
    :pswitch_1a
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->mergeMultiConfig(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_1b
    iget-object p1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    iget-object p2, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_1c
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getFeatureLinkConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 78
    :pswitch_1d
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getSystemProperty(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_1e
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x41

    goto :goto_0

    :cond_1
    const/16 p1, 0x2d

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_1f
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 98
    :pswitch_20
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->haveSettingFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_21
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFutureSatisfyValue(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_22
    iget-object p1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    iget-object p2, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_23
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isMixCarFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 72
    :pswitch_24
    invoke-direct {p0, p2}, Lcom/xiaopeng/lib/feature/ParseEngine;->isSupportByCarFeatures(Lcom/xiaopeng/lib/feature/ConfigBean;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_25
    iget-object p1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/ParseEngine;->takeDirectResult(Ljava/lang/String;Lcom/xiaopeng/lib/feature/ConfigBean;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

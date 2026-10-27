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
    .param p1, "callBack"    # Lcom/xiaopeng/lib/feature/ICallBack;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mSupportList:Ljava/util/List;

    .line 31
    const-string v0, "getLanguageName"

    const-string v1, "getLanguageCode"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mLanguageList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mLocalVersions:Ljava/util/List;

    .line 35
    const-string v0, "isSupportTrafficJamMode"

    const-string v1, "isSupportEsl"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mNotSupport:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    .line 43
    return-void
.end method

.method private getCarFeatureInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getCarFeatureValue(Ljava/lang/String;)I
    .locals 5
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 547
    const/4 v0, 0x0

    move v1, v0

    .line 549
    .local v1, "result":I
    :try_start_0
    const-class v2, Landroid/car/XpCarFeatures;

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 550
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 553
    .end local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ParseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private getCustomerNumbers()Ljava/lang/String;
    .locals 4

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "sCurrentCalls":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x86b

    if-eq v2, v3, :cond_5

    const/16 v3, 0x887

    if-eq v2, v3, :cond_4

    const/16 v3, 0x923

    if-eq v2, v3, :cond_3

    const/16 v3, 0x9be

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9c1

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa52

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "SE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_1

    :cond_1
    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const-string v2, "NL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v2, "IL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_1

    :cond_4
    const-string v2, "DK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 186
    const-string v0, ""

    goto :goto_2

    .line 183
    :pswitch_0
    const-string v0, "+972 6020"

    .line 184
    goto :goto_2

    .line 180
    :pswitch_1
    const-string v0, "+47 80017060"

    .line 181
    goto :goto_2

    .line 177
    :pswitch_2
    const-string v0, "+46 812160608"

    .line 178
    goto :goto_2

    .line 174
    :pswitch_3
    const-string v0, "+31 202626822"

    .line 175
    goto :goto_2

    .line 171
    :pswitch_4
    const-string v0, "+45 78724343"

    .line 172
    goto :goto_2

    .line 168
    :pswitch_5
    const-string v0, "400-783-6688,020-62235799"

    .line 169
    nop

    .line 189
    :goto_2
    return-object v0

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
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/feature/ICallBack;->getFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "mInt":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse getFeature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    return v1
.end method

.method private getFeatureLinkConfig(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .line 432
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReverseFeatureLinkConfig(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 442
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 443
    .local v0, "result":Z
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private getSysPropertyBool(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getSysPropertyIntEqual(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0
.end method

.method private getSystemProperty(Ljava/lang/String;)I
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .line 453
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private hasFeatures(Ljava/lang/String;)Z
    .locals 8
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 216
    aget-object v3, v0, v2

    .line 218
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v4, v3}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .local v4, "result":Z
    if-nez v4, :cond_0

    .line 220
    return v1

    .line 224
    .end local v4    # "result":Z
    :cond_0
    goto :goto_1

    .line 222
    :catch_0
    move-exception v4

    .line 223
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ParseEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse hasFeatures "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private haveSettingFeature(Ljava/lang/String;)Z
    .locals 6
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 353
    return v2

    .line 356
    :cond_0
    move v1, v2

    .line 358
    .local v1, "isSupport":Z
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/xiaopeng/lib/feature/ICallBack;->hasSettingsFeature(Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 361
    goto :goto_0

    .line 359
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ParseEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse isCarFutureSatisfyValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private isBelongInCDUList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 316
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "cduType":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private isCarFeatureOK(Ljava/lang/String;)Z
    .locals 2
    .param p1, "carFeatureApi"    # Ljava/lang/String;

    .line 537
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isCarFutureEqualValue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 398
    return v2

    .line 400
    :cond_0
    aget-object v1, v0, v2

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureValue(Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "featureValue":I
    move v3, v2

    .line 403
    .local v3, "isSupport":Z
    const/4 v4, 0x1

    :try_start_0
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v5, :cond_1

    move v2, v4

    nop

    :cond_1
    move v3, v2

    .line 406
    goto :goto_0

    .line 404
    :catch_0
    move-exception v2

    .line 405
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ParseEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse isCarFutureEqualValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v3
.end method

.method private isCarFutureSatisfyValue(Ljava/lang/String;)Z
    .locals 7
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 376
    return v2

    .line 378
    :cond_0
    aget-object v1, v0, v2

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureValue(Ljava/lang/String;)I

    move-result v1

    .line 379
    .local v1, "featureValue":I
    move v3, v2

    .line 381
    .local v3, "isSupport":Z
    const/4 v4, 0x1

    :try_start_0
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v5, :cond_1

    move v2, v4

    nop

    :cond_1
    move v3, v2

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "ParseEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse isCarFutureSatisfyValue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v3
.end method

.method private isCfCContain(Ljava/lang/String;)Z
    .locals 5
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, "isSupport":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v1}, Lcom/xiaopeng/lib/feature/ICallBack;->getCfcCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse isCfCContain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private isCfcEqual(Ljava/lang/String;)Z
    .locals 5
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    move v1, v0

    .line 302
    .local v1, "isSupport":Z
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v2}, Lcom/xiaopeng/lib/feature/ICallBack;->getCfcCode()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v1, v0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ParseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse isCfcEqual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private isCfcGreater(Ljava/lang/String;)Z
    .locals 5
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 251
    const/4 v0, 0x0

    move v1, v0

    .line 253
    .local v1, "isSupport":Z
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v2}, Lcom/xiaopeng/lib/feature/ICallBack;->getCfcCode()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v1, v0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ParseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse isCfcGreater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private isCfcNotEqual(Ljava/lang/String;)Z
    .locals 5
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    move v1, v0

    .line 270
    .local v1, "isSupport":Z
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    invoke-interface {v2}, Lcom/xiaopeng/lib/feature/ICallBack;->getCfcCode()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v1, v0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ParseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse isCfcNotEqual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method private isMixCarFeature(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mixFeature"    # Ljava/lang/String;

    .line 417
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 419
    return v2

    .line 421
    :cond_0
    aget-object v1, v0, v2

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    return v2
.end method

.method private isSupportByCarFeatures(Lcom/xiaopeng/lib/feature/ConfigBean;)Z
    .locals 4
    .param p1, "configBean"    # Lcom/xiaopeng/lib/feature/ConfigBean;

    .line 520
    iget-object v0, p1, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "carFeatureApis":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 522
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result v3

    .line 523
    .local v3, "isOk":Z
    if-eqz v3, :cond_0

    .line 524
    const/4 v1, 0x1

    return v1

    .line 521
    .end local v3    # "isOk":Z
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private isSystemPropEqual(Ljava/lang/String;)Z
    .locals 4
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 158
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "strList":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 160
    .local v1, "prop":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 161
    .local v2, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3
.end method

.method private isVpmNotReady()Z
    .locals 1

    .line 150
    const-string v0, "isVpmHwMiss"

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

    .line 154
    const-string v0, "isSupportScu"

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
    .locals 8
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 330
    aget-object v3, v0, v2

    .line 332
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .local v4, "result":Z
    if-eqz v4, :cond_0

    .line 334
    const/4 v1, 0x1

    return v1

    .line 338
    .end local v4    # "result":Z
    :cond_0
    goto :goto_1

    .line 336
    :catch_0
    move-exception v4

    .line 337
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "ParseEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse mergeMultiConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private takeDirectResult(Ljava/lang/String;Lcom/xiaopeng/lib/feature/ConfigBean;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "configBean"    # Lcom/xiaopeng/lib/feature/ConfigBean;

    .line 465
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->result:Ljava/lang/String;

    .line 466
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mLanguageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "persist.sys.xiaopeng.locVersion"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, "locVersion":Ljava/lang/String;
    const-string v2, "ParseEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mLocalVersions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    const-string v2, ""

    return-object v2

    .line 474
    .end local v1    # "locVersion":Ljava/lang/String;
    :cond_0
    const-string v1, "ALLOW_NULL_TAG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    const-string v1, ""

    return-object v1

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mNotSupport:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 509
    :cond_2
    return-object v0
.end method


# virtual methods
.method isSupportSeatMassage(I)Z
    .locals 3
    .param p1, "SeatId"    # I

    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 203
    return v0

    .line 201
    :pswitch_0
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMSecRowRtMassageFeature()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 199
    :pswitch_1
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMSecRowLtMassageFeature()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 197
    :pswitch_2
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMPMassageFeature()I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 195
    :pswitch_3
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMSMDMassageFeature()I

    move-result v2

    if-ne v2, v1, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isSupportType(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mSupportList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public varargs parse(Ljava/lang/String;Lcom/xiaopeng/lib/feature/ConfigBean;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mConfigBean"    # Lcom/xiaopeng/lib/feature/ConfigBean;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 57
    return-object v0

    .line 60
    :cond_0
    iget v1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->type:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 138
    :pswitch_0
    return-object v0

    .line 136
    :pswitch_1
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getSysPropertyIntEqual(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_2
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getSysPropertyBool(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 132
    :pswitch_3
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isVpmNotReady()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 96
    :pswitch_4
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFutureEqualValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_5
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isSystemPropEqual(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 76
    :pswitch_6
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 70
    :pswitch_7
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCustomerNumbers()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_8
    invoke-direct {p0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isXPUFor28()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 66
    :pswitch_9
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 128
    :pswitch_a
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isSupportSeatMassage(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_b
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_c
    aget-object v0, p3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 124
    :pswitch_d
    aget-object v0, p3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_e
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_f
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_10
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getCarFeatureInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 116
    :pswitch_11
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getFeatureInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 88
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    iget-object v1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_13
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->hasFeatures(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_14
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCfcGreater(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 110
    :pswitch_15
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getReverseFeatureLinkConfig(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 108
    :pswitch_16
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCfcNotEqual(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 106
    :pswitch_17
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCfCContain(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_18
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCfcEqual(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_19
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isBelongInCDUList(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_1a
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->mergeMultiConfig(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 90
    :pswitch_1b
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    iget-object v1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 84
    :pswitch_1c
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getFeatureLinkConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_1d
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->getSystemProperty(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_1e
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x41

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 80
    :pswitch_1f
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 98
    :pswitch_20
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->haveSettingFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_21
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFutureSatisfyValue(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 86
    :pswitch_22
    iget-object v0, p0, Lcom/xiaopeng/lib/feature/ParseEngine;->mICallBack:Lcom/xiaopeng/lib/feature/ICallBack;

    iget-object v1, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/feature/ICallBack;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 92
    :pswitch_23
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isMixCarFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_24
    invoke-direct {p0, p2}, Lcom/xiaopeng/lib/feature/ParseEngine;->isSupportByCarFeatures(Lcom/xiaopeng/lib/feature/ConfigBean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_25
    iget-object v0, p2, Lcom/xiaopeng/lib/feature/ConfigBean;->carFeature:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/feature/ParseEngine;->isCarFeatureOK(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/lib/feature/ParseEngine;->takeDirectResult(Ljava/lang/String;Lcom/xiaopeng/lib/feature/ConfigBean;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

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

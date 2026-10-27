.class public Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;
.super Ljava/lang/Object;
.source "FactoryTestPresenter.java"


# static fields
.field private static final COMPARE_TAG:[[Ljava/lang/String;

.field private static final ROM_SHA1SUM_FILE_FLASH:Ljava/lang/String; = "/mnt/vmap/aftersales/block_sha1sum_after_flash.txt"

.field private static final ROM_SHA1SUM_FILE_FLASH_BY_BUILD:Ljava/lang/String; = "/data/sha1sum_list.txt"

.field private static final TAG:Ljava/lang/String; = "FactoryTestPresenter"

.field private static final TAG_CDU_VERSION:Ljava/lang/String; = "VERSION"


# instance fields
.field private mFactoryTestModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "system.img.p"

    const-string v2, "vendor.img.p"

    const-string v3, "boot.img.p"

    const-string v4, "dsp.img.p"

    const-string v5, "dtbo.img.p"

    const-string v6, "rpm.img.p"

    const-string v7, "tz.img.p"

    const-string v8, "pmic.img.p"

    const-string v9, "hyp.img.p"

    const-string v10, "modem.img.p"

    const-string v11, "aboot.img.p"

    const-string v12, "bluetooth.img.p"

    const-string v13, "keymaster.img.p"

    const-string v14, "cmnlib.img.p"

    const-string v15, "cmnlib64.img.p"

    const-string v16, "vbmeta.img.p"

    const-string v17, "lksecapp.img.p"

    const-string v18, "devcfg.img.p"

    const-string v19, "xbl.img.p"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "system_a"

    const-string v4, "vendor_a"

    const-string v5, "boot_a"

    const-string v6, "dsp_a"

    const-string v7, "dtbo_a"

    const-string v8, "rpm_a"

    const-string v9, "tz_a"

    const-string v10, "pmic_a"

    const-string v11, "hyp_a"

    const-string v12, "modem_a"

    const-string v13, "aboot_a"

    const-string v14, "bluetooth_a"

    const-string v15, "keymaster_a"

    const-string v16, "cmnlib_a"

    const-string v17, "cmnlib64_a"

    const-string v18, "vbmeta_a"

    const-string v19, "lksecapp_a"

    const-string v20, "devcfg_a"

    const-string v21, "xbl_a"

    filled-new-array/range {v3 .. v21}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v3, "system_b"

    const-string v4, "vendor_b"

    const-string v5, "boot_b"

    const-string v6, "dsp_b"

    const-string v7, "dtbo_b"

    const-string v8, "rpm_b"

    const-string v9, "tz_b"

    const-string v10, "pmic_b"

    const-string v11, "hyp_b"

    const-string v12, "modem_b"

    const-string v13, "aboot_b"

    const-string v14, "bluetooth_b"

    const-string v15, "keymaster_b"

    const-string v16, "cmnlib_b"

    const-string v17, "cmnlib64_b"

    const-string v18, "vbmeta_b"

    const-string v19, "lksecapp_b"

    const-string v20, "devcfg_b"

    const-string v21, "xbl_b"

    filled-new-array/range {v3 .. v21}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->mFactoryTestModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/atcommand/ResponseWriter;)V
    .locals 1
    .param p1, "responseWriter"    # Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-direct {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;-><init>(Lcom/xiaopeng/factory/atcommand/ResponseWriter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->mFactoryTestModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    .line 46
    return-void
.end method


# virtual methods
.method public checkRomSha1Sum()Z
    .locals 17

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "res":Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v1, "flashSh1Sum":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v2, "buildSh1Sum":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "/mnt/vmap/aftersales/block_sha1sum_after_flash.txt"

    const-string v4, "\n"

    invoke-static {v3, v4}, Lcom/xiaopeng/factory/utils/FileUtil;->readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "flashValue":Ljava/lang/String;
    const-string v4, "/data/sha1sum_list.txt"

    const-string v5, "\n"

    invoke-static {v4, v5}, Lcom/xiaopeng/factory/utils/FileUtil;->readAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "buildValue":Ljava/lang/String;
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "flashLines":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v6, :cond_2

    aget-object v10, v5, v8

    .line 57
    .local v10, "line":Ljava/lang/String;
    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "items":[Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 59
    array-length v12, v11

    if-le v12, v9, :cond_0

    .line 60
    aget-object v9, v11, v9

    aget-object v12, v11, v7

    invoke-interface {v1, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_0
    array-length v12, v11

    if-ne v12, v9, :cond_1

    .line 62
    const-string v9, "VERSION"

    aget-object v12, v11, v7

    invoke-interface {v1, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "items":[Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 67
    :cond_2
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "buildLines":[Ljava/lang/String;
    array-length v8, v6

    move v10, v7

    :goto_2
    if-ge v10, v8, :cond_5

    aget-object v11, v6, v10

    .line 69
    .local v11, "line":Ljava/lang/String;
    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 70
    .local v12, "items":[Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 71
    array-length v13, v12

    if-le v13, v9, :cond_3

    .line 72
    aget-object v13, v12, v9

    aget-object v14, v12, v7

    invoke-interface {v2, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 73
    :cond_3
    array-length v13, v12

    if-ne v13, v9, :cond_4

    .line 74
    const-string v13, "VERSION"

    aget-object v14, v12, v7

    invoke-interface {v2, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "items":[Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 79
    :cond_5
    move v8, v7

    .local v8, "i":I
    :goto_4
    sget-object v10, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    aget-object v10, v10, v7

    array-length v10, v10

    if-ge v8, v10, :cond_a

    .line 80
    sget-object v10, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    aget-object v10, v10, v7

    aget-object v10, v10, v8

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 81
    .local v10, "build":Ljava/lang/String;
    sget-object v11, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    aget-object v11, v11, v9

    aget-object v11, v11, v8

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 82
    .local v11, "flash_a":Ljava/lang/String;
    sget-object v12, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    aget-object v12, v12, v8

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 83
    .local v12, "flash_b":Ljava/lang/String;
    const-string v14, "FactoryTestPresenter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "i:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", build:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", flash_a:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", flash_b:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_5

    .line 88
    :cond_6
    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 89
    const-string v13, "FactoryTestPresenter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "compare fail: build sha1sum:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    aget-object v7, v15, v7

    aget-object v7, v7, v8

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not equals to rom sha1sum:"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    aget-object v7, v7, v9

    aget-object v7, v7, v8

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    .line 92
    goto :goto_6

    .line 94
    :cond_7
    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 95
    const-string v9, "FactoryTestPresenter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "compare fail: build sha1sum:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    aget-object v7, v14, v7

    aget-object v7, v7, v8

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not equals to rom sha1sum:"

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->COMPARE_TAG:[[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v7, v7, v14

    aget-object v7, v7, v8

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 98
    goto :goto_6

    .line 79
    .end local v10    # "build":Ljava/lang/String;
    .end local v11    # "flash_a":Ljava/lang/String;
    .end local v12    # "flash_b":Ljava/lang/String;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 85
    .restart local v10    # "build":Ljava/lang/String;
    .restart local v11    # "flash_a":Ljava/lang/String;
    .restart local v12    # "flash_b":Ljava/lang/String;
    :cond_9
    :goto_5
    const/4 v0, 0x0

    .line 86
    nop

    .line 101
    .end local v8    # "i":I
    .end local v10    # "build":Ljava/lang/String;
    .end local v11    # "flash_a":Ljava/lang/String;
    .end local v12    # "flash_b":Ljava/lang/String;
    :cond_a
    :goto_6
    const-string v7, "VERSION"

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 102
    .local v7, "buildVersion":Ljava/lang/String;
    const-string v8, "VERSION"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 103
    .local v8, "flashVersion":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 105
    :cond_b
    const-string v9, "FactoryTestPresenter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "compare fail: build version:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " not equals to rom version:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    .line 109
    :cond_c
    return v0
.end method

.method public enterAudioTestMode()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->mFactoryTestModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->enterAudioTestMode()V

    .line 138
    return-void
.end method

.method public enterMcuTestMode()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/McuModel;->setDvTestReq(I)V

    .line 122
    return-void
.end method

.method public enterTboxTestMode()V
    .locals 2

    .line 129
    invoke-static {}, Lcom/xiaopeng/factory/model/car/TboxModel;->getInstance()Lcom/xiaopeng/factory/model/car/TboxModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/TboxModel;->setDvTestReq(I)V

    .line 130
    return-void
.end method

.method public exitAudioTestMode()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->mFactoryTestModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->exitAudioTestMode()V

    .line 142
    return-void
.end method

.method public exitMcuTestMode()V
    .locals 2

    .line 125
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/McuModel;->setDvTestReq(I)V

    .line 126
    return-void
.end method

.method public exitTboxTestMode()V
    .locals 2

    .line 133
    invoke-static {}, Lcom/xiaopeng/factory/model/car/TboxModel;->getInstance()Lcom/xiaopeng/factory/model/car/TboxModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/TboxModel;->setDvTestReq(I)V

    .line 134
    return-void
.end method

.method public getDtsVer()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->mFactoryTestModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->getDtsVer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNewHardwareVersion()Z
    .locals 2

    .line 113
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getHardwareVersionCode()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestMcuCheck()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/FactoryTestPresenter;->mFactoryTestModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->requestMcuCheck()V

    .line 118
    return-void
.end method

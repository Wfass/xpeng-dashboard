.class public Lcom/xiaopeng/commonfunc/utils/OTAServiceHelper;
.super Ljava/lang/Object;
.source "OTAServiceHelper.java"


# static fields
.field public static final AUTHORITY_OTA_SERVICE:Ljava/lang/String; = "com.xiaopeng.ota.OTAService"

.field public static final FACTORY_MODE:I = 0x0

.field public static final NORMAL_MODE:I = 0x2

.field public static final REPAIR_MODE:I = 0x3

.field private static final SUPPORT_SPEED_LIMIT:Z

.field private static final TAG:Ljava/lang/String; = "OTAServiceHelper"

.field public static final TANSPORT_MODE:I = 0x1

.field public static final UNKNOWN_MODE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "SUPPORT_SPEED_LIMIT"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaopeng/commonfunc/utils/OTAServiceHelper;->SUPPORT_SPEED_LIMIT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVcuMode()I
    .locals 7

    .line 25
    const/4 v0, -0x1

    .line 26
    .local v0, "mode":I
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 27
    .local v1, "builder":Landroid/net/Uri$Builder;
    const-string v2, "com.xiaopeng.ota.OTAService"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "getVcuMode"

    .line 28
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 30
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, "data":Ljava/lang/String;
    const-string v3, "OTAServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVcuMode, data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;

    .line 33
    .local v3, "response":Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;
    const-string v4, "OTAServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVcuMode, response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getCode()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_0

    .line 35
    const/4 v4, -0x1

    return v4

    .line 37
    :cond_0
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 38
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getMode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 40
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Lcom/xiaopeng/commonfunc/system/runnable/Sleep;->sleep(J)V

    .line 41
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/xiaopeng/commonfunc/utils/OTAServiceHelper;->reTryGetVcuMode(I)I

    move-result v4

    return v4

    .line 43
    :cond_2
    const-string v4, "OTAServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get Vcu Mode Fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "response":Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;
    :goto_0
    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OTAServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get Vcu Mode Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private static reTryGetVcuMode(I)I
    .locals 8
    .param p0, "reTryCount"    # I

    .line 53
    const/4 v0, -0x1

    const/4 v1, 0x4

    if-le p0, v1, :cond_0

    .line 54
    return v0

    .line 56
    :cond_0
    const/4 v1, -0x1

    .line 57
    .local v1, "mode":I
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 58
    .local v2, "builder":Landroid/net/Uri$Builder;
    const-string v3, "com.xiaopeng.ota.OTAService"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "getVcuMode"

    .line 59
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    .local v3, "data":Ljava/lang/String;
    const-string v4, "OTAServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reTryGetVcuMode, data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;

    .line 64
    .local v4, "response":Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;
    const-string v5, "OTAServiceHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reTryGetVcuMode, response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_1

    .line 66
    return v0

    .line 68
    :cond_1
    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 69
    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_3

    .line 71
    const-wide/16 v5, 0x7d0

    invoke-static {v5, v6}, Lcom/xiaopeng/commonfunc/system/runnable/Sleep;->sleep(J)V

    .line 72
    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/OTAServiceHelper;->reTryGetVcuMode(I)I

    goto :goto_0

    .line 74
    :cond_3
    const-string v0, "OTAServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reTryGetVcuMode Vcu Mode Fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "response":Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;
    :goto_0
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OTAServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reTryGetVcuMode Vcu Mode Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1
.end method

.method private static setReportStatus()V
    .locals 3

    .line 112
    sget-boolean v0, Lcom/xiaopeng/commonfunc/utils/OTAServiceHelper;->SUPPORT_SPEED_LIMIT:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getUploadRepairModeSended()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    const-string v0, "OTAServiceHelper"

    const-string v2, "herz setUploadRepairModeSended "

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->setUploadRepairModeSended(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getRepairModeSended()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string v0, "OTAServiceHelper"

    const-string v2, "herz setRepairModeSended "

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->setRepairModeSended(Ljava/lang/Boolean;)V

    .line 123
    :cond_1
    :goto_0
    return-void
.end method

.method public static setVcuModel(I)Z
    .locals 7
    .param p0, "mode"    # I

    .line 85
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 86
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "com.xiaopeng.ota.OTAService"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "setVcuMode"

    .line 87
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "mode"

    .line 88
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, "data":Ljava/lang/String;
    const-string v3, "OTAServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVcuMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;

    .line 93
    .local v3, "response":Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;
    const-string v4, "OTAServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVcuMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getCode()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_0

    .line 95
    return v1

    .line 97
    :cond_0
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 98
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/OTAServiceHelper;->setReportStatus()V

    .line 99
    const/4 v1, 0x1

    return v1

    .line 101
    :cond_1
    const-string v4, "OTAServiceHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set Vcu Mode Fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return v1

    .line 104
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "response":Lcom/xiaopeng/commonfunc/bean/VcuModeResponse;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OTAServiceHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set Vcu Mode Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

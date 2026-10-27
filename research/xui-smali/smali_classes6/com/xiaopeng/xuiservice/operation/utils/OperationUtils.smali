.class public Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;
.super Ljava/lang/Object;
.source "OperationUtils.java"


# static fields
.field public static final VISIBILITY_WITH_ACCOUNT:I = 0x1

.field public static final VISIBILITY_WITH_DEVICE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugInfoOfResourceType(I)Ljava/lang/String;
    .locals 2
    .param p0, "resourceType"    # I

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->stringOfResourceType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpireDate(Ljava/lang/String;)J
    .locals 7
    .param p0, "extra"    # Ljava/lang/String;

    .line 71
    const-wide/16 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "expire_date"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "expire_date"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 73
    .local v3, "dateStr":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_1

    .line 74
    return-wide v0

    .line 76
    :cond_1
    sget-object v4, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->parse(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 77
    .local v4, "date":Ljava/util/Date;
    if-eqz v4, :cond_2

    .line 78
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v5

    .line 82
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "dateStr":Ljava/lang/String;
    .end local v4    # "date":Ljava/util/Date;
    :cond_2
    goto :goto_1

    .line 80
    :catch_0
    move-exception v2

    .line 83
    :goto_1
    return-wide v0
.end method

.method public static getVersion(Lcom/xiaopeng/xuimanager/operation/OperationResource;)I
    .locals 1
    .param p0, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVersion(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)I
    .locals 1
    .param p0, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getVersion(Ljava/lang/String;)I
    .locals 3
    .param p0, "extraData"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "resource_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 55
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 58
    return v0
.end method

.method public static getVisibility(Lcom/xiaopeng/xuimanager/operation/OperationResource;)I
    .locals 1
    .param p0, "operationResource"    # Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getVisibility(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVisibility(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)I
    .locals 1
    .param p0, "resourceInfo"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/utils/OperationUtils;->getVisibility(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getVisibility(Ljava/lang/String;)I
    .locals 3
    .param p0, "extraData"    # Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "visibility"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 39
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 42
    return v0
.end method

.method public static stringOfResourceType(I)Ljava/lang/String;
    .locals 1
    .param p0, "resourceType"    # I

    .line 87
    sparse-switch p0, :sswitch_data_0

    .line 99
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :sswitch_0
    const-string v0, "COMMON"

    return-object v0

    .line 97
    :sswitch_1
    const-string v0, "SYSCONFIG"

    return-object v0

    .line 89
    :sswitch_2
    const-string v0, "EGG"

    return-object v0

    .line 93
    :sswitch_3
    const-string v0, "XiaoP"

    return-object v0

    .line 91
    :sswitch_4
    const-string v0, "THEME"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x107b24 -> :sswitch_4
        0x107b25 -> :sswitch_3
        0x107b88 -> :sswitch_2
        0x107d18 -> :sswitch_1
        0x107d7c -> :sswitch_0
    .end sparse-switch
.end method

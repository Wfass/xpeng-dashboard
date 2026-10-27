.class public Lcom/xiaopeng/commonfunc/utils/DidHelper;
.super Ljava/lang/Object;
.source "DidHelper.java"


# static fields
.field public static final AUTHORITY_OTA_SERVICE:Ljava/lang/String; = "com.xiaopeng.ota.OTAService"

.field public static final DID_CDU_FAULT_CODE:I = 0x400

.field public static final DID_PART_NUMBER:I = 0xf187

.field public static final ECU_ADDRESS_AMCU:I = 0x2b

.field public static final ECU_ADDRESS_CDU:I = 0x2d

.field public static final ECU_ADDRESS_ICM:I = 0x28

.field public static final ECU_ADDRESS_T4G:I = 0x2c

.field public static final ECU_ADDRESS_TMCU:I = 0x2e

.field public static final ECU_ADDRESS_XPU:I = 0x16

.field private static final TAG:Ljava/lang/String; = "DidHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readDid(II)[B
    .locals 7
    .param p0, "address"    # I
    .param p1, "did"    # I

    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, "res":[B
    new-instance v1, Lcom/xiaopeng/commonfunc/bean/car/DidRequest;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/commonfunc/bean/car/DidRequest;-><init>(II)V

    .line 32
    .local v1, "request":Lcom/xiaopeng/commonfunc/bean/car/DidRequest;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 33
    .local v2, "builder":Landroid/net/Uri$Builder;
    const-string v3, "com.xiaopeng.ota.OTAService"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "readDid"

    .line 34
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "requestJsonContent"

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/lib/apirouter/ApiRouter;->route(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-class v5, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;

    .line 38
    .local v3, "response":Lcom/xiaopeng/commonfunc/bean/car/DidResponse;
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->getCode()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->getAddress()I

    move-result v4

    if-ne v4, p0, :cond_0

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->getDid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 39
    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 41
    :cond_0
    const-string v4, "DidHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read did fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/commonfunc/bean/car/DidResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v3    # "response":Lcom/xiaopeng/commonfunc/bean/car/DidResponse;
    :goto_0
    goto :goto_1

    .line 43
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DidHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read did Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "DidHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDid address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", did: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", res : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteArrayToHexStr([BZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    return-object v0
.end method

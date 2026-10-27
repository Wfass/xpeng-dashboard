.class public Lcom/xiaopeng/commonfunc/utils/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpUtil"

.field public static final URL_GEN_UUID:Ljava/lang/String;

.field private static final URL_UPLOAD_HW_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GEN_UUID"

    .line 20
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->URL_GEN_UUID:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UPLOAD_HW_INFO"

    .line 23
    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->URL_UPLOAD_HW_INFO:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genUuid(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1
    .param p0, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 26
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$HttpUtil$smqW5sQ9kgHg01ZPt143s5WeF5A;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$HttpUtil$smqW5sQ9kgHg01ZPt143s5WeF5A;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "id"    # Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    .line 50
    .local v0, "host":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/xmlconfig/Support$Url;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "hostconfig":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4b5b4a0

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc6b

    if-eq v3, v4, :cond_1

    const/16 v4, 0xcb0

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "eu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "cn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "optional"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    packed-switch v2, :pswitch_data_0

    .end local v1    # "hostconfig":Ljava/lang/String;
    goto :goto_1

    .line 61
    .restart local v1    # "hostconfig":Ljava/lang/String;
    :pswitch_0
    sget-object v2, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST_EU:Ljava/lang/String;

    move-object v0, v2

    .end local v1    # "hostconfig":Ljava/lang/String;
    goto :goto_1

    .line 58
    .restart local v1    # "hostconfig":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    move-object v0, v2

    .line 59
    goto :goto_1

    .line 53
    :pswitch_2
    invoke-static {}, Landroid/car/Car;->isExportVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    sget-object v2, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST_EU:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 66
    .end local v1    # "hostconfig":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_2

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$genUuid$0(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 5
    .param p0, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 29
    .local v1, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v2, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->URL_GEN_UUID:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 30
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->URL_GEN_UUID:Ljava/lang/String;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->URL_GEN_UUID:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    .line 31
    invoke-interface {v2, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 32
    return-void
.end method

.method static synthetic lambda$uploadHwInfo$1(Ljava/util/Map;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 4
    .param p0, "param"    # Ljava/util/Map;
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 37
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 38
    .local v0, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v1, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->URL_UPLOAD_HW_INFO:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 39
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->URL_UPLOAD_HW_INFO:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 41
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->URL_UPLOAD_HW_INFO:Ljava/lang/String;

    .line 42
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    .line 43
    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 44
    return-void
.end method

.method public static uploadHwInfo(Ljava/util/Map;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;",
            ")V"
        }
    .end annotation

    .line 36
    .local p0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$HttpUtil$rA87NcIN_K6sqlJNrTWVEqvxWFs;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$HttpUtil$rA87NcIN_K6sqlJNrTWVEqvxWFs;-><init>(Ljava/util/Map;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

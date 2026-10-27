.class public Lcom/xiaopeng/factory/utils/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpUtil"

.field public static final URL_GEN_UUID:Ljava/lang/String;

.field private static final URL_UPLOAD_HW_INFO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/flow/cv2/vehicle/cdu/conf/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/HttpUtil;->URL_UPLOAD_HW_INFO:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz/v5/vehicle/factoryCduUuidGen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/HttpUtil;->URL_GEN_UUID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genUuid(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1
    .param p0, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 22
    new-instance v0, Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$oU-m6s80LN3Biqpu5ahaTrr53Cw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$oU-m6s80LN3Biqpu5ahaTrr53Cw;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method static synthetic lambda$genUuid$0(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 5
    .param p0, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 25
    .local v1, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v2, Lcom/xiaopeng/factory/utils/HttpUtil;->URL_GEN_UUID:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 26
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/factory/utils/HttpUtil;->URL_GEN_UUID:Ljava/lang/String;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/factory/utils/HttpUtil;->URL_GEN_UUID:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    .line 27
    invoke-interface {v2, p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 28
    return-void
.end method

.method static synthetic lambda$uploadHwInfo$1(Ljava/util/Map;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 4
    .param p0, "param"    # Ljava/util/Map;
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    .line 33
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 34
    .local v0, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v1, Lcom/xiaopeng/factory/utils/HttpUtil;->URL_UPLOAD_HW_INFO:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 35
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/factory/utils/HttpUtil;->URL_UPLOAD_HW_INFO:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 37
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/factory/utils/HttpUtil;->URL_UPLOAD_HW_INFO:Ljava/lang/String;

    .line 38
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    .line 39
    invoke-interface {v1, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 40
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

    .line 32
    .local p0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$Q1MFxB8Vx-6Gqf7nK0bxoFdW53s;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/factory/utils/-$$Lambda$HttpUtil$Q1MFxB8Vx-6Gqf7nK0bxoFdW53s;-><init>(Ljava/util/Map;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

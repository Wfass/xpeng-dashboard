.class public Lapz;
.super Ljava/lang/Object;
.source "BizHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapz$a;
    }
.end annotation


# static fields
.field private static a:Lcom/google/gson/Gson;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lapz;->a:Lcom/google/gson/Gson;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "kMnH679fdCSPPQsa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BizHelper"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sput-object v1, Lapz;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 0

    .line 27
    invoke-static {p0, p1}, Lapz;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lapz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lapz$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapz$a<",
            "Laqg<",
            "Laqh;",
            ">;>;)V"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "targetAppId"

    const-string/jumbo v2, "xp_car_music"

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://xmart.xiaopeng.com/open/oauth2/v3/getQrcode"

    .line 49
    invoke-static {v1, v0, p0}, Lapz;->a(Ljava/lang/String;Ljava/util/Map;Lapz$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lapz$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lapz$a<",
            "Laqg<",
            "Laqf;",
            ">;>;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "xpCode"

    .line 54
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "https://xmart.xiaopeng.com/open/oauth2/v3/getAuthCode"

    .line 55
    invoke-static {p0, v0, p1}, Lapz;->a(Ljava/lang/String;Ljava/util/Map;Lapz$a;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Lapz$a;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-static {p0, p1, p2, p3}, Lapz;->b(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Lapz$a;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Lapz$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lapz$a<",
            "Laqg<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Lapz$1;

    invoke-direct {v0, p0, p1, p2}, Lapz$1;-><init>(Ljava/lang/String;Ljava/util/Map;Lapz$a;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;"
        }
    .end annotation

    .line 132
    invoke-static {}, Lbkn;->a()V

    if-eqz p1, :cond_0

    .line 136
    sget-object v0, Lapz;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "{}"

    .line 143
    :cond_1
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 144
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    const-string/jumbo p1, "xp_car_music"

    .line 145
    invoke-interface {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    const-string p1, "-1"

    .line 146
    invoke-interface {p0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p0

    .line 148
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    return-object p0
.end method

.method private static b(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Lapz$a;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;",
            "Lapz$a<",
            "Laqg<",
            "TT;>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    :try_start_0
    sget-object v1, Lapz;->a:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Lapz$a;->a()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqg;

    if-eqz v1, :cond_2

    .line 101
    iget v2, v1, Laqg;->a:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    iget v2, v1, Laqg;->a:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Lapz$3;

    invoke-direct {v2, p2, v1}, Lapz$3;-><init>(Lapz$a;Laqg;)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    new-instance v2, Lapz$2;

    invoke-direct {v2, p2, v1}, Lapz$2;-><init>(Lapz$a;Laqg;)V

    invoke-static {v2}, Lbql;->g(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 119
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6570\u636edata\u4e3a\u7a7a\u6216Json\u89e3\u6790\u51fa\u9519:body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",url="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "BizHelper"

    invoke-static {p3, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 122
    new-instance p0, Lapz$4;

    invoke-direct {p0, p2, p1}, Lapz$4;-><init>(Lapz$a;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V

    invoke-static {p0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

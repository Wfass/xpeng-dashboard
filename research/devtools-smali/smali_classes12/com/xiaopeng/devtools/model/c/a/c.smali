.class public Lcom/xiaopeng/devtools/model/c/a/c;
.super Ljava/lang/Object;
.source "HWAndSWInfoModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/c/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/c/a/c$a;
    }
.end annotation


# static fields
.field private static final sr:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private ss:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

.field private st:Lcom/xiaopeng/devtools/model/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CAR_CODE"

    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/c;->sr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/c$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/a/c$1;-><init>(Lcom/xiaopeng/devtools/model/c/a/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c;->ss:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/c;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/c;->ss:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/c;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/c;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 213
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/xiaopeng/lib/http/a/a;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/a/a;-><init>()V

    .line 215
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/a/a;->setCode(I)V

    .line 216
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/a/a;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    :try_start_1
    const-string p1, "msg"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/lib/http/a/a;->dD(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception p1

    .line 225
    :goto_0
    goto :goto_1

    .line 222
    :catch_1
    move-exception v0

    .line 223
    const/4 v1, 0x0

    .line 224
    const-string v2, "HWAndSWInfoModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parser the response data. response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    :goto_1
    return-object v1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/c/a/c;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/c;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Lcom/xiaopeng/lib/http/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    const-string v1, "iccid"

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "cduId"

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "partsNo"

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getPartNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v1, "hVer"

    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->hI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v1, "sVer"

    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->getSystemVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "HWAndSWInfoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCarCode param = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 170
    sget-object v2, Lcom/xiaopeng/devtools/model/c/a/c;->sr:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 171
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/devtools/model/c/a/c;->sr:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/model/c/a/c;->sr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/model/c/a/c$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/model/c/a/c$3;-><init>(Lcom/xiaopeng/devtools/model/c/a/c;Lcom/xiaopeng/lib/http/c;)V

    .line 172
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 207
    return-void
.end method


# virtual methods
.method public ca(I)V
    .locals 4

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/model/c/a/c$a;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/c;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/xiaopeng/devtools/model/c/a/c$a;-><init>(Lcom/xiaopeng/devtools/model/c/a/c;IILandroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public cb(I)V
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/model/c/a/c$a;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/c;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/xiaopeng/devtools/model/c/a/c$a;-><init>(Lcom/xiaopeng/devtools/model/c/a/c;IILandroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method public cc(I)V
    .locals 1

    .line 126
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/c$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/model/c/a/c$2;-><init>(Lcom/xiaopeng/devtools/model/c/a/c;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/c;->b(Lcom/xiaopeng/lib/http/c;)V

    .line 137
    return-void
.end method

.method public fO()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->hI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fP()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fQ()Ljava/lang/String;
    .locals 2

    .line 104
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Unknown"

    :cond_0
    return-object v0
.end method

.method public fR()V
    .locals 0

    .line 157
    return-void
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 2

    .line 120
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->ln()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Unknown"

    :cond_0
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 89
    new-instance v0, Lcom/xiaopeng/devtools/model/e/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/devtools/model/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c;->st:Lcom/xiaopeng/devtools/model/e/a;

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/e/a;->onDestroy()V

    .line 296
    return-void
.end method

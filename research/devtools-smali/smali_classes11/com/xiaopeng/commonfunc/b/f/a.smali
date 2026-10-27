.class public Lcom/xiaopeng/commonfunc/b/f/a;
.super Ljava/lang/Object;
.source "CduKeyModel.java"


# static fields
.field private static final od:Ljava/lang/String;

.field private static final oe:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final of:Lcom/xiaopeng/commonfunc/b/e/a;

.field private og:Z

.field private oh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "CHECK_CDU_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/b/f/a;->od:Ljava/lang/String;

    .line 40
    const-string v0, "CHECK_V18_CDU_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/b/f/a;->oe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/b/f/a;->og:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/a;->oh:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/a;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/xiaopeng/commonfunc/b/e/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/b/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/a;->of:Lcom/xiaopeng/commonfunc/b/e/a;

    .line 51
    return-void
.end method


# virtual methods
.method public dX()Z
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/a;->of:Lcom/xiaopeng/commonfunc/b/e/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/e/a;->dW()Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/f/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/g;->ax(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/g;

    move-result-object v1

    const-string v2, "com.xiaopeng.action.CLIENT_SSL_UPDATE"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/utils/g;->dK(Ljava/lang/String;)V

    .line 75
    return v0
.end method

.method public dY()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/a;->of:Lcom/xiaopeng/commonfunc/b/e/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/e/a;->dV()Z

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/f/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/g;->ax(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/g;

    move-result-object v1

    const-string v2, "com.xiaopeng.action.CLIENT_SSL_UPDATE"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/utils/g;->dK(Ljava/lang/String;)V

    .line 82
    return v0
.end method

.method public dZ()Z
    .locals 4

    .line 134
    nop

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    :try_start_0
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 138
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/commonfunc/b/f/a;->od:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 139
    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ea()Z
    .locals 4

    .line 150
    nop

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    :try_start_0
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 154
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/commonfunc/b/f/a;->oe:Ljava/lang/String;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 155
    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 54
    return-void
.end method

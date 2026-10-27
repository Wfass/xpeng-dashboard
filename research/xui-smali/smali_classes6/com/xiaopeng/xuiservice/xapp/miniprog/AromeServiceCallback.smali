.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;
.super Ljava/lang/Object;
.source "AromeServiceCallback.java"

# interfaces
.implements Lcom/alipay/arome/aromecli/AromeServiceTask$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/arome/aromecli/response/AromeResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alipay/arome/aromecli/AromeServiceTask$Callback<",
        "Lcom/alipay/arome/aromecli/response/AromeResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AromeServiceCallback"


# instance fields
.field private mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

.field private mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

.field private miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V
    .locals 0
    .param p1, "param"    # Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
    .param p2, "service"    # Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 31
    .local p0, "this":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;, "Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    .line 33
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 35
    return-void
.end method

.method private getUserInfo(Lcom/alipay/arome/aromecli/response/AromeResponse;)Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;
    .locals 4
    .param p1, "response"    # Lcom/alipay/arome/aromecli/response/AromeResponse;

    .line 91
    .local p0, "this":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;, "Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback<TT;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/alipay/arome/aromecli/response/AromeResponse;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "bodyJSONObject":Lorg/json/JSONObject;
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "dataJSONObject":Ljava/lang/String;
    const-class v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/xapp/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 94
    .end local v0    # "bodyJSONObject":Lorg/json/JSONObject;
    .end local v1    # "dataJSONObject":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AromeServiceCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onCallback(Lcom/alipay/arome/aromecli/response/AromeResponse;)V
    .locals 9
    .param p1, "t"    # Lcom/alipay/arome/aromecli/response/AromeResponse;

    .line 39
    .local p0, "this":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;, "Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback<TT;>;"
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/arome/aromecli/response/AromeResponse;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "tagResponse":Ljava/lang/String;
    :goto_0
    const-string v1, "AromeServiceCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AromeResponse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 42
    return-void

    .line 44
    :cond_1
    if-eqz p1, :cond_6

    .line 45
    new-instance v1, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    invoke-direct {v1}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;-><init>()V

    .line 46
    .local v1, "miniProgramResponse":Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    iget v2, p1, Lcom/alipay/arome/aromecli/response/AromeResponse;->code:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setCode(I)V

    .line 47
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->getMiniAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setMiniAppId(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setParams(Ljava/util/Map;)V

    .line 49
    const-string v2, "AromeServiceCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AromeParam type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    .line 82
    iget-object v2, p1, Lcom/alipay/arome/aromecli/response/AromeResponse;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 63
    :cond_2
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->getUserInfo(Lcom/alipay/arome/aromecli/response/AromeResponse;)Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    if-eqz v2, :cond_5

    .line 65
    const-string v2, ""

    .line 66
    .local v2, "paramKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->getUserKey()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "userKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->getParams()Ljava/util/Map;

    move-result-object v4

    .line 68
    .local v4, "map":Ljava/util/Map;
    const-string v5, "userIdentity"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->isLogin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    const-string v5, "userKey"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Ljava/lang/String;

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 73
    .local v5, "result":Z
    const-string v6, "AromeServiceCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "equal result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "userIdentity"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v5    # "result":Z
    :cond_3
    const-string v5, "AromeServiceCallback"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " userKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " paramKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, v4}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setParams(Ljava/util/Map;)V

    .line 79
    .end local v2    # "paramKey":Ljava/lang/String;
    .end local v3    # "userKey":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;
    goto :goto_1

    .line 53
    :cond_4
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->getUserInfo(Lcom/alipay/arome/aromecli/response/AromeResponse;)Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    .line 54
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    if-eqz v2, :cond_5

    .line 55
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->isLogin()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setLogin(Z)V

    .line 56
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->getUserAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setUserAvatar(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->getUserKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setUserKey(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->getUserNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setUserNick(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->miniUserInfo:Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/MiniUserInfo;->getUserRoute()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->setUserRoute(Ljava/lang/String;)V

    .line 85
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mXMiniProgService:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->mAromeParam:Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;

    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->getType()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->sendMiniProgMessage(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V

    .line 87
    .end local v1    # "miniProgramResponse":Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;
    :cond_6
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    .line 24
    .local p0, "this":Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;, "Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback<TT;>;"
    check-cast p1, Lcom/alipay/arome/aromecli/response/AromeResponse;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeServiceCallback;->onCallback(Lcom/alipay/arome/aromecli/response/AromeResponse;)V

    return-void
.end method

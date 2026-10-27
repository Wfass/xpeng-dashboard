.class public Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;
.super Ljava/lang/Object;
.source "XuiMediaSourceQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$Holder;
    }
.end annotation


# static fields
.field private static final KEY_QUERY_PARAMS_SOURCE_AREA:Ljava/lang/String; = "area"

.field private static final KEY_QUERY_PARAMS_SOURCE_ARTIST_NAME:Ljava/lang/String; = "artist_name"

.field private static final KEY_QUERY_PARAMS_SOURCE_CATEGORY:Ljava/lang/String; = "category"

.field private static final KEY_QUERY_PARAMS_SOURCE_GENRE:Ljava/lang/String; = "genre"

.field private static final KEY_QUERY_PARAMS_SOURCE_SHOW_NAME:Ljava/lang/String; = "show_name"

.field private static final KEY_QUERY_PARAMS_SOURCE_raw:Ljava/lang/String; = "raw"

.field private static final PRE_APP_ID:Ljava/lang/String; = "xp_smartspace"

.field private static final PRE_APP_SECRET:Ljava/lang/String; = "ZSwy9cNN1Y4hJLA1"

.field private static final RELEASE_APP_ID:Ljava/lang/String; = "xp_smartspace"

.field private static final RELEASE_APP_SECRET:Ljava/lang/String; = "f9l2rJgNxdMLJSPk"

.field private static final TAG:Ljava/lang/String; = "XuiMediaSourceQuery"

.field private static final XUI_COMPLEX_SEARCH_URL_TEST:Ljava/lang/String; = "https://10.0.13.28:18553/smartspace/v1/media/voice/complexSearch"

.field private static final XUI_PRE_MEDIA_SOURCE_QUERY:Ljava/lang/String; = "https://xmart.deploy-test.xiaopeng.com/smartspace/v1/media/voice/complexSearch"

.field private static final XUI_RELEASE_MEDIA_SOURCE_QUERY:Ljava/lang/String; = "https://xmart.xiaopeng.com/smartspace/v1/media/voice/complexSearch"


# instance fields
.field private mSourceSecret:Ljava/lang/String;

.field private mSourceURL:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "https://xmart.xiaopeng.com/smartspace/v1/media/voice/complexSearch"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceURL:Ljava/lang/String;

    .line 35
    const-string v0, "f9l2rJgNxdMLJSPk"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceSecret:Ljava/lang/String;

    .line 98
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->init(Landroid/app/Application;)V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;
    .locals 1

    .line 102
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$Holder;->access$000()Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public queryMediaSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;)V
    .locals 4
    .param p1, "showName"    # Ljava/lang/String;
    .param p2, "artistName"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .param p5, "area"    # Ljava/lang/String;
    .param p6, "raw"    # Ljava/lang/String;
    .param p7, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;

    .line 40
    const-string v0, "XuiMediaSourceQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryMediaSource showName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " artistName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " genre: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " raw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    .local v0, "queryParam":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "show_name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "artist_name"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "category"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v1, "genre"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "area"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "raw"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getInstance()Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceURL:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    const-string/jumbo v2, "xp_smartspace"

    .line 56
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->appId(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceSecret:Ljava/lang/String;

    .line 57
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;

    invoke-direct {v2, p0, p7}, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;Lcom/xiaopeng/xuiservice/xapp/video/QueryCallback;)V

    .line 58
    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 74
    return-void
.end method

.method public testEnvironmentChange(I)V
    .locals 3
    .param p1, "type"    # I

    .line 77
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 90
    :pswitch_0
    const-string v0, "https://xmart.xiaopeng.com/smartspace/v1/media/voice/complexSearch"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceURL:Ljava/lang/String;

    .line 91
    const-string v0, "f9l2rJgNxdMLJSPk"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceSecret:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_1
    const-string v0, "https://xmart.deploy-test.xiaopeng.com/smartspace/v1/media/voice/complexSearch"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceURL:Ljava/lang/String;

    .line 86
    const-string v0, "ZSwy9cNN1Y4hJLA1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceSecret:Ljava/lang/String;

    .line 87
    goto :goto_0

    .line 80
    :pswitch_2
    const-string v0, "https://10.0.13.28:18553/smartspace/v1/media/voice/complexSearch"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceURL:Ljava/lang/String;

    .line 81
    const-string v0, "ZSwy9cNN1Y4hJLA1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceSecret:Ljava/lang/String;

    .line 82
    nop

    .line 94
    :goto_0
    const-string v0, "XuiMediaSourceQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testEnvironmentChange mSourceURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mSourceSecret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/video/XuiMediaSourceQuery;->mSourceSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

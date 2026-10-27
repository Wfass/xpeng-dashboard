.class public Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
.super Ljava/lang/Object;
.source "AppResourceResponse.java"


# instance fields
.field private mCode:J

.field private mData:Ljava/lang/String;

.field private mExtra:Ljava/lang/Object;

.field private mMsg:Ljava/lang/String;

.field private mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

.field private mResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 125
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 127
    new-instance p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;-><init>()V

    const-string v1, "request"

    .line 128
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->from(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    const-string v1, "result"

    .line 129
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mResult:Ljava/lang/String;

    const-string v1, "data"

    .line 130
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mData:Ljava/lang/String;

    const-string v1, "code"

    .line 131
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mCode:J

    const-string v1, "msg"

    .line 132
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mMsg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public code()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mCode:J

    return-wide v0
.end method

.method public code(J)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 63
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mCode:J

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public data()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public extra(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mExtra"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mExtra:Ljava/lang/Object;

    return-object p0
.end method

.method public extra()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mExtra:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mExtra:Ljava/lang/Object;

    instance-of v1, v0, Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public msg(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mMsg:Ljava/lang/String;

    return-object p0
.end method

.method public msg()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public request()Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    return-object v0
.end method

.method public request(Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    return-object p0
.end method

.method public result(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mResult:Ljava/lang/String;

    return-object p0
.end method

.method public result()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 110
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "request"

    .line 112
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "result"

    .line 113
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "data"

    .line 114
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "code"

    .line 115
    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mCode:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 116
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

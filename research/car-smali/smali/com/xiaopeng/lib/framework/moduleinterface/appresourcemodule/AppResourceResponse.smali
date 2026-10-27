.class public Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
.super Ljava/lang/Object;
.source "AppResourceResponse.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


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
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
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
    .local v0, "object":Lorg/json/JSONObject;
    new-instance v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;-><init>()V

    .line 128
    .local v1, "response":Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    const-string v2, "request"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;->from(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    .line 129
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mResult:Ljava/lang/String;

    .line 130
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mData:Ljava/lang/String;

    .line 131
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mCode:J

    .line 132
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mMsg:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return-object v1

    .line 137
    .end local v0    # "object":Lorg/json/JSONObject;
    .end local v1    # "response":Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    :cond_0
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
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
    .param p1, "code"    # J
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

    .line 64
    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
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

    .line 59
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
    .param p1, "mExtra"    # Ljava/lang/Object;
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

    .line 82
    return-object p0
.end method

.method public extra()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mExtra:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mExtra:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mExtra:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    return-object v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public msg(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
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

    .line 69
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
    .param p1, "request"    # Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;
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

    .line 49
    return-object p0
.end method

.method public result(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
    .locals 0
    .param p1, "result"    # Ljava/lang/String;
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

    .line 54
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

    .line 112
    .local v0, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "request"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mRequest:Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v1, "result"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "data"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v1, "code"

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mCode:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    const-string v1, "msg"

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;->mMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

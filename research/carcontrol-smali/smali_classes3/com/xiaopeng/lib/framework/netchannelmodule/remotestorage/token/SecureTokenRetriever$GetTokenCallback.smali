.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;
.super Ljava/lang/Object;
.source "SecureTokenRetriever.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetTokenCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$202(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Z)Z

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$302(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;J)J

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request token error! the error message---->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetChannel-SecureTokenRetriever"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->message()Ljava/lang/String;

    move-result-object p1

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v2, 0x301

    invoke-direct {v1, v2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 8

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$202(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Z)Z

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$302(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;J)J

    .line 122
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x301

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const-string v2, "Empty response!"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v2, "code"

    .line 130
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-string p1, "data"

    .line 133
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "securityToken"

    .line 134
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "accessKeySecret"

    .line 135
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "accessKeyId"

    .line 136
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "expiration"

    .line 137
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request token success! the token----> the expiration time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetChannel-SecureTokenRetriever"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    new-instance v7, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Ljava/lang/String;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0, v7}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$502(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$700(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    const-wide/32 v4, 0xa7de9e

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$302(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;J)J

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-direct {v2, v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/SecureTokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    :goto_0
    return-void
.end method

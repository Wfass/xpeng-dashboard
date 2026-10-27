.class Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;
.super Ljava/lang/Object;
.source "TokenRetriever.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetTokenCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$202(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Z)Z

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$302(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;J)J

    .line 120
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

    const-string v1, "NetChannel-TokenRetriever"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->message()Ljava/lang/String;

    move-result-object p1

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v2, 0x301

    invoke-direct {v1, v2, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 6

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$202(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Z)Z

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$302(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;J)J

    .line 141
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x301

    if-eqz v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const-string v2, "Empty response!"

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    return-void

    .line 148
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

    .line 149
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-string p1, "data"

    .line 152
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "security_token"

    .line 153
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_key_secret"

    .line 154
    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_key_id"

    .line 155
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    invoke-direct {v3, v0, v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$502(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$500(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$600(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p1

    const-wide/32 v4, 0xa7de9e

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$302(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;J)J

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$GetTokenCallback;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    new-instance v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    invoke-direct {v2, v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->access$400(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    :goto_0
    return-void
.end method

.class Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;
.super Ljava/lang/Object;
.source "AsrToTextNode.java"

# interfaces
.implements Lcom/xiaopeng/speech/asr/RecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isEnd:Z

.field volatile mState:I

.field resultStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->isEnd:Z

    const-string p1, ""

    .line 209
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    return-void
.end method

.method private replaceBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "\\s*|\t|\r|\n"

    .line 251
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 252
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 253
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$000(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "messageCode"

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method public onExtra(IIILjava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public onResult(Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "text"

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$000(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 217
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->replaceBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 219
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->mState:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    const-string v4, "401"

    const/4 v5, 0x0

    const-string v6, "messageCode"

    const/4 v7, 0x1

    const-string v8, "last"

    if-ne v2, v3, :cond_0

    if-nez p2, :cond_0

    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    invoke-virtual {p1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 222
    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v0, v5}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z

    goto :goto_0

    .line 224
    :cond_0
    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    invoke-virtual {p1, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 227
    invoke-virtual {p1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v0, v5}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->replaceBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    invoke-virtual {p1, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "200"

    .line 232
    invoke-virtual {p1, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    if-eqz p2, :cond_2

    .line 235
    iput-boolean v7, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->isEnd:Z

    const-string p2, ""

    .line 236
    iput-object p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 237
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {p2, v5}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z

    .line 239
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 240
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_3
    :goto_1
    return-void
.end method

.method public onState(II)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$000(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on onState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->mState:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    .line 279
    iget-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->isEnd:Z

    const/4 p2, 0x0

    const-string v0, ""

    if-nez p1, :cond_2

    .line 281
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "text"

    .line 282
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "last"

    const/4 v2, 0x1

    .line 283
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "messageCode"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "401"

    .line 285
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "200"

    .line 287
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {p1, p2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 294
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :goto_1
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    goto :goto_3

    :goto_2
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 297
    throw p1

    .line 299
    :cond_2
    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 300
    iput-boolean p2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->isEnd:Z

    :cond_3
    :goto_3
    return-void
.end method

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
    .locals 1
    .param p1, "this$0"    # Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->isEnd:Z

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    return-void
.end method

.method private replaceBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 249
    const-string v0, ""

    .line 250
    .local v0, "dest":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const-string v1, "\\s*|\t|\r|\n"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 252
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 253
    .local v2, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$000(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v0, "asr_result":Lorg/json/JSONObject;
    const-string v1, "messageCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "asr_result":Lorg/json/JSONObject;
    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 272
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method public onExtra(IIILjava/lang/String;[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "info"    # Ljava/lang/String;
    .param p5, "buffer"    # [B

    .line 307
    return-void
.end method

.method public onResult(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "last"    # Z

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$000(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", last: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, "resultObj":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .local v1, "asr_result":Lorg/json/JSONObject;
    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "text":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->replaceBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 219
    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->mState:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    if-nez p2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    const-string v3, "text"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v3, "last"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 222
    const-string v3, "messageCode"

    const-string v4, "401"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v3, v5}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z

    goto :goto_0

    .line 224
    :cond_0
    iget v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    const-string v3, "text"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v3, "last"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 227
    const-string v3, "messageCode"

    const-string v4, "401"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v3, v5}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z

    goto :goto_0

    .line 230
    :cond_1
    const-string v3, "text"

    invoke-direct {p0, v2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->replaceBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v3, "last"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 232
    const-string v3, "messageCode"

    const-string v4, "200"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :goto_0
    if-eqz p2, :cond_2

    .line 235
    iput-boolean v6, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->isEnd:Z

    .line 236
    const-string v3, ""

    iput-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v3, v5}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v3}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 240
    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v3}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "resultObj":Lorg/json/JSONObject;
    .end local v1    # "asr_result":Lorg/json/JSONObject;
    .end local v2    # "text":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 246
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method public onState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "code"    # I

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v0}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$000(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on onState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iput p1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->mState:I

    .line 278
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 279
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->isEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 281
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 282
    .local v0, "asr_result":Lorg/json/JSONObject;
    const-string v2, "text"

    iget-object v3, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v2, "last"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const-string v2, "messageCode"

    const-string v3, "401"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 287
    :cond_0
    const-string v2, "messageCode"

    const-string v3, "200"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v2}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$200(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;)Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextListener;->onResult(Ljava/lang/String;)V

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->this$0:Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;->access$102(Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "asr_result":Lorg/json/JSONObject;
    goto :goto_1

    .line 296
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 297
    goto :goto_3

    .line 296
    :goto_2
    const-string v1, ""

    iput-object v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 297
    throw v0

    .line 299
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->resultStr:Ljava/lang/String;

    .line 300
    iput-boolean v1, p0, Lcom/xiaopeng/speech/protocol/node/asrToText/AsrToTextNode$1;->isEnd:Z

    .line 303
    :cond_3
    :goto_3
    return-void
.end method

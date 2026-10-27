.class public Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;
.super Ljava/lang/Object;
.source "UserBookValue.java"


# instance fields
.field private keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;-><init>()V

    .line 26
    .local v0, "userBookValue":Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;
    const/4 v1, 0x0

    .line 28
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 29
    const-string v2, "keyword"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "xKeyword":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    iput-object v2, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;->keyword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v2    # "xKeyword":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 34
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;->keyword:Ljava/lang/String;

    return-object v0
.end method

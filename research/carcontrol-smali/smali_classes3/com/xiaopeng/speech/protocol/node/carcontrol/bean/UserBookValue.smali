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
    .locals 2

    .line 25
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;-><init>()V

    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "keyword"

    .line 29
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iput-object p0, v0, Lcom/xiaopeng/speech/protocol/node/carcontrol/bean/UserBookValue;->keyword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
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

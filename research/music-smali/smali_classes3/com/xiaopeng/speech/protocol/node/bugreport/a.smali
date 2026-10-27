.class public Lcom/xiaopeng/speech/protocol/node/bugreport/a;
.super Ljava/lang/Object;
.source "BugReportEndValue.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/bugreport/a;
    .locals 3

    .line 55
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/bugreport/a;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/bugreport/a;-><init>()V

    .line 58
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "suc"

    .line 59
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v2, "reason"

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/node/bugreport/a;->b:Ljava/lang/String;

    .line 64
    :cond_0
    iput-boolean p0, v0, Lcom/xiaopeng/speech/protocol/node/bugreport/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.class public Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;
.super Ljava/lang/Object;
.source "BugReportEndValue.java"


# instance fields
.field private reason:Ljava/lang/String;

.field private suc:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;
    .locals 3

    .line 55
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;-><init>()V

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
    iput-object v1, v0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->reason:Ljava/lang/String;

    .line 64
    :cond_0
    iput-boolean p0, v0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->suc:Z
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


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public isSuc()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->suc:Z

    return v0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->reason:Ljava/lang/String;

    return-void
.end method

.method public setSuc(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->suc:Z

    return-void
.end method

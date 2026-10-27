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
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;-><init>()V

    .line 56
    .local v0, "bugReportEndValue":Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;
    const/4 v1, 0x0

    .line 58
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 59
    const-string v2, "suc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 60
    .local v2, "isSuc":Z
    const-string v3, "reason"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "reason":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    iput-object v3, v0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->reason:Ljava/lang/String;

    .line 64
    :cond_0
    iput-boolean v2, v0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->suc:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v2    # "isSuc":Z
    .end local v3    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    .end local v2    # "e":Ljava/lang/Exception;
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
    .param p1, "reason"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->reason:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setSuc(Z)V
    .locals 0
    .param p1, "suc"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->suc:Z

    .line 28
    return-void
.end method

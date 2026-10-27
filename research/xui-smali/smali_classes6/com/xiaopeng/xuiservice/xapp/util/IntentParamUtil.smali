.class public Lcom/xiaopeng/xuiservice/xapp/util/IntentParamUtil;
.super Ljava/lang/Object;
.source "IntentParamUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentParamUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 16
    if-eqz p0, :cond_0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "IntentParamUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoolean key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 21
    :cond_0
    nop

    .line 22
    :goto_0
    return p2
.end method

.method public static getInt(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 27
    if-eqz p0, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "IntentParamUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInt key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 32
    :cond_0
    nop

    .line 33
    :goto_0
    return p2
.end method

.method public static isTransferEvent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 11
    const-string v0, "transferEvent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/util/IntentParamUtil;->getBoolean(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

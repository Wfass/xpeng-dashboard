.class public Lcom/xiaopeng/devtools/model/c/a/a/a;
.super Ljava/lang/Object;
.source "BatteryModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gh()V
    .locals 2

    .line 23
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryMcuBmsMsgToMcu(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :goto_0
    return-void
.end method

.method public gi()V
    .locals 2

    .line 31
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryMcuBmsMsgToMcu(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :goto_0
    return-void
.end method

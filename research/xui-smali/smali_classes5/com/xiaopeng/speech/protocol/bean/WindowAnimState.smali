.class public Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;
.super Ljava/lang/Object;
.source "WindowAnimState.java"


# annotations
.annotation runtime Lcom/xiaopeng/speech/common/util/DontProguardClass;
.end annotation


# instance fields
.field private from:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "state"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->from:I

    .line 24
    iput p2, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->state:I

    .line 25
    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;-><init>()V

    .line 29
    .local v0, "windowAnimState":Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;
    const/4 v1, 0x0

    .line 31
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 32
    const-string v2, "from"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->from:I

    .line 33
    const-string v2, "state"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
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
.method public getFrom()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->from:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->state:I

    return v0
.end method

.method public setFrom(I)V
    .locals 0
    .param p1, "from"    # I

    .line 51
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->from:I

    .line 52
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 67
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->state:I

    .line 68
    return-void
.end method

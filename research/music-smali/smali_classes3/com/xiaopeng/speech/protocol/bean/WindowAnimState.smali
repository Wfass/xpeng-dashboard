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

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->from:I

    .line 24
    iput p2, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->state:I

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;
    .locals 2

    .line 28
    new-instance v0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;

    invoke-direct {v0}, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;-><init>()V

    .line 31
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "from"

    .line 32
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->from:I

    const-string p0, "state"

    .line 33
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

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

    .line 51
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->from:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/xiaopeng/speech/protocol/bean/WindowAnimState;->state:I

    return-void
.end method

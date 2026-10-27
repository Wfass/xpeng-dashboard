.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;
.super Ljava/lang/Object;
.source "AromeParam.java"


# instance fields
.field private mParams:Ljava/util/Map;

.field private miniAppId:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMiniAppId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->miniAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->mParams:Ljava/util/Map;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->type:I

    return v0
.end method

.method public setMiniAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "miniAppId"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->miniAppId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 0
    .param p1, "params"    # Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->mParams:Ljava/util/Map;

    .line 21
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 36
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/AromeParam;->type:I

    .line 37
    return-void
.end method

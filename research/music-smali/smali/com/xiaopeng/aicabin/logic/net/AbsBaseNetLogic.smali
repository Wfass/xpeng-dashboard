.class public Lcom/xiaopeng/aicabin/logic/net/AbsBaseNetLogic;
.super Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;
.source "AbsBaseNetLogic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/net/http/BaseHttpLogic;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestInfo()Lcom/xiaopeng/aicabin/logic/net/http/HttpRequestInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

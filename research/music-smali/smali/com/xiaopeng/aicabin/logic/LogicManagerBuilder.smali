.class public Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;
.super Ljava/lang/Object;
.source "LogicManagerBuilder.java"


# static fields
.field private static volatile instance:Lcom/xiaopeng/aicabin/logic/a;


# instance fields
.field private mCallback:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

.field private mLogicName:Ljava/lang/String;

.field private mParam:Lcom/xiaopeng/aicabin/DataReq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/xiaopeng/aicabin/DataReq;->newBuilder()Lcom/xiaopeng/aicabin/DataReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mParam:Lcom/xiaopeng/aicabin/DataReq;

    .line 8
    invoke-static {}, Lcom/xiaopeng/aicabin/DataReq;->newBuilder()Lcom/xiaopeng/aicabin/DataReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mParam:Lcom/xiaopeng/aicabin/DataReq;

    return-void
.end method

.method public static newBuilder()Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;

    invoke-direct {v0}, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public buildAsync()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mLogicName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mParam:Lcom/xiaopeng/aicabin/DataReq;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mCallback:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/aicabin/logic/LogicManager;->exeAsync(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildSync()Lcom/xiaopeng/aicabin/DataResp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mLogicName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mParam:Lcom/xiaopeng/aicabin/DataReq;

    invoke-static {v0, v1}, Lcom/xiaopeng/aicabin/logic/LogicManager;->exeSync(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v0

    return-object v0
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mParam:Lcom/xiaopeng/aicabin/DataReq;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/aicabin/DataReq;->putVal(Ljava/lang/String;Ljava/lang/Object;)Lcom/xiaopeng/aicabin/DataReq;

    return-object p0
.end method

.method public setCallback(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mCallback:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    return-object p0
.end method

.method public setDebug(Z)Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setLogic(Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->mLogicName:Ljava/lang/String;

    return-object p0
.end method

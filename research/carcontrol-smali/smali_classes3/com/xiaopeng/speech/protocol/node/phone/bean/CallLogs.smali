.class public Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;
.super Ljava/lang/Object;
.source "CallLogs.java"


# instance fields
.field private callCount:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallCount()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->callCount:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setCallCount(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->callCount:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/phone/bean/CallLogs;->time:Ljava/lang/String;

    return-void
.end method

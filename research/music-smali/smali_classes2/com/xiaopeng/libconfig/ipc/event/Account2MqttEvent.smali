.class public Lcom/xiaopeng/libconfig/ipc/event/Account2MqttEvent;
.super Ljava/lang/Object;
.source "Account2MqttEvent.java"


# instance fields
.field private msgType:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2MqttEvent;->msgType:I

    return-void
.end method


# virtual methods
.method public getMsgType()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2MqttEvent;->msgType:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2MqttEvent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgType(I)V
    .locals 0

    .line 21
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2MqttEvent;->msgType:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2MqttEvent;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account2MqttEvent{msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2MqttEvent;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2MqttEvent;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

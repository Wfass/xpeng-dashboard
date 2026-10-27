.class public Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesCmd;
.super Ljava/lang/Object;
.source "MqttAfterSalesCmd.java"


# instance fields
.field private cmd_param:Ljava/lang/String;

.field private cmd_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmd_param()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesCmd;->cmd_param:Ljava/lang/String;

    return-object v0
.end method

.method public getCmd_type()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesCmd;->cmd_type:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd_param(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesCmd;->cmd_param:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setCmd_type(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesCmd;->cmd_type:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttAfterSalesCmd{cmd_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesCmd;->cmd_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cmd_param=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesCmd;->cmd_param:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

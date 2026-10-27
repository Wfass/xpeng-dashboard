.class public Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;
.super Ljava/lang/Object;
.source "MqttAfterSalesResult.java"


# static fields
.field public static final OPERATION_FAIL:I = 0x2

.field public static final OPERATION_FAIL_UPGRADE_LOGIC_TREE:I = 0xa

.field public static final OPERATION_FAIL_UPLOAD_TO_OSS:I = 0x8

.field public static final OPERATION_FAIL_VIN_MISMATCH:I = 0x9

.field public static final OPERATION_FIND_CMD_TYPE_FAIL:I = 0x7

.field public static final OPERATION_LAST_DIAGNOSIS_NO_FINISH:I = 0xd

.field public static final OPERATION_LOGICTREE_INIT_FAIL:I = 0xe

.field public static final OPERATION_LOGIC_MSGID_MISMATCH:I = 0xb

.field public static final OPERATION_NEEDAUTHMODE:I = 0x4

.field public static final OPERATION_NOTUNDERPLEVEL:I = 0x5

.field public static final OPERATION_NO_SUCH_LOGIC_TREE:I = 0xc

.field public static final OPERATION_SUCCESS:I = 0x1

.field public static final OPERATION_TIMEOUT:I = 0x6

.field public static final OPERATION_UNSUPPORTED:I = 0x3


# instance fields
.field private cmd_result:I

.field private cmd_result_file:Ljava/lang/String;

.field private cmd_result_info:Ljava/lang/String;

.field private cmd_result_string:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result:I

    .line 27
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_file:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_string:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_info:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getCmd_result()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result:I

    return v0
.end method

.method public getCmd_result_file()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_file:Ljava/lang/String;

    return-object v0
.end method

.method public getCmd_result_info()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_info:Ljava/lang/String;

    return-object v0
.end method

.method public getCmd_result_string()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_string:Ljava/lang/String;

    return-object v0
.end method

.method public setCmd_result(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result:I

    .line 38
    return-void
.end method

.method public setCmd_result_file(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_file:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setCmd_result_info(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_info:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCmd_result_string(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_string:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttAfterSalesResult{cmd_result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmd_result_file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cmd_result_string=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_string:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cmd_result_info=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/MqttAfterSalesResult;->cmd_result_info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;
.super Ljava/lang/Object;
.source "SmartSceneBi.java"


# static fields
.field private static final BUTTON_ID:Ljava/lang/String; = "B010"

.field private static final TAG:Ljava/lang/String; = "SmartSceneBi"


# instance fields
.field private final KEY_END_TIME:Ljava/lang/String;

.field private final KEY_NAME:Ljava/lang/String;

.field private final KEY_PARAMS:Ljava/lang/String;

.field private final KEY_START_TIME:Ljava/lang/String;

.field private final KEY_TRIGGER:Ljava/lang/String;

.field private final KEY_TYPE:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private params:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private trigger:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "name"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "type"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_TYPE:Ljava/lang/String;

    .line 25
    const-string v0, "startTime"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_START_TIME:Ljava/lang/String;

    .line 26
    const-string v0, "endTime"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_END_TIME:Ljava/lang/String;

    .line 27
    const-string v0, "trigger"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_TRIGGER:Ljava/lang/String;

    .line 28
    const-string v0, "params"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_PARAMS:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "startTime"    # Ljava/lang/String;
    .param p4, "endTime"    # Ljava/lang/String;
    .param p5, "trigger"    # Ljava/lang/String;
    .param p6, "params"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "name"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "type"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_TYPE:Ljava/lang/String;

    .line 25
    const-string v0, "startTime"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_START_TIME:Ljava/lang/String;

    .line 26
    const-string v0, "endTime"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_END_TIME:Ljava/lang/String;

    .line 27
    const-string v0, "trigger"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_TRIGGER:Ljava/lang/String;

    .line 28
    const-string v0, "params"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->KEY_PARAMS:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->name:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->type:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->startTime:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->endTime:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->trigger:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->params:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public sendBiLog()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 82
    :cond_0
    const-string v0, "P10141"

    const-string v1, "B010"

    invoke-static {v0, v1}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    .line 83
    .local v0, "bilog":Lcom/xiaopeng/biutil/BiLog;
    const-string v1, "name"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "type"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "startTime"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "endTime"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "trigger"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->trigger:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "params"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->params:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "SmartSceneBi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBiLog,name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->startTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->endTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",trigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->trigger:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->params:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 93
    return-void

    .line 79
    .end local v0    # "bilog":Lcom/xiaopeng/biutil/BiLog;
    :cond_1
    :goto_0
    const-string v0, "SmartSceneBi"

    const-string v1, "sendBiLog,name or type null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->endTime:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->params:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->startTime:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTrigger(Ljava/lang/String;)V
    .locals 0
    .param p1, "trigger"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->trigger:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/innerutils/datalog/SmartSceneBi;->type:Ljava/lang/String;

    .line 59
    return-void
.end method

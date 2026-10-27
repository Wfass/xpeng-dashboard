.class public Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;
.super Ljava/lang/Object;
.source "MqttMsgBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONTROL_MSG:I = 0x2

.field public static final HEART_BEAT_MSG:I = 0x4

.field public static final OPERATION_FEEDBACK_MSG:I = 0x1

.field public static final SERVER_MSG:I = 0x3

.field public static final UNREAD_MSG:I


# instance fields
.field private msg_content:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private msg_id:Ljava/lang/String;

.field private msg_ref:Ljava/lang/String;

.field private msg_type:I

.field private service_type:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->service_type:I

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x14

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v3

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->service_type:I

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x14

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v3

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsgContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_content:Ljava/lang/Object;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgRef()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_ref:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_type:I

    return v0
.end method

.method public getServiceType()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->service_type:I

    return v0
.end method

.method public setMsgContent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_content:Ljava/lang/Object;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_id:Ljava/lang/String;

    return-void
.end method

.method public setMsgRef(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_ref:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_type:I

    return-void
.end method

.method public setServiceType(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->service_type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttMsgBase{msg_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msg_ref=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_ref:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", msg_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", service_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->service_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg_content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/libconfig/ipc/bean/MqttMsgBase;->msg_content:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

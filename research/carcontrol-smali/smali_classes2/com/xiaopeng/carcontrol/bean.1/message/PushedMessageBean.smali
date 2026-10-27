.class public Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;
.super Ljava/lang/Object;
.source "PushedMessageBean.java"


# instance fields
.field private bizType:I

.field private content:Ljava/lang/String;

.field private messageId:J

.field private messageType:I

.field private priority:I

.field private scene:I

.field private ts:J

.field private type:I

.field private uid:J

.field private validEndTs:J

.field private validStartTs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->bizType:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->messageId:J

    return-wide v0
.end method

.method public getMessageType()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->messageType:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->priority:I

    return v0
.end method

.method public getScene()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->scene:I

    return v0
.end method

.method public getTs()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->ts:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->type:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->uid:J

    return-wide v0
.end method

.method public getValidEndTs()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->validEndTs:J

    return-wide v0
.end method

.method public getValidStartTs()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->validStartTs:J

    return-wide v0
.end method

.method public setBizType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bizType"
        }
    .end annotation

    .line 23
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->bizType:I

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setMessageId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageId"
        }
    .end annotation

    .line 39
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->messageId:J

    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .line 47
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->messageType:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    .line 55
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->priority:I

    return-void
.end method

.method public setScene(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    .line 63
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->scene:I

    return-void
.end method

.method public setTs(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ts"
        }
    .end annotation

    .line 71
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->ts:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->type:I

    return-void
.end method

.method public setUid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 87
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->uid:J

    return-void
.end method

.method public setValidEndTs(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validEndTs"
        }
    .end annotation

    .line 95
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->validEndTs:J

    return-void
.end method

.method public setValidStartTs(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "validStartTs"
        }
    .end annotation

    .line 103
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/message/PushedMessageBean;->validStartTs:J

    return-void
.end method

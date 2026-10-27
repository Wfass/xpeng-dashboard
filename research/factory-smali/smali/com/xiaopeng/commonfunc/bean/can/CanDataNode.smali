.class public Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;
.super Ljava/lang/Object;
.source "CanDataNode.java"


# instance fields
.field private final data:[B

.field private final dataLength:I

.field private isDataNormal:Z

.field private isParsed:Z

.field private isWithTriggerEvent:Z

.field private final mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private parsingString:Ljava/lang/String;

.field private final queque:I

.field private triggerEvent:Ljava/lang/String;

.field private triggerFlag:I

.field private final type:[B


# direct methods
.method public constructor <init>([BI[BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "dataLength"    # I
    .param p3, "type"    # [B
    .param p4, "queque"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->data:[B

    .line 20
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->dataLength:I

    .line 21
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->type:[B

    .line 22
    iput p4, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->queque:I

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isWithTriggerEvent:Z

    .line 25
    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->triggerFlag:I

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isDataNormal:Z

    .line 27
    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isParsed:Z

    .line 28
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->data:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->dataLength:I

    return v0
.end method

.method public getParsingString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->parsingString:Ljava/lang/String;

    return-object v0
.end method

.method public getQueque()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->queque:I

    return v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->triggerEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerFlag()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->triggerFlag:I

    return v0
.end method

.method public getType()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->type:[B

    return-object v0
.end method

.method public isDataNormal()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isDataNormal:Z

    return v0
.end method

.method public isParsed()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isParsed:Z

    return v0
.end method

.method public isWithTriggerEvent()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isWithTriggerEvent:Z

    return v0
.end method

.method public lockData()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 32
    return-void
.end method

.method public setDataNormal(Z)V
    .locals 0
    .param p1, "dataNormal"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isDataNormal:Z

    .line 60
    return-void
.end method

.method public setParsed(Z)V
    .locals 0
    .param p1, "parsed"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isParsed:Z

    .line 52
    return-void
.end method

.method public setParsingString(Ljava/lang/String;)V
    .locals 0
    .param p1, "parsingString"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->parsingString:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTriggerEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "triggerEvent"    # Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->triggerEvent:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setTriggerFlag(I)V
    .locals 0
    .param p1, "triggerFlag"    # I

    .line 43
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->triggerFlag:I

    .line 44
    return-void
.end method

.method public setWithTriggerEvent(Z)V
    .locals 0
    .param p1, "withTriggerEvent"    # Z

    .line 67
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->isWithTriggerEvent:Z

    .line 68
    return-void
.end method

.method public unlockData()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/can/CanDataNode;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 36
    return-void
.end method

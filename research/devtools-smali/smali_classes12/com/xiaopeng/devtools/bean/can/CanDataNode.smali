.class public Lcom/xiaopeng/devtools/bean/can/CanDataNode;
.super Ljava/lang/Object;
.source "CanDataNode.java"


# instance fields
.field private data:[B

.field private dataLength:I

.field private isDataNormal:Z

.field private isParsed:Z

.field private isWithTriggerEvent:Z

.field private mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private parsingString:Ljava/lang/String;

.field private queque:I

.field private triggerEvent:Ljava/lang/String;

.field private triggerFlag:I

.field private type:[B


# direct methods
.method public constructor <init>([BI[BI)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->data:[B

    .line 19
    iput p2, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->dataLength:I

    .line 20
    iput-object p3, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->type:[B

    .line 21
    iput p4, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->queque:I

    .line 22
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 23
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isWithTriggerEvent:Z

    .line 24
    iput p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->triggerFlag:I

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isDataNormal:Z

    .line 26
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isParsed:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->data:[B

    return-object v0
.end method

.method public getDataLength()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->dataLength:I

    return v0
.end method

.method public getParsingString()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->parsingString:Ljava/lang/String;

    return-object v0
.end method

.method public getQueque()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->queque:I

    return v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->triggerEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerFlag()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->triggerFlag:I

    return v0
.end method

.method public getType()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->type:[B

    return-object v0
.end method

.method public isDataNormal()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isDataNormal:Z

    return v0
.end method

.method public isParsed()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isParsed:Z

    return v0
.end method

.method public isWithTriggerEvent()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isWithTriggerEvent:Z

    return v0
.end method

.method public lockData()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 31
    return-void
.end method

.method public setDataNormal(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isDataNormal:Z

    .line 59
    return-void
.end method

.method public setParsed(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isParsed:Z

    .line 51
    return-void
.end method

.method public setParsingString(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->parsingString:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setTriggerEvent(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->triggerEvent:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTriggerFlag(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->triggerFlag:I

    .line 43
    return-void
.end method

.method public setWithTriggerEvent(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isWithTriggerEvent:Z

    .line 67
    return-void
.end method

.method public unlockData()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->mReentrantLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    return-void
.end method

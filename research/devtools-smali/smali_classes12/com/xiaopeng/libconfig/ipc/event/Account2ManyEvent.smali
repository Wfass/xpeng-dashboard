.class public Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;
.super Ljava/lang/Object;
.source "Account2ManyEvent.java"


# static fields
.field public static final CODE_SHOW_BIG_WINDOW:I = 0x1

.field public static final TYPE_CHANGE_ACCOUNT:I = 0x2

.field public static final TYPE_ONLINE_ACCOUNT:I = 0x1


# instance fields
.field public code:I

.field public msgType:I

.field public msgValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->code:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->msgType:I

    return v0
.end method

.method public getMsgValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->msgValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->code:I

    .line 37
    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->msgType:I

    .line 21
    return-void
.end method

.method public setMsgValue(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->msgValue:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account2ManyEvent{msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msgValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->msgValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/event/Account2ManyEvent;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

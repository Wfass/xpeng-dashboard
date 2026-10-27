.class public Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;
.super Ljava/lang/Object;
.source "CarControlEvent.java"


# static fields
.field public static final CODE_SHOW_BIG_WINDOW:I = 0x1

.field public static final TYPE_CANCEL_MOVE_SEAT:I = 0x3

.field public static final TYPE_CANCEL_PREPARE_TO_SAVE_SEAT_INTO:I = 0x8

.field public static final TYPE_GET_ONLINE_ACCOUNT:I = 0x4

.field public static final TYPE_PREPARE_TO_SAVE_SEAT_INTO:I = 0x7

.field public static final TYPE_SEAT_CHANGE:I = 0x1

.field public static final TYPE_SEAT_MOVE_STOP:I = 0x6

.field public static final TYPE_SEAT_NO_CHANGE:I = 0x2

.field public static final TYPE_START_TO_SAVE_SEAT_INFO:I = 0x9

.field public static final TYPE_SWITCH_TEMP:I = 0x5


# instance fields
.field private msgCode:I

.field private msgType:I

.field private msgValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgType:I

    .line 30
    iput p2, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgCode:I

    return-void
.end method


# virtual methods
.method public getMsgCode()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgCode:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgType:I

    return v0
.end method

.method public getMsgValue()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgValue:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgCode(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgCode:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgType:I

    return-void
.end method

.method public setMsgValue(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarControlEvent{msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/libconfig/ipc/event/CarControlEvent;->msgValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;
.super Ljava/lang/Object;
.source "WifiStateMacEvent.java"


# instance fields
.field private mac:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->state:I

    .line 15
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->mac:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->state:I

    .line 20
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->mac:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->state:I

    return v0
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->mac:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->state:I

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiStateMacEvent{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mac=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiStateMacEvent;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

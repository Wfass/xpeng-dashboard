.class public Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;
.super Ljava/lang/Object;
.source "WifiNameSSEvent.java"


# instance fields
.field private ip:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private speed:Ljava/lang/String;

.field private strength:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    .line 17
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    .line 18
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    .line 19
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public getStrength()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setStrength(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNameSSEvent{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", strength=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", speed=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

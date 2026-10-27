.class public Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;
.super Ljava/lang/Object;
.source "WifiNameSSEvent.java"


# instance fields
.field private ip:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private speed:Ljava/lang/String;

.field private strength:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const v0, 0x7f1002d0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    return-object v0
.end method

.method public getStrength()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setStrength(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiNameSSEvent{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", strength=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->strength:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", speed=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->speed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/bean/event/signal/WifiNameSSEvent;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

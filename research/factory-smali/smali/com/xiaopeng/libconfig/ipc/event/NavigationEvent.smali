.class public Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;
.super Ljava/lang/Object;
.source "NavigationEvent.java"


# instance fields
.field private index:I

.field private state:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;->index:I

    return v0
.end method

.method public getState()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;->state:Z

    return v0
.end method

.method public setIndex(I)Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;
    .locals 0
    .param p1, "index"    # I

    .line 20
    iput p1, p0, Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;->index:I

    .line 21
    return-object p0
.end method

.method public setState(Z)Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;
    .locals 0
    .param p1, "state"    # Z

    .line 16
    iput-boolean p1, p0, Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;->state:Z

    .line 17
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"state\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;->state:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\"index\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/libconfig/ipc/event/NavigationEvent;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

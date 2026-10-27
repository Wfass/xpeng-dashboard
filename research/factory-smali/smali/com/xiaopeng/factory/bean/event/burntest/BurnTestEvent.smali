.class public Lcom/xiaopeng/factory/bean/event/burntest/BurnTestEvent;
.super Ljava/lang/Object;
.source "BurnTestEvent.java"


# instance fields
.field public position:I

.field public testPass:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "testPass"    # Z

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/xiaopeng/factory/bean/event/burntest/BurnTestEvent;->position:I

    .line 10
    iput-boolean p2, p0, Lcom/xiaopeng/factory/bean/event/burntest/BurnTestEvent;->testPass:Z

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BurnTestEvent{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/factory/bean/event/burntest/BurnTestEvent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", testPass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/factory/bean/event/burntest/BurnTestEvent;->testPass:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

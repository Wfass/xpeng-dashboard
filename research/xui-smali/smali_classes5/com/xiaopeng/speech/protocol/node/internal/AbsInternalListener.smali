.class public abstract Lcom/xiaopeng/speech/protocol/node/internal/AbsInternalListener;
.super Ljava/lang/Object;
.source "AbsInternalListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/internal/InternalListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDmOutput(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .line 11
    return-void
.end method

.method public onInputDmData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 15
    return-void
.end method

.method public onLocalWakeupResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "word"    # Ljava/lang/String;

    .line 20
    return-void
.end method

.method public onLocalWakeupResultWithChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;

    .line 25
    return-void
.end method

.method public onRebootComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 35
    return-void
.end method

.method public onResourceUpdateFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 30
    return-void
.end method

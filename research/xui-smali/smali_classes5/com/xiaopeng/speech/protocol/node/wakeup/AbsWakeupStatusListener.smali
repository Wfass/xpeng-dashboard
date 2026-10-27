.class public abstract Lcom/xiaopeng/speech/protocol/node/wakeup/AbsWakeupStatusListener;
.super Ljava/lang/Object;
.source "AbsWakeupStatusListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/wakeup/WakeupStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWakeupStatusChanged(IILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "type"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 9
    return-void
.end method

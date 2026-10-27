.class public Lcom/xiaopeng/factory/bean/event/signal/WifiStateMacEvent;
.super Ljava/lang/Object;
.source "WifiStateMacEvent.java"


# instance fields
.field private mac:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "mac"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/xiaopeng/factory/bean/event/signal/WifiStateMacEvent;->state:I

    .line 13
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/event/signal/WifiStateMacEvent;->mac:Ljava/lang/String;

    .line 14
    return-void
.end method

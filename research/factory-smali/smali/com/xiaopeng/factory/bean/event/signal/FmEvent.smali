.class public Lcom/xiaopeng/factory/bean/event/signal/FmEvent;
.super Ljava/lang/Object;
.source "FmEvent.java"


# instance fields
.field private mFmFrequency:Ljava/lang/String;

.field private mFmState:Ljava/lang/String;

.field private mFmStrength:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fmState"    # Ljava/lang/String;
    .param p2, "fmFrequency"    # Ljava/lang/String;
    .param p3, "fmStrength"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/factory/bean/event/signal/FmEvent;->mFmState:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/event/signal/FmEvent;->mFmFrequency:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/xiaopeng/factory/bean/event/signal/FmEvent;->mFmStrength:Ljava/lang/String;

    .line 16
    return-void
.end method

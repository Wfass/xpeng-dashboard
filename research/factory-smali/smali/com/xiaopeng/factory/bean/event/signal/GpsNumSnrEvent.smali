.class public Lcom/xiaopeng/factory/bean/event/signal/GpsNumSnrEvent;
.super Ljava/lang/Object;
.source "GpsNumSnrEvent.java"


# instance fields
.field private count:I

.field private snrString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "snrString"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/xiaopeng/factory/bean/event/signal/GpsNumSnrEvent;->count:I

    .line 13
    iput-object p2, p0, Lcom/xiaopeng/factory/bean/event/signal/GpsNumSnrEvent;->snrString:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/xiaopeng/factory/bean/event/signal/GpsNumSnrEvent;->count:I

    return v0
.end method

.method public getSnrString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/factory/bean/event/signal/GpsNumSnrEvent;->snrString:Ljava/lang/String;

    return-object v0
.end method

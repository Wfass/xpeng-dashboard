.class public Lcom/xiaopeng/devtools/bean/event/signal/GpsSpeedEvent;
.super Ljava/lang/Object;
.source "GpsSpeedEvent.java"


# instance fields
.field private mGpsSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/event/signal/GpsSpeedEvent;->mGpsSpeed:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getGpsSpeed()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/event/signal/GpsSpeedEvent;->mGpsSpeed:Ljava/lang/String;

    return-object v0
.end method

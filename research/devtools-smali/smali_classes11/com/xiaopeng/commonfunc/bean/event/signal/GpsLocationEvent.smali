.class public Lcom/xiaopeng/commonfunc/bean/event/signal/GpsLocationEvent;
.super Ljava/lang/Object;
.source "GpsLocationEvent.java"


# instance fields
.field private final locationTime:Ljava/lang/String;

.field private final mLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/GpsLocationEvent;->locationTime:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/GpsLocationEvent;->mLocation:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/GpsLocationEvent;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationTime()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/signal/GpsLocationEvent;->locationTime:Ljava/lang/String;

    return-object v0
.end method

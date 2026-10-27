.class public Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;
.super Ljava/lang/Object;
.source "LocationChangedEvent.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationEvent;


# instance fields
.field private mLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public location(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;
    .locals 0
    .param p1, "location"    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 13
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;->mLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    .line 14
    return-object p0
.end method

.method public location()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/LocationChangedEvent;->mLocation:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    return-object v0
.end method

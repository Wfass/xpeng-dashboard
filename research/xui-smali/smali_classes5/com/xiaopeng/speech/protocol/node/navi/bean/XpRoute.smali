.class public Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;
.super Ljava/lang/Object;
.source "XpRoute.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/navi/bean/XpBaseContent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/protocol/node/navi/bean/XpBaseContent<",
        "Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;",
        ">;"
    }
.end annotation


# instance fields
.field private isChargingRoute:Z

.field private routeTypeName:Ljava/lang/String;

.field private routeTypeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;->isChargingRoute:Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;)I
    .locals 1
    .param p1, "o"    # Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 4
    check-cast p1, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;->compareTo(Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;)I

    move-result p1

    return p1
.end method

.method public getRouteTypeName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;->routeTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteTypeNo()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;->routeTypeNo:Ljava/lang/String;

    return-object v0
.end method

.method public isChargingRoute()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;->isChargingRoute:Z

    return v0
.end method

.method public setChargingRoute(Z)V
    .locals 0
    .param p1, "chargingRoute"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;->isChargingRoute:Z

    .line 48
    return-void
.end method

.method public setRouteTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "routeTypeName"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;->routeTypeName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setRouteTypeNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "routeTypeNo"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/XpRoute;->routeTypeNo:Ljava/lang/String;

    .line 40
    return-void
.end method

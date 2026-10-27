.class Lcom/xiaopeng/logictree/handler/e$2;
.super Ljava/lang/Object;
.source "GpsInfo.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/logictree/handler/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Yt:Lcom/xiaopeng/logictree/handler/e;


# direct methods
.method constructor <init>(Lcom/xiaopeng/logictree/handler/e;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e$2;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e$2;->Yt:Lcom/xiaopeng/logictree/handler/e;

    iget-object v0, v0, Lcom/xiaopeng/logictree/handler/e;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e$2;->Yt:Lcom/xiaopeng/logictree/handler/e;

    invoke-static {p1}, Lcom/xiaopeng/logictree/handler/e;->h(Lcom/xiaopeng/logictree/handler/e;)I

    .line 100
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 115
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 110
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 105
    return-void
.end method

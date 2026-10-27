.class public Lcom/amap/api/services/geocoder/d;
.super Ljava/lang/Object;
.source "RegeocodeResult.java"


# instance fields
.field private el:Lcom/amap/api/services/geocoder/c;

.field private gU:Lcom/amap/api/services/geocoder/RegeocodeAddress;


# direct methods
.method public constructor <init>(Lcom/amap/api/services/geocoder/c;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amap/api/services/geocoder/d;->el:Lcom/amap/api/services/geocoder/c;

    .line 21
    iput-object p2, p0, Lcom/amap/api/services/geocoder/d;->gU:Lcom/amap/api/services/geocoder/RegeocodeAddress;

    .line 22
    return-void
.end method


# virtual methods
.method public bM()Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amap/api/services/geocoder/d;->gU:Lcom/amap/api/services/geocoder/RegeocodeAddress;

    return-object v0
.end method

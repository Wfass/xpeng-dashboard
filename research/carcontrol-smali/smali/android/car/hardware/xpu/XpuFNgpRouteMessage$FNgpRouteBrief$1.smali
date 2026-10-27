.class Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$1;
.super Ljava/lang/Object;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Integer;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;
    .locals 0

    .line 6166
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6167
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    :cond_0
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6164
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$1;->convert(Ljava/lang/Integer;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    move-result-object p1

    return-object p1
.end method

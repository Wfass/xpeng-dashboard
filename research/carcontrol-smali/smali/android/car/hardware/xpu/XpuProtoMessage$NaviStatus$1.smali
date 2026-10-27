.class Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus$1;
.super Ljava/lang/Object;
.source "XpuProtoMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;
    .locals 0

    .line 109
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/android/carsdk/protobuf/Internal$EnumLite;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus$1;->findValueByNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    move-result-object p1

    return-object p1
.end method

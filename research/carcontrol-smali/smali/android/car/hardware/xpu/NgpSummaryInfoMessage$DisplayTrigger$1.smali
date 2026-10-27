.class Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger$1;
.super Ljava/lang/Object;
.source "NgpSummaryInfoMessage.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/carsdk/protobuf/Internal$EnumLiteMap<",
        "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;
    .locals 0

    .line 119
    invoke-static {p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;->forNumber(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/android/carsdk/protobuf/Internal$EnumLite;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger$1;->findValueByNumber(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;

    move-result-object p1

    return-object p1
.end method

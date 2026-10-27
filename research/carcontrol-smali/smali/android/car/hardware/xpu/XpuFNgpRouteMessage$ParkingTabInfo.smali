.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParkingTabInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

.field public static final IS_LOCK_PARKING_TAB_FIELD_NUMBER:I = 0x6

.field public static final IS_SHOW_LEAVE_PARKING_FIELD_NUMBER:I = 0x2

.field public static final IS_SHOW_PARKING_PERFER_FIELD_NUMBER:I = 0x4

.field public static final IS_SHOW_PARKING_TAB_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOT_LEAVE_PARKING_TYPE_FIELD_NUMBER:I = 0x3

.field public static final SLOT_PREFER_TYPE_FIELD_NUMBER:I = 0x5


# instance fields
.field private isLockParkingTab_:Z

.field private isShowLeaveParking_:Z

.field private isShowParkingPerfer_:Z

.field private isShowParkingTab_:Z

.field private slotLeaveParkingType_:I

.field private slotPreferType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18808
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    .line 18809
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18029
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 18030
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    .line 18031
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    .line 18032
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    .line 18033
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    .line 18034
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    .line 18035
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    return-void
.end method

.method static synthetic access$30600()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1

    .line 18024
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object v0
.end method

.method static synthetic access$30700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Z)V
    .locals 0

    .line 18024
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->setIsShowParkingTab(Z)V

    return-void
.end method

.method static synthetic access$30800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 18024
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->clearIsShowParkingTab()V

    return-void
.end method

.method static synthetic access$30900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Z)V
    .locals 0

    .line 18024
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->setIsShowLeaveParking(Z)V

    return-void
.end method

.method static synthetic access$31000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 18024
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->clearIsShowLeaveParking()V

    return-void
.end method

.method static synthetic access$31100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;I)V
    .locals 0

    .line 18024
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->setSlotLeaveParkingTypeValue(I)V

    return-void
.end method

.method static synthetic access$31200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;)V
    .locals 0

    .line 18024
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->setSlotLeaveParkingType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;)V

    return-void
.end method

.method static synthetic access$31300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 18024
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->clearSlotLeaveParkingType()V

    return-void
.end method

.method static synthetic access$31400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Z)V
    .locals 0

    .line 18024
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->setIsShowParkingPerfer(Z)V

    return-void
.end method

.method static synthetic access$31500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 18024
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->clearIsShowParkingPerfer()V

    return-void
.end method

.method static synthetic access$31600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;I)V
    .locals 0

    .line 18024
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->setSlotPreferTypeValue(I)V

    return-void
.end method

.method static synthetic access$31700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)V
    .locals 0

    .line 18024
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->setSlotPreferType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)V

    return-void
.end method

.method static synthetic access$31800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 18024
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->clearSlotPreferType()V

    return-void
.end method

.method static synthetic access$31900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;Z)V
    .locals 0

    .line 18024
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->setIsLockParkingTab(Z)V

    return-void
.end method

.method static synthetic access$32000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 18024
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->clearIsLockParkingTab()V

    return-void
.end method

.method private clearIsLockParkingTab()V
    .locals 1

    const/4 v0, 0x0

    .line 18292
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    return-void
.end method

.method private clearIsShowLeaveParking()V
    .locals 1

    const/4 v0, 0x0

    .line 18104
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    return-void
.end method

.method private clearIsShowParkingPerfer()V
    .locals 1

    const/4 v0, 0x0

    .line 18198
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    return-void
.end method

.method private clearIsShowParkingTab()V
    .locals 1

    const/4 v0, 0x0

    .line 18069
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    return-void
.end method

.method private clearSlotLeaveParkingType()V
    .locals 1

    const/4 v0, 0x0

    .line 18163
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    return-void
.end method

.method private clearSlotPreferType()V
    .locals 1

    const/4 v0, 0x0

    .line 18257
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1

    .line 18813
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18412
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;
    .locals 1

    .line 18415
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18389
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18395
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18353
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18360
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18400
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18407
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18377
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18384
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18365
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18372
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;",
            ">;"
        }
    .end annotation

    .line 18819
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIsLockParkingTab(Z)V
    .locals 0

    .line 18281
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    return-void
.end method

.method private setIsShowLeaveParking(Z)V
    .locals 0

    .line 18093
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    return-void
.end method

.method private setIsShowParkingPerfer(Z)V
    .locals 0

    .line 18187
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    return-void
.end method

.method private setIsShowParkingTab(Z)V
    .locals 0

    .line 18058
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    return-void
.end method

.method private setSlotLeaveParkingType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;)V
    .locals 0

    .line 18149
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18152
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    return-void
.end method

.method private setSlotLeaveParkingTypeValue(I)V
    .locals 0

    .line 18138
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    return-void
.end method

.method private setSlotPreferType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)V
    .locals 0

    .line 18243
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18246
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    return-void
.end method

.method private setSlotPreferTypeValue(I)V
    .locals 0

    .line 18232
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 18695
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 18801
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 18792
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    monitor-enter p1

    .line 18793
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 18794
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 18796
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 18798
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 18727
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 18729
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 18734
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 p3, 0x8

    if-eq p1, p3, :cond_8

    const/16 p3, 0x10

    if-eq p1, p3, :cond_7

    const/16 p3, 0x18

    if-eq p1, p3, :cond_6

    const/16 p3, 0x20

    if-eq p1, p3, :cond_5

    const/16 p3, 0x28

    if-eq p1, p3, :cond_4

    const/16 p3, 0x30

    if-eq p1, p3, :cond_3

    .line 18740
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 18774
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    goto :goto_1

    .line 18767
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 18769
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    goto :goto_1

    .line 18763
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    goto :goto_1

    .line 18756
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 18758
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    goto :goto_1

    .line 18752
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    goto :goto_1

    .line 18747
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 18782
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 18784
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 18780
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18785
    :goto_3
    throw p1

    .line 18789
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p1

    .line 18709
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 18710
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    .line 18711
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    .line 18713
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    .line 18715
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_5

    :cond_c
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    .line 18716
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    .line 18718
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    if-eqz v3, :cond_e

    move v1, v2

    :cond_e
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    .line 18719
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    iget-boolean p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    invoke-interface {p2, p1, p1, p3, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    .line 18721
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 18706
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 18700
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-object p1

    .line 18697
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getIsLockParkingTab()Z
    .locals 1

    .line 18270
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    return v0
.end method

.method public getIsShowLeaveParking()Z
    .locals 1

    .line 18082
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    return v0
.end method

.method public getIsShowParkingPerfer()Z
    .locals 1

    .line 18176
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    return v0
.end method

.method public getIsShowParkingTab()Z
    .locals 1

    .line 18047
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 18318
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 18322
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 18324
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18326
    :cond_1
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 18328
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18330
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->DEFAULT_PARKING_TYPE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 18331
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    .line 18332
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18334
    :cond_3
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 18336
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18338
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->DEFAULT_PARKING_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x5

    .line 18339
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    .line 18340
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18342
    :cond_5
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 18344
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18346
    :cond_6
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlotLeaveParkingType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;
    .locals 1

    .line 18127
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18128
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    :cond_0
    return-object v0
.end method

.method public getSlotLeaveParkingTypeValue()I
    .locals 1

    .line 18117
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    return v0
.end method

.method public getSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
    .locals 1

    .line 18221
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18222
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    :cond_0
    return-object v0
.end method

.method public getSlotPreferTypeValue()I
    .locals 1

    .line 18211
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18297
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingTab_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 18298
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18300
    :cond_0
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowLeaveParking_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 18301
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18303
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->DEFAULT_PARKING_TYPE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 18304
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotLeaveParkingType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18306
    :cond_2
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isShowParkingPerfer_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 18307
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18309
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->DEFAULT_PARKING_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_4

    const/4 v0, 0x5

    .line 18310
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->slotPreferType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18312
    :cond_4
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->isLockParkingTab_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 18313
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_5
    return-void
.end method

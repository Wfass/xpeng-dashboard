.class Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager$AirBedManagerHolder;
.super Ljava/lang/Object;
.source "AirBedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AirBedManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager$AirBedManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;
    .locals 1

    .line 55
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager$AirBedManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;

    return-object v0
.end method

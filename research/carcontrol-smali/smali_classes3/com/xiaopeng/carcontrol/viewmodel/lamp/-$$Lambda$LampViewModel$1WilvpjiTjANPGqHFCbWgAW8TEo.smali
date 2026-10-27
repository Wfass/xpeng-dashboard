.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$1WilvpjiTjANPGqHFCbWgAW8TEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$1WilvpjiTjANPGqHFCbWgAW8TEo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$1WilvpjiTjANPGqHFCbWgAW8TEo;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$1WilvpjiTjANPGqHFCbWgAW8TEo;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$1WilvpjiTjANPGqHFCbWgAW8TEo;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/lamp/-$$Lambda$LampViewModel$1WilvpjiTjANPGqHFCbWgAW8TEo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampViewModel;->lambda$handleParkingLampStatesChanged$0(I)[Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

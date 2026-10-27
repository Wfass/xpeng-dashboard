.class public final synthetic Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$gJ2kAhF_aIs1lCEQCs8nBpajzb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$gJ2kAhF_aIs1lCEQCs8nBpajzb4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$gJ2kAhF_aIs1lCEQCs8nBpajzb4;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$gJ2kAhF_aIs1lCEQCs8nBpajzb4;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$gJ2kAhF_aIs1lCEQCs8nBpajzb4;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$gJ2kAhF_aIs1lCEQCs8nBpajzb4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;->lambda$onErrorVibrate$3(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

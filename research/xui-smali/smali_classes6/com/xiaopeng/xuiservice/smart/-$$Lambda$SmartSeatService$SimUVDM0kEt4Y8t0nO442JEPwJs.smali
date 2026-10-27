.class public final synthetic Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$SimUVDM0kEt4Y8t0nO442JEPwJs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$SimUVDM0kEt4Y8t0nO442JEPwJs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$SimUVDM0kEt4Y8t0nO442JEPwJs;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$SimUVDM0kEt4Y8t0nO442JEPwJs;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$SimUVDM0kEt4Y8t0nO442JEPwJs;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartSeatService$SimUVDM0kEt4Y8t0nO442JEPwJs;

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

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/SmartSeatService;->lambda$addMcuManagerCallback$0(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

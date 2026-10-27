.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$_pkHAaCLIFLBRsJS6K1w_rMI-c0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$_pkHAaCLIFLBRsJS6K1w_rMI-c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$_pkHAaCLIFLBRsJS6K1w_rMI-c0;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$_pkHAaCLIFLBRsJS6K1w_rMI-c0;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$_pkHAaCLIFLBRsJS6K1w_rMI-c0;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/-$$Lambda$_pkHAaCLIFLBRsJS6K1w_rMI-c0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaopeng/xuiservice/smart/condition/Condition;

    invoke-interface {p1}, Lcom/xiaopeng/xuiservice/smart/condition/Condition;->startWatch()V

    return-void
.end method

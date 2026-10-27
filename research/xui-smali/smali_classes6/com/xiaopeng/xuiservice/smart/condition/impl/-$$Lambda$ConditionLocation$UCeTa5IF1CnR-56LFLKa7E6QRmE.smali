.class public final synthetic Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$UCeTa5IF1CnR-56LFLKa7E6QRmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$UCeTa5IF1CnR-56LFLKa7E6QRmE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$UCeTa5IF1CnR-56LFLKa7E6QRmE;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$UCeTa5IF1CnR-56LFLKa7E6QRmE;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$UCeTa5IF1CnR-56LFLKa7E6QRmE;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/condition/impl/-$$Lambda$ConditionLocation$UCeTa5IF1CnR-56LFLKa7E6QRmE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/location/Location;

    check-cast p2, Landroid/location/Location;

    invoke-static {p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionLocation;->lambda$operator$0(Landroid/location/Location;Landroid/location/Location;)Z

    move-result p1

    return p1
.end method

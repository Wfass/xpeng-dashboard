.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/smm/-$$Lambda$XpSeatMassagerProxy$JWLUSa4hQWAZf1TfuyVGazguidI;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerProxy;->lambda$JWLUSa4hQWAZf1TfuyVGazguidI(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

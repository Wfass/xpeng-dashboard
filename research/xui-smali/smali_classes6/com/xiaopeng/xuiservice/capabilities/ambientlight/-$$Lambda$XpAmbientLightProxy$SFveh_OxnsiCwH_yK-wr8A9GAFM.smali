.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightProxy$SFveh_OxnsiCwH_yK-wr8A9GAFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightProxy$SFveh_OxnsiCwH_yK-wr8A9GAFM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightProxy$SFveh_OxnsiCwH_yK-wr8A9GAFM;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightProxy$SFveh_OxnsiCwH_yK-wr8A9GAFM;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightProxy$SFveh_OxnsiCwH_yK-wr8A9GAFM;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightProxy$SFveh_OxnsiCwH_yK-wr8A9GAFM;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightProxy;->lambda$getAmbientLightPartitionModes$0(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

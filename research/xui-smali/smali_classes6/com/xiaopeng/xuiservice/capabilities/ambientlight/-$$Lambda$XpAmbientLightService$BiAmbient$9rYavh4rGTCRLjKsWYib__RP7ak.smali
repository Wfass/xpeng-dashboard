.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$9rYavh4rGTCRLjKsWYib__RP7ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$9rYavh4rGTCRLjKsWYib__RP7ak;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$9rYavh4rGTCRLjKsWYib__RP7ak;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$9rYavh4rGTCRLjKsWYib__RP7ak;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$9rYavh4rGTCRLjKsWYib__RP7ak;->INSTANCE:Lcom/xiaopeng/xuiservice/capabilities/ambientlight/-$$Lambda$XpAmbientLightService$BiAmbient$9rYavh4rGTCRLjKsWYib__RP7ak;

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

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/ambientlight/XpAmbientLightService$BiAmbient;->lambda$new$0(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

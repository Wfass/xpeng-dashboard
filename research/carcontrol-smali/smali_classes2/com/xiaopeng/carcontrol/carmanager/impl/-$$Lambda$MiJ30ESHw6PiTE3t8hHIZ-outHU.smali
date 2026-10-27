.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MiJ30ESHw6PiTE3t8hHIZ-outHU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MiJ30ESHw6PiTE3t8hHIZ-outHU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MiJ30ESHw6PiTE3t8hHIZ-outHU;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MiJ30ESHw6PiTE3t8hHIZ-outHU;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MiJ30ESHw6PiTE3t8hHIZ-outHU;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$MiJ30ESHw6PiTE3t8hHIZ-outHU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;->onVoiceSwChanged(Z)V

    return-void
.end method

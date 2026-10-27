.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$dR9HxOa5D67YX9mF7OqFOgOOEog;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$dR9HxOa5D67YX9mF7OqFOgOOEog;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$dR9HxOa5D67YX9mF7OqFOgOOEog;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$dR9HxOa5D67YX9mF7OqFOgOOEog;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$dR9HxOa5D67YX9mF7OqFOgOOEog;->INSTANCE:Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$dR9HxOa5D67YX9mF7OqFOgOOEog;

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

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;->onRaebSwChanged(I)V

    return-void
.end method

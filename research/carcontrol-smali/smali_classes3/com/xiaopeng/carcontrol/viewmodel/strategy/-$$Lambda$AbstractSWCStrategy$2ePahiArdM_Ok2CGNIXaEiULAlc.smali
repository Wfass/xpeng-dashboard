.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$2ePahiArdM_Ok2CGNIXaEiULAlc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$2ePahiArdM_Ok2CGNIXaEiULAlc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$2ePahiArdM_Ok2CGNIXaEiULAlc;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$2ePahiArdM_Ok2CGNIXaEiULAlc;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$2ePahiArdM_Ok2CGNIXaEiULAlc;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/strategy/-$$Lambda$AbstractSWCStrategy$2ePahiArdM_Ok2CGNIXaEiULAlc;

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

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;

    check-cast p2, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy;->lambda$cancel$0(Lcom/xiaopeng/carcontrol/viewmodel/strategy/Direction;Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$ControlTask;)V

    return-void
.end method

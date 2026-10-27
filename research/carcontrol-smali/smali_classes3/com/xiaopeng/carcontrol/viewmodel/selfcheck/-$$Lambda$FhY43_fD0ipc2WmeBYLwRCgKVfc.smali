.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$FhY43_fD0ipc2WmeBYLwRCgKVfc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$FhY43_fD0ipc2WmeBYLwRCgKVfc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$FhY43_fD0ipc2WmeBYLwRCgKVfc;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$FhY43_fD0ipc2WmeBYLwRCgKVfc;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$FhY43_fD0ipc2WmeBYLwRCgKVfc;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$FhY43_fD0ipc2WmeBYLwRCgKVfc;

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

    check-cast p1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->startCheck()V

    return-void
.end method

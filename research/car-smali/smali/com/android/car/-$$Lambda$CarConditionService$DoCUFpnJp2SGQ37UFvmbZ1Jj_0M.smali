.class public final synthetic Lcom/android/car/-$$Lambda$CarConditionService$DoCUFpnJp2SGQ37UFvmbZ1Jj_0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarConditionService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarConditionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarConditionService$DoCUFpnJp2SGQ37UFvmbZ1Jj_0M;->f$0:Lcom/android/car/CarConditionService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarConditionService$DoCUFpnJp2SGQ37UFvmbZ1Jj_0M;->f$0:Lcom/android/car/CarConditionService;

    check-cast p1, Lcom/android/car/CarConditionService$Client;

    invoke-static {v0, p1}, Lcom/android/car/CarConditionService;->lambda$dump$0(Lcom/android/car/CarConditionService;Lcom/android/car/CarConditionService$Client;)Z

    move-result p1

    return p1
.end method

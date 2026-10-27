.class public final synthetic Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;->f$0:Landroid/content/Context;

    iput p2, p0, Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;->f$1:I

    iput p3, p0, Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;->f$0:Landroid/content/Context;

    iget v1, p0, Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;->f$1:I

    iget v2, p0, Lcom/android/car/-$$Lambda$ProcessUtils$bH4EMGAG430O3JSl_4_g8Ew56Hk;->f$2:I

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p1}, Lcom/android/car/ProcessUtils;->lambda$getProcessName$0(Landroid/content/Context;IILandroid/util/Pair;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

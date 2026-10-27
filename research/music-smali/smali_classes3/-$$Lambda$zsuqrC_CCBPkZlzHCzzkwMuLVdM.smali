.class public final synthetic L-$$Lambda$zsuqrC_CCBPkZlzHCzzkwMuLVdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$zsuqrC_CCBPkZlzHCzzkwMuLVdM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$zsuqrC_CCBPkZlzHCzzkwMuLVdM;

    invoke-direct {v0}, L-$$Lambda$zsuqrC_CCBPkZlzHCzzkwMuLVdM;-><init>()V

    sput-object v0, L-$$Lambda$zsuqrC_CCBPkZlzHCzzkwMuLVdM;->INSTANCE:L-$$Lambda$zsuqrC_CCBPkZlzHCzzkwMuLVdM;

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

    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

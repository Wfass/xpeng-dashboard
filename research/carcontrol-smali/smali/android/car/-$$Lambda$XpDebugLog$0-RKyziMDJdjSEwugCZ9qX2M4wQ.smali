.class public final synthetic Landroid/car/-$$Lambda$XpDebugLog$0-RKyziMDJdjSEwugCZ9qX2M4wQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/car/-$$Lambda$XpDebugLog$0-RKyziMDJdjSEwugCZ9qX2M4wQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/car/-$$Lambda$XpDebugLog$0-RKyziMDJdjSEwugCZ9qX2M4wQ;

    invoke-direct {v0}, Landroid/car/-$$Lambda$XpDebugLog$0-RKyziMDJdjSEwugCZ9qX2M4wQ;-><init>()V

    sput-object v0, Landroid/car/-$$Lambda$XpDebugLog$0-RKyziMDJdjSEwugCZ9qX2M4wQ;->INSTANCE:Landroid/car/-$$Lambda$XpDebugLog$0-RKyziMDJdjSEwugCZ9qX2M4wQ;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/car/XpDebugLog;->lambda$getStringNameAndDescriptionPair$0(Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/android/car/-$$Lambda$XpSharedMemoryService$a8e4swX8CehlWWZHubCtixN-epk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/-$$Lambda$XpSharedMemoryService$a8e4swX8CehlWWZHubCtixN-epk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/-$$Lambda$XpSharedMemoryService$a8e4swX8CehlWWZHubCtixN-epk;

    invoke-direct {v0}, Lcom/android/car/-$$Lambda$XpSharedMemoryService$a8e4swX8CehlWWZHubCtixN-epk;-><init>()V

    sput-object v0, Lcom/android/car/-$$Lambda$XpSharedMemoryService$a8e4swX8CehlWWZHubCtixN-epk;->INSTANCE:Lcom/android/car/-$$Lambda$XpSharedMemoryService$a8e4swX8CehlWWZHubCtixN-epk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/car/XpSharedMemoryService$Client;

    invoke-static {p1}, Lcom/android/car/XpSharedMemoryService;->lambda$dump$0(Lcom/android/car/XpSharedMemoryService$Client;)I

    move-result p1

    return p1
.end method

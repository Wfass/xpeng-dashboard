.class public final synthetic L-$$Lambda$ayj$b$txiTlmH2jW4_xLLcG72ABSD8T5s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$ayj$b$txiTlmH2jW4_xLLcG72ABSD8T5s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$ayj$b$txiTlmH2jW4_xLLcG72ABSD8T5s;

    invoke-direct {v0}, L-$$Lambda$ayj$b$txiTlmH2jW4_xLLcG72ABSD8T5s;-><init>()V

    sput-object v0, L-$$Lambda$ayj$b$txiTlmH2jW4_xLLcG72ABSD8T5s;->INSTANCE:L-$$Lambda$ayj$b$txiTlmH2jW4_xLLcG72ABSD8T5s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-static {p1}, Layj$b;->lambda$txiTlmH2jW4_xLLcG72ABSD8T5s(Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;)Z

    move-result p1

    return p1
.end method

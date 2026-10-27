.class public final synthetic L-$$Lambda$kj0yCZYr_5QgHu6ofIaqSyJJa1Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$kj0yCZYr_5QgHu6ofIaqSyJJa1Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$kj0yCZYr_5QgHu6ofIaqSyJJa1Q;

    invoke-direct {v0}, L-$$Lambda$kj0yCZYr_5QgHu6ofIaqSyJJa1Q;-><init>()V

    sput-object v0, L-$$Lambda$kj0yCZYr_5QgHu6ofIaqSyJJa1Q;->INSTANCE:L-$$Lambda$kj0yCZYr_5QgHu6ofIaqSyJJa1Q;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

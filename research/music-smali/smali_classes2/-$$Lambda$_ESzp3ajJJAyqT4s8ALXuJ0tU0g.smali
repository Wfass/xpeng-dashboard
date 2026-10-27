.class public final synthetic L-$$Lambda$_ESzp3ajJJAyqT4s8ALXuJ0tU0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$_ESzp3ajJJAyqT4s8ALXuJ0tU0g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$_ESzp3ajJJAyqT4s8ALXuJ0tU0g;

    invoke-direct {v0}, L-$$Lambda$_ESzp3ajJJAyqT4s8ALXuJ0tU0g;-><init>()V

    sput-object v0, L-$$Lambda$_ESzp3ajJJAyqT4s8ALXuJ0tU0g;->INSTANCE:L-$$Lambda$_ESzp3ajJJAyqT4s8ALXuJ0tU0g;

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

    check-cast p1, Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    return p1
.end method

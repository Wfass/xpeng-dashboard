.class public final synthetic L-$$Lambda$BL9OOJlG-1An1qs3gnz2u_UQsTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$BL9OOJlG-1An1qs3gnz2u_UQsTI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$BL9OOJlG-1An1qs3gnz2u_UQsTI;

    invoke-direct {v0}, L-$$Lambda$BL9OOJlG-1An1qs3gnz2u_UQsTI;-><init>()V

    sput-object v0, L-$$Lambda$BL9OOJlG-1An1qs3gnz2u_UQsTI;->INSTANCE:L-$$Lambda$BL9OOJlG-1An1qs3gnz2u_UQsTI;

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

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

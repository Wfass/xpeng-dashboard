.class public final synthetic L-$$Lambda$9fcgnbopkPj30ReBUuotL7FkW1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$9fcgnbopkPj30ReBUuotL7FkW1A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$9fcgnbopkPj30ReBUuotL7FkW1A;

    invoke-direct {v0}, L-$$Lambda$9fcgnbopkPj30ReBUuotL7FkW1A;-><init>()V

    sput-object v0, L-$$Lambda$9fcgnbopkPj30ReBUuotL7FkW1A;->INSTANCE:L-$$Lambda$9fcgnbopkPj30ReBUuotL7FkW1A;

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

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

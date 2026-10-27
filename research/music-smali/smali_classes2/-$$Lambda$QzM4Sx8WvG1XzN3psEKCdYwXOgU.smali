.class public final synthetic L-$$Lambda$QzM4Sx8WvG1XzN3psEKCdYwXOgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$QzM4Sx8WvG1XzN3psEKCdYwXOgU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$QzM4Sx8WvG1XzN3psEKCdYwXOgU;

    invoke-direct {v0}, L-$$Lambda$QzM4Sx8WvG1XzN3psEKCdYwXOgU;-><init>()V

    sput-object v0, L-$$Lambda$QzM4Sx8WvG1XzN3psEKCdYwXOgU;->INSTANCE:L-$$Lambda$QzM4Sx8WvG1XzN3psEKCdYwXOgU;

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

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

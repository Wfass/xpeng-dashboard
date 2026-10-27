.class public final synthetic L-$$Lambda$tkaKDOWCXRTMXVPlwd6e01LQTyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$tkaKDOWCXRTMXVPlwd6e01LQTyU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$tkaKDOWCXRTMXVPlwd6e01LQTyU;

    invoke-direct {v0}, L-$$Lambda$tkaKDOWCXRTMXVPlwd6e01LQTyU;-><init>()V

    sput-object v0, L-$$Lambda$tkaKDOWCXRTMXVPlwd6e01LQTyU;->INSTANCE:L-$$Lambda$tkaKDOWCXRTMXVPlwd6e01LQTyU;

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

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

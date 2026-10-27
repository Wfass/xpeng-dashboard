.class public final synthetic L-$$Lambda$wy$MLhBVHczyX0S8v_FXHdnSbUEBRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$wy$MLhBVHczyX0S8v_FXHdnSbUEBRA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$wy$MLhBVHczyX0S8v_FXHdnSbUEBRA;

    invoke-direct {v0}, L-$$Lambda$wy$MLhBVHczyX0S8v_FXHdnSbUEBRA;-><init>()V

    sput-object v0, L-$$Lambda$wy$MLhBVHczyX0S8v_FXHdnSbUEBRA;->INSTANCE:L-$$Lambda$wy$MLhBVHczyX0S8v_FXHdnSbUEBRA;

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

    invoke-static {p1}, Lwy;->lambda$MLhBVHczyX0S8v_FXHdnSbUEBRA(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

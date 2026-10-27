.class public final synthetic L-$$Lambda$hSvZYwK5Dn4NHmk69dK5k2lxGVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$hSvZYwK5Dn4NHmk69dK5k2lxGVs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$hSvZYwK5Dn4NHmk69dK5k2lxGVs;

    invoke-direct {v0}, L-$$Lambda$hSvZYwK5Dn4NHmk69dK5k2lxGVs;-><init>()V

    sput-object v0, L-$$Lambda$hSvZYwK5Dn4NHmk69dK5k2lxGVs;->INSTANCE:L-$$Lambda$hSvZYwK5Dn4NHmk69dK5k2lxGVs;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Labo;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.class public final synthetic L-$$Lambda$8vQ9pUMsnlOAay3RxtkwRViA_Ps;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$8vQ9pUMsnlOAay3RxtkwRViA_Ps;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$8vQ9pUMsnlOAay3RxtkwRViA_Ps;

    invoke-direct {v0}, L-$$Lambda$8vQ9pUMsnlOAay3RxtkwRViA_Ps;-><init>()V

    sput-object v0, L-$$Lambda$8vQ9pUMsnlOAay3RxtkwRViA_Ps;->INSTANCE:L-$$Lambda$8vQ9pUMsnlOAay3RxtkwRViA_Ps;

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

    invoke-static {p1}, Labo;->h(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

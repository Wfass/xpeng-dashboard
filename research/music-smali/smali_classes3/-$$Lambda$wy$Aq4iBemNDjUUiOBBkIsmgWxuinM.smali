.class public final synthetic L-$$Lambda$wy$Aq4iBemNDjUUiOBBkIsmgWxuinM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$wy$Aq4iBemNDjUUiOBBkIsmgWxuinM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$wy$Aq4iBemNDjUUiOBBkIsmgWxuinM;

    invoke-direct {v0}, L-$$Lambda$wy$Aq4iBemNDjUUiOBBkIsmgWxuinM;-><init>()V

    sput-object v0, L-$$Lambda$wy$Aq4iBemNDjUUiOBBkIsmgWxuinM;->INSTANCE:L-$$Lambda$wy$Aq4iBemNDjUUiOBBkIsmgWxuinM;

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

    invoke-static {p1}, Lwy;->lambda$Aq4iBemNDjUUiOBBkIsmgWxuinM(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

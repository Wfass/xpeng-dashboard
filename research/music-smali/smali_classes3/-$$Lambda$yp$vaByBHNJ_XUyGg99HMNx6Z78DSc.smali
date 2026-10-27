.class public final synthetic L-$$Lambda$yp$vaByBHNJ_XUyGg99HMNx6Z78DSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:L-$$Lambda$yp$vaByBHNJ_XUyGg99HMNx6Z78DSc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, L-$$Lambda$yp$vaByBHNJ_XUyGg99HMNx6Z78DSc;

    invoke-direct {v0}, L-$$Lambda$yp$vaByBHNJ_XUyGg99HMNx6Z78DSc;-><init>()V

    sput-object v0, L-$$Lambda$yp$vaByBHNJ_XUyGg99HMNx6Z78DSc;->INSTANCE:L-$$Lambda$yp$vaByBHNJ_XUyGg99HMNx6Z78DSc;

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

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lyp;->lambda$vaByBHNJ_XUyGg99HMNx6Z78DSc(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

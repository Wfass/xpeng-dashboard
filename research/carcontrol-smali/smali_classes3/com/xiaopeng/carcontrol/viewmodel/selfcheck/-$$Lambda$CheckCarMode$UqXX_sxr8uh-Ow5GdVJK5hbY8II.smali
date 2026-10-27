.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$UqXX_sxr8uh-Ow5GdVJK5hbY8II;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$UqXX_sxr8uh-Ow5GdVJK5hbY8II;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$UqXX_sxr8uh-Ow5GdVJK5hbY8II;

    invoke-direct {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$UqXX_sxr8uh-Ow5GdVJK5hbY8II;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$UqXX_sxr8uh-Ow5GdVJK5hbY8II;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/-$$Lambda$CheckCarMode$UqXX_sxr8uh-Ow5GdVJK5hbY8II;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    check-cast p2, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->lambda$generateExtrasInternal$2(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;)I

    move-result p1

    return p1
.end method

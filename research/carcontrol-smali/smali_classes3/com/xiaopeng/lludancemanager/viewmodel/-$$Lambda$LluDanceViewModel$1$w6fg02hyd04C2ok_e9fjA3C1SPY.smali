.class public final synthetic Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$1$w6fg02hyd04C2ok_e9fjA3C1SPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$1$w6fg02hyd04C2ok_e9fjA3C1SPY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$1$w6fg02hyd04C2ok_e9fjA3C1SPY;

    invoke-direct {v0}, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$1$w6fg02hyd04C2ok_e9fjA3C1SPY;-><init>()V

    sput-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$1$w6fg02hyd04C2ok_e9fjA3C1SPY;->INSTANCE:Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$LluDanceViewModel$1$w6fg02hyd04C2ok_e9fjA3C1SPY;

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

    check-cast p1, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    check-cast p2, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-static {p1, p2}, Lcom/xiaopeng/lludancemanager/viewmodel/LluDanceViewModel$1;->lambda$onRemoteSourceQuerySuccess$0(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)I

    move-result p1

    return p1
.end method

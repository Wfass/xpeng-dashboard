.class public final synthetic Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$jRhcj0N3_nMgc86buc9xXADUi4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$jRhcj0N3_nMgc86buc9xXADUi4w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$jRhcj0N3_nMgc86buc9xXADUi4w;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$jRhcj0N3_nMgc86buc9xXADUi4w;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$jRhcj0N3_nMgc86buc9xXADUi4w;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$jRhcj0N3_nMgc86buc9xXADUi4w;

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

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->lambda$getAmbientLightPartitionModes$1([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

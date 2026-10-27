.class public final synthetic Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$PeV5Cpy2ePI9XARngMEqw3qvyq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$PeV5Cpy2ePI9XARngMEqw3qvyq4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$PeV5Cpy2ePI9XARngMEqw3qvyq4;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$PeV5Cpy2ePI9XARngMEqw3qvyq4;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$PeV5Cpy2ePI9XARngMEqw3qvyq4;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$PeV5Cpy2ePI9XARngMEqw3qvyq4;

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

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->lambda$getAmbientLightPartitionModes$0(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

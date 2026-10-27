.class public final synthetic Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$mHOHEEJZ8zzh_MSsagE4Z525QUI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$mHOHEEJZ8zzh_MSsagE4Z525QUI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$mHOHEEJZ8zzh_MSsagE4Z525QUI;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$mHOHEEJZ8zzh_MSsagE4Z525QUI;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$mHOHEEJZ8zzh_MSsagE4Z525QUI;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientManager$mHOHEEJZ8zzh_MSsagE4Z525QUI;

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

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientManager;->lambda$getAmbientLightPartitionModes$2([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

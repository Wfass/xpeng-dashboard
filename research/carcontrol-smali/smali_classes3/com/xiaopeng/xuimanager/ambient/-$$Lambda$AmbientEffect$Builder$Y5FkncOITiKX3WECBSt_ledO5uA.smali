.class public final synthetic Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$Y5FkncOITiKX3WECBSt_ledO5uA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$Y5FkncOITiKX3WECBSt_ledO5uA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$Y5FkncOITiKX3WECBSt_ledO5uA;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$Y5FkncOITiKX3WECBSt_ledO5uA;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$Y5FkncOITiKX3WECBSt_ledO5uA;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$Y5FkncOITiKX3WECBSt_ledO5uA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->lambda$setSequence$0(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

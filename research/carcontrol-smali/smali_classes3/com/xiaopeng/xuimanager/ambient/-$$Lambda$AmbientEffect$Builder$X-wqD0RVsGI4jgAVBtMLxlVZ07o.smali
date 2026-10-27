.class public final synthetic Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$X-wqD0RVsGI4jgAVBtMLxlVZ07o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$X-wqD0RVsGI4jgAVBtMLxlVZ07o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$X-wqD0RVsGI4jgAVBtMLxlVZ07o;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$X-wqD0RVsGI4jgAVBtMLxlVZ07o;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$X-wqD0RVsGI4jgAVBtMLxlVZ07o;->INSTANCE:Lcom/xiaopeng/xuimanager/ambient/-$$Lambda$AmbientEffect$Builder$X-wqD0RVsGI4jgAVBtMLxlVZ07o;

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

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambient/AmbientEffect$Builder;->lambda$setSequence$1(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

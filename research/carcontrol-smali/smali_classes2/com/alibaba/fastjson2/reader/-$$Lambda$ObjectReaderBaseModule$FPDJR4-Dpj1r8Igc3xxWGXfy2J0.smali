.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$FPDJR4-Dpj1r8Igc3xxWGXfy2J0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$FPDJR4-Dpj1r8Igc3xxWGXfy2J0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$FPDJR4-Dpj1r8Igc3xxWGXfy2J0;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$FPDJR4-Dpj1r8Igc3xxWGXfy2J0;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$FPDJR4-Dpj1r8Igc3xxWGXfy2J0;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$FPDJR4-Dpj1r8Igc3xxWGXfy2J0;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->lambda$FPDJR4-Dpj1r8Igc3xxWGXfy2J0(I)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method

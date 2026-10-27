.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$to8nQz5f9eo8sz9AlEYnY3ngAfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$to8nQz5f9eo8sz9AlEYnY3ngAfE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$to8nQz5f9eo8sz9AlEYnY3ngAfE;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$to8nQz5f9eo8sz9AlEYnY3ngAfE;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$to8nQz5f9eo8sz9AlEYnY3ngAfE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$to8nQz5f9eo8sz9AlEYnY3ngAfE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->lambda$to8nQz5f9eo8sz9AlEYnY3ngAfE(J)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method

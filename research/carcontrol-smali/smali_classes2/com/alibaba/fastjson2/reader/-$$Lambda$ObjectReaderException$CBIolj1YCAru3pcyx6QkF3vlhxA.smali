.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$CBIolj1YCAru3pcyx6QkF3vlhxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$CBIolj1YCAru3pcyx6QkF3vlhxA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$CBIolj1YCAru3pcyx6QkF3vlhxA;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$CBIolj1YCAru3pcyx6QkF3vlhxA;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$CBIolj1YCAru3pcyx6QkF3vlhxA;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderException$CBIolj1YCAru3pcyx6QkF3vlhxA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, [Ljava/lang/StackTraceElement;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;->lambda$CBIolj1YCAru3pcyx6QkF3vlhxA(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)V

    return-void
.end method

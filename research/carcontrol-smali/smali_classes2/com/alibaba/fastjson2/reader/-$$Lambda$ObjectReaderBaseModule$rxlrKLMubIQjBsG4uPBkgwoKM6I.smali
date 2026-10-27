.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$rxlrKLMubIQjBsG4uPBkgwoKM6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$rxlrKLMubIQjBsG4uPBkgwoKM6I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$rxlrKLMubIQjBsG4uPBkgwoKM6I;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$rxlrKLMubIQjBsG4uPBkgwoKM6I;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$rxlrKLMubIQjBsG4uPBkgwoKM6I;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$rxlrKLMubIQjBsG4uPBkgwoKM6I;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->lambda$rxlrKLMubIQjBsG4uPBkgwoKM6I(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$4v51r7thPiDp8WyJaqhlet7BeZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$4v51r7thPiDp8WyJaqhlet7BeZg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$4v51r7thPiDp8WyJaqhlet7BeZg;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$4v51r7thPiDp8WyJaqhlet7BeZg;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$4v51r7thPiDp8WyJaqhlet7BeZg;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$4v51r7thPiDp8WyJaqhlet7BeZg;

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

    check-cast p1, [I

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->lambda$4v51r7thPiDp8WyJaqhlet7BeZg([I)Ljava/util/concurrent/atomic/AtomicIntegerArray;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method

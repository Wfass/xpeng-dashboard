.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$2JgvmSZ5L4rhR8QP_FguMti1Gng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$2JgvmSZ5L4rhR8QP_FguMti1Gng;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$2JgvmSZ5L4rhR8QP_FguMti1Gng;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$2JgvmSZ5L4rhR8QP_FguMti1Gng;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$2JgvmSZ5L4rhR8QP_FguMti1Gng;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$2JgvmSZ5L4rhR8QP_FguMti1Gng;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->lambda$getObjectReader$9(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

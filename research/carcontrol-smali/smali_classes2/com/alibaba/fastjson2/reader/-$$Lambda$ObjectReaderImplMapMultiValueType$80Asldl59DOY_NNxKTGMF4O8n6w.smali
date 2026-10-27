.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$80Asldl59DOY_NNxKTGMF4O8n6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$80Asldl59DOY_NNxKTGMF4O8n6w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$80Asldl59DOY_NNxKTGMF4O8n6w;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$80Asldl59DOY_NNxKTGMF4O8n6w;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$80Asldl59DOY_NNxKTGMF4O8n6w;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplMapMultiValueType$80Asldl59DOY_NNxKTGMF4O8n6w;

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

    check-cast p1, Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;->lambda$80Asldl59DOY_NNxKTGMF4O8n6w(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

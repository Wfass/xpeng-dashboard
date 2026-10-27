.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$3UVXM2g_65PnFNtY9XA_XufMuBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$3UVXM2g_65PnFNtY9XA_XufMuBo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$3UVXM2g_65PnFNtY9XA_XufMuBo;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$3UVXM2g_65PnFNtY9XA_XufMuBo;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$3UVXM2g_65PnFNtY9XA_XufMuBo;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$3UVXM2g_65PnFNtY9XA_XufMuBo;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM;->lambda$genMethodReadJSONBObject$3(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

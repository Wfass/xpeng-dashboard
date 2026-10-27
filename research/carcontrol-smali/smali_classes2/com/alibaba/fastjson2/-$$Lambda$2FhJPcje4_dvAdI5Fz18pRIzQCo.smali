.class public final synthetic Lcom/alibaba/fastjson2/-$$Lambda$2FhJPcje4_dvAdI5Fz18pRIzQCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$2FhJPcje4_dvAdI5Fz18pRIzQCo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/-$$Lambda$2FhJPcje4_dvAdI5Fz18pRIzQCo;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/-$$Lambda$2FhJPcje4_dvAdI5Fz18pRIzQCo;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/-$$Lambda$2FhJPcje4_dvAdI5Fz18pRIzQCo;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$2FhJPcje4_dvAdI5Fz18pRIzQCo;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPathFunction;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

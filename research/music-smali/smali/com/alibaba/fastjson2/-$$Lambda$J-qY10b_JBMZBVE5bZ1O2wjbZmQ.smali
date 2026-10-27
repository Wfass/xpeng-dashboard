.class public final synthetic Lcom/alibaba/fastjson2/-$$Lambda$J-qY10b_JBMZBVE5bZ1O2wjbZmQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$J-qY10b_JBMZBVE5bZ1O2wjbZmQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/-$$Lambda$J-qY10b_JBMZBVE5bZ1O2wjbZmQ;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/-$$Lambda$J-qY10b_JBMZBVE5bZ1O2wjbZmQ;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/-$$Lambda$J-qY10b_JBMZBVE5bZ1O2wjbZmQ;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$J-qY10b_JBMZBVE5bZ1O2wjbZmQ;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/k;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method

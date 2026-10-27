.class public final synthetic Lcom/alibaba/fastjson2/-$$Lambda$3YHuhBJe6UuMBJnx7mFcng6qSgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$3YHuhBJe6UuMBJnx7mFcng6qSgI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/-$$Lambda$3YHuhBJe6UuMBJnx7mFcng6qSgI;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/-$$Lambda$3YHuhBJe6UuMBJnx7mFcng6qSgI;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/-$$Lambda$3YHuhBJe6UuMBJnx7mFcng6qSgI;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$3YHuhBJe6UuMBJnx7mFcng6qSgI;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPathFunction;->type(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method

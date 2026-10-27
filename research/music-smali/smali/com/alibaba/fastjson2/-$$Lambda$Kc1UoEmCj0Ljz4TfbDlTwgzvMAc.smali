.class public final synthetic Lcom/alibaba/fastjson2/-$$Lambda$Kc1UoEmCj0Ljz4TfbDlTwgzvMAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$Kc1UoEmCj0Ljz4TfbDlTwgzvMAc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/-$$Lambda$Kc1UoEmCj0Ljz4TfbDlTwgzvMAc;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/-$$Lambda$Kc1UoEmCj0Ljz4TfbDlTwgzvMAc;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/-$$Lambda$Kc1UoEmCj0Ljz4TfbDlTwgzvMAc;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$Kc1UoEmCj0Ljz4TfbDlTwgzvMAc;

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

    check-cast p1, Lcom/alibaba/fastjson2/j;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/j;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

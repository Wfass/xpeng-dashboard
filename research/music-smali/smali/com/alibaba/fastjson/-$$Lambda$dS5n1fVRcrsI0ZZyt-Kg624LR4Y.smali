.class public final synthetic Lcom/alibaba/fastjson/-$$Lambda$dS5n1fVRcrsI0ZZyt-Kg624LR4Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson/-$$Lambda$dS5n1fVRcrsI0ZZyt-Kg624LR4Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/-$$Lambda$dS5n1fVRcrsI0ZZyt-Kg624LR4Y;

    invoke-direct {v0}, Lcom/alibaba/fastjson/-$$Lambda$dS5n1fVRcrsI0ZZyt-Kg624LR4Y;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/-$$Lambda$dS5n1fVRcrsI0ZZyt-Kg624LR4Y;->INSTANCE:Lcom/alibaba/fastjson/-$$Lambda$dS5n1fVRcrsI0ZZyt-Kg624LR4Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

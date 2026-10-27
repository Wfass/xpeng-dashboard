.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaders$gDKEcGxnaIgU7sqXbIS8kj9NQtE;

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

    invoke-static {}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->lambda$gDKEcGxnaIgU7sqXbIS8kj9NQtE()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$TYix4sK29SelnCz71-_1Bm3emO8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$TYix4sK29SelnCz71-_1Bm3emO8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$TYix4sK29SelnCz71-_1Bm3emO8;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$TYix4sK29SelnCz71-_1Bm3emO8;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$TYix4sK29SelnCz71-_1Bm3emO8;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$TYix4sK29SelnCz71-_1Bm3emO8;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->lambda$createObjectWriter$3(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

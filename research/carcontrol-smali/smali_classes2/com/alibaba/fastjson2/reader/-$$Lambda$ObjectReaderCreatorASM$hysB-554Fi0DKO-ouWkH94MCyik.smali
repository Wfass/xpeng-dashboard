.class public final synthetic Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$hysB-554Fi0DKO-ouWkH94MCyik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$hysB-554Fi0DKO-ouWkH94MCyik;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$hysB-554Fi0DKO-ouWkH94MCyik;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$hysB-554Fi0DKO-ouWkH94MCyik;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$hysB-554Fi0DKO-ouWkH94MCyik;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderCreatorASM$hysB-554Fi0DKO-ouWkH94MCyik;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM;->lambda$genMethodGetFieldReaderLCase$2(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

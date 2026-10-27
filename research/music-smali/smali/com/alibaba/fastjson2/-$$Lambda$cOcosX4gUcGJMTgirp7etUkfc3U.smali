.class public final synthetic Lcom/alibaba/fastjson2/-$$Lambda$cOcosX4gUcGJMTgirp7etUkfc3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$cOcosX4gUcGJMTgirp7etUkfc3U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/-$$Lambda$cOcosX4gUcGJMTgirp7etUkfc3U;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/-$$Lambda$cOcosX4gUcGJMTgirp7etUkfc3U;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/-$$Lambda$cOcosX4gUcGJMTgirp7etUkfc3U;->INSTANCE:Lcom/alibaba/fastjson2/-$$Lambda$cOcosX4gUcGJMTgirp7etUkfc3U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Labq;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

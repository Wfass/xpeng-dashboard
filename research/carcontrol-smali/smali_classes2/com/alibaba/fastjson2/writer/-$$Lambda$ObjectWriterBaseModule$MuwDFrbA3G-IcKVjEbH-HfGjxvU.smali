.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$MuwDFrbA3G-IcKVjEbH-HfGjxvU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$MuwDFrbA3G-IcKVjEbH-HfGjxvU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$MuwDFrbA3G-IcKVjEbH-HfGjxvU;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$MuwDFrbA3G-IcKVjEbH-HfGjxvU;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$MuwDFrbA3G-IcKVjEbH-HfGjxvU;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$MuwDFrbA3G-IcKVjEbH-HfGjxvU;

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

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->lambda$MuwDFrbA3G-IcKVjEbH-HfGjxvU(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

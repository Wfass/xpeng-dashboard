.class public final synthetic Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$ttKUrI_iU2tQ1HSDDxjP9JwMJes;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$ttKUrI_iU2tQ1HSDDxjP9JwMJes;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$ttKUrI_iU2tQ1HSDDxjP9JwMJes;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$ttKUrI_iU2tQ1HSDDxjP9JwMJes;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$ttKUrI_iU2tQ1HSDDxjP9JwMJes;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterBaseModule$ttKUrI_iU2tQ1HSDDxjP9JwMJes;

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

    invoke-static {p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule;->lambda$getObjectWriter$0(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

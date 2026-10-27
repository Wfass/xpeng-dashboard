.class public Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;
.super Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;
.source "ObjectWriterImplToString.java"


# static fields
.field public static final DIRECT:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

.field public static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;


# instance fields
.field private final direct:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;-><init>(Z)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    .line 10
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;-><init>(Z)V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->DIRECT:Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriterPrimitiveImpl;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->direct:Z

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterImplToString;->direct:Z

    if-eqz p3, :cond_1

    .line 30
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

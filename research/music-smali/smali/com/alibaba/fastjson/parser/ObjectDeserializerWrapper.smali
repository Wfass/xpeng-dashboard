.class final Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;
.super Ljava/lang/Object;
.source "ObjectDeserializerWrapper.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final raw:Lwk;


# direct methods
.method constructor <init>(Lwk;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;->raw:Lwk;

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ObjectDeserializerWrapper;->raw:Lwk;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getRawReader()Lcom/alibaba/fastjson2/u;

    move-result-object v1

    const-wide/16 v4, 0x0

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

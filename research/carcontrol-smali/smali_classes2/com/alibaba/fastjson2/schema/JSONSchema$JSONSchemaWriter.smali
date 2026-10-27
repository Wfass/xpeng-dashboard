.class Lcom/alibaba/fastjson2/schema/JSONSchema$JSONSchemaWriter;
.super Ljava/lang/Object;
.source "JSONSchema.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/schema/JSONSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONSchemaWriter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 928
    check-cast p2, Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/schema/JSONSchema;->toJSONObject()Lcom/alibaba/fastjson2/JSONObject;

    move-result-object p2

    .line 929
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->write(Lcom/alibaba/fastjson2/JSONObject;)V

    return-void
.end method

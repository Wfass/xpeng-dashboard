.class public Lcom/alibaba/fastjson/serializer/JSONSerializer;
.super Ljava/lang/Object;
.source "JSONSerializer.java"


# instance fields
.field context:Lcom/alibaba/fastjson/serializer/SerialContext;

.field public final out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

.field final raw:Lcom/alibaba/fastjson2/JSONWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 2

    .line 20
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 29
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 34
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    return-void
.end method

.method public static write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Object;)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 42
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONWriter;->getContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p2

    .line 44
    sget-object v0, Lcom/alibaba/fastjson/serializer/JSONSerializer$1;->$SwitchMap$com$alibaba$fastjson$serializer$SerializerFeature:[I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 91
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->UseSingleQuotes:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto/16 :goto_0

    :pswitch_1
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 88
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto/16 :goto_0

    .line 85
    :pswitch_2
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 82
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 79
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 76
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_6
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 73
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_7
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 70
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_8
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 67
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_9
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 64
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_a
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 61
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_b
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 58
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_c
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 55
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_d
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 52
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_e
    new-array p1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 49
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_f
    const-string p1, "iso8601"

    .line 46
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string p2, "not support"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAfterFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getAfterFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBeforeFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getBeforeFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-object v0
.end method

.method public getMapping()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method public getNameFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getNameFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getPropertyFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValueFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getValueFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-object v0
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/lang/Object;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public write(Z)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeBool(Z)V

    return-void
.end method

.method public final writeAs(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONWriter;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p2

    .line 124
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-interface {p2, v0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public writeNull()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void
.end method

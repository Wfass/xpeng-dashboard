.class public Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/lang/Object;
.source "SerializeWriter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;
    }
.end annotation


# instance fields
.field final afterFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation
.end field

.field final beforeFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation
.end field

.field config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field final nameFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation
.end field

.field final propertyFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation
.end field

.field final raw:Lcom/alibaba/fastjson2/JSONWriter;

.field final valueFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->of()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    .line 42
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 44
    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p2

    .line 43
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p2

    .line 42
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 51
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    .line 56
    new-instance p1, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->propertyFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    .line 57
    new-instance p1, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->valueFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    .line 58
    new-instance p1, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nameFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    .line 59
    new-instance p1, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beforeFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    .line 60
    new-instance p1, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->afterFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2

    .line 30
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->global:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 32
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/JSON;->createWriteContext(Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONWriter;->of(Lcom/alibaba/fastjson2/JSONWriter$Context;)Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Lcom/alibaba/fastjson2/JSONWriter;)V

    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    return-object p0
.end method

.method public close()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    return-void
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

    .line 96
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->afterFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

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

    .line 92
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beforeFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

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

    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->nameFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    return-object v0
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

    .line 80
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->propertyFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

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

    .line 84
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->valueFilters:Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;

    return-object v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    .line 180
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter$1;->$SwitchMap$com$alibaba$fastjson$serializer$SerializerFeature:[I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 233
    :pswitch_0
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteBigDecimalAsPlain:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 230
    :pswitch_1
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 227
    :pswitch_2
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 224
    :pswitch_3
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 221
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 218
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 215
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 212
    :pswitch_7
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 209
    :pswitch_8
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 206
    :pswitch_9
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 203
    :pswitch_a
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 200
    :pswitch_b
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 197
    :pswitch_c
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 194
    :pswitch_d
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 191
    :pswitch_e
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 188
    :pswitch_f
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 185
    :pswitch_10
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteMapNullValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    goto :goto_0

    .line 182
    :pswitch_11
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    :goto_0
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->isEnabled(Lcom/alibaba/fastjson2/JSONWriter$Feature;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
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

.method public toBytes(Ljava/lang/String;)[B
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public toBytes(Ljava/nio/charset/Charset;)[B
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(C)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(C)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt64(J)V

    return-void
.end method

.method public writeNull()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void
.end method

.method public writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/Writer;)V

    return-void
.end method

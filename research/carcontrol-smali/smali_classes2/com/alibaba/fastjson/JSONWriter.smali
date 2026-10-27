.class public Lcom/alibaba/fastjson/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# instance fields
.field private final out:Ljava/io/Writer;

.field final raw:Lcom/alibaba/fastjson2/JSONWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONWriter;->out:Ljava/io/Writer;

    .line 14
    invoke-static {}, Lcom/alibaba/fastjson2/JSONWriter;->ofUTF8()Lcom/alibaba/fastjson2/JSONWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->close()V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/alibaba/fastjson/JSONWriter$1;->$SwitchMap$com$alibaba$fastjson$serializer$SerializerFeature:[I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    const/4 p2, 0x0

    .line 65
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BeanToArray:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v1, p1, p2

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    .line 60
    sget-object p1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_2
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 53
    :pswitch_3
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 50
    :pswitch_4
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 47
    :pswitch_5
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 44
    :pswitch_6
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 41
    :pswitch_7
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 38
    :pswitch_8
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 35
    :pswitch_9
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 32
    :pswitch_a
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 29
    :pswitch_b
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    .line 26
    :pswitch_c
    sget-object p1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->config(Lcom/alibaba/fastjson2/JSONWriter$Feature;Z)V

    goto :goto_0

    :pswitch_d
    if-eqz p2, :cond_0

    const-string p1, "iso8601"

    .line 22
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setDateFormat(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter;->flushTo(Ljava/io/Writer;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;
.super Ljava/lang/Object;
.source "ObjectWriterMisc.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterMisc;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 20
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    .line 21
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 24
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 p4, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p5

    sparse-switch p5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p5, "java.net.InetSocketAddress"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x6

    goto :goto_0

    :sswitch_1
    const-string p5, "java.text.SimpleDateFormat"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x5

    goto :goto_0

    :sswitch_2
    const-string p5, "java.net.Inet4Address"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, 0x4

    goto :goto_0

    :sswitch_3
    const-string p5, "com.fasterxml.jackson.databind.node.ArrayNode"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4

    goto :goto_0

    :cond_4
    const/4 p4, 0x3

    goto :goto_0

    :sswitch_4
    const-string p5, "java.net.Inet6Address"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_5

    goto :goto_0

    :cond_5
    const/4 p4, 0x2

    goto :goto_0

    :sswitch_5
    const-string p5, "net.sf.json.JSONNull"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_6

    goto :goto_0

    :cond_6
    const/4 p4, 0x1

    goto :goto_0

    :sswitch_6
    const-string p5, "java.util.regex.Pattern"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_7

    goto :goto_0

    :cond_7
    const/4 p4, 0x0

    :goto_0
    packed-switch p4, :pswitch_data_0

    .line 63
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support class : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :pswitch_0
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    const-string p3, "address"

    .line 43
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 45
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    const-string p3, "port"

    .line 47
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeColon()V

    .line 49
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void

    .line 33
    :pswitch_1
    check-cast p2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 55
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->isUTF8()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 57
    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw([B)V

    goto :goto_1

    .line 59
    :cond_8
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeRaw(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 30
    :pswitch_3
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 26
    :pswitch_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 36
    :pswitch_5
    check-cast p2, Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p2

    .line 66
    :goto_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x796d94d7 -> :sswitch_6
        0xf3db8ab -> :sswitch_5
        0x1a7eda8f -> :sswitch_4
        0x223ea48e -> :sswitch_3
        0x4abc80d1 -> :sswitch_2
        0x5bc5408c -> :sswitch_1
        0x5e7d83d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

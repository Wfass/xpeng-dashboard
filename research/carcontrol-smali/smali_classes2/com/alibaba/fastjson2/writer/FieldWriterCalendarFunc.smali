.class final Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;
.super Lcom/alibaba/fastjson2/writer/FieldWriterDate;
.source "FieldWriterCalendarFunc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/fastjson2/writer/FieldWriterDate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 24
    const-class v7, Ljava/util/Calendar;

    const-class v8, Ljava/util/Calendar;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterDate;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p9

    .line 25
    iput-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->function:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFunction()Ljava/util/function/Function;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->function:Ljava/util/function/Function;

    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)Z"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->function:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 51
    iget-wide v1, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->features:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->getFeatures()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 52
    sget-object p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->writeFieldName(Lcom/alibaba/fastjson2/JSONWriter;)V

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 61
    :cond_1
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;J)V

    return v0
.end method

.method public writeValue(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONWriter;",
            "TT;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->function:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->writeNull()V

    return-void

    .line 42
    :cond_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;->writeDate(Lcom/alibaba/fastjson2/JSONWriter;ZJ)V

    return-void
.end method

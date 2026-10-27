.class Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;
.super Ljava/util/ArrayList;
.source "SerializeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/serializer/SerializeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/fastjson/serializer/SerializeWriter;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;->this$0:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter$ListWrapper;->this$0:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->raw:Lcom/alibaba/fastjson2/JSONWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONWriter;->getContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    .line 105
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-eqz v1, :cond_0

    .line 106
    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setPropertyFilter(Lcom/alibaba/fastjson2/filter/PropertyFilter;)V

    .line 109
    :cond_0
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-eqz v1, :cond_1

    .line 110
    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setValueFilter(Lcom/alibaba/fastjson2/filter/ValueFilter;)V

    .line 113
    :cond_1
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v1, :cond_2

    .line 114
    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setNameFilter(Lcom/alibaba/fastjson2/filter/NameFilter;)V

    .line 117
    :cond_2
    instance-of v1, p1, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    if-eqz v1, :cond_3

    .line 118
    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson2/filter/PropertyPreFilter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setPropertyPreFilter(Lcom/alibaba/fastjson2/filter/PropertyPreFilter;)V

    .line 121
    :cond_3
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz v1, :cond_4

    .line 122
    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setBeforeFilter(Lcom/alibaba/fastjson2/filter/BeforeFilter;)V

    .line 125
    :cond_4
    instance-of v1, p1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz v1, :cond_5

    .line 126
    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setAfterFilter(Lcom/alibaba/fastjson2/filter/AfterFilter;)V

    .line 129
    :cond_5
    instance-of v1, p1, Lcom/alibaba/fastjson2/filter/LabelFilter;

    if-eqz v1, :cond_6

    .line 130
    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson2/filter/LabelFilter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONWriter$Context;->setLabelFilter(Lcom/alibaba/fastjson2/filter/LabelFilter;)V

    .line 133
    :cond_6
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

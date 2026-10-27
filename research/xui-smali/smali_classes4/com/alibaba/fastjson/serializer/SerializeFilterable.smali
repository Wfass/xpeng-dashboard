.class public abstract Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.super Ljava/lang/Object;
.source "SerializeFilterable.java"


# instance fields
.field protected afterFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected beforeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected contextValueFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/ContextValueFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected labelFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/LabelFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected nameFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected propertyFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected propertyPreFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected valueFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected writeDirect:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 15
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 95
    if-nez p1, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getPropertyPreFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/NameFilter;

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getNameFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getValueFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_3
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getContextValueFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_4
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    if-eqz v0, :cond_5

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getPropertyFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getBeforeFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_6
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    if-eqz v0, :cond_7

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getAfterFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/AfterFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_7
    instance-of v0, p1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    if-eqz v0, :cond_8

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->getLabelFilters()Ljava/util/List;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/alibaba/fastjson/serializer/LabelFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_8
    return-void
.end method

.method public apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "propertyValue"    # Ljava/lang/Object;

    .line 158
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 160
    .local v2, "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    return v1

    .line 163
    .end local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    :cond_0
    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyFilter;

    .line 168
    .restart local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    invoke-interface {v2, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/PropertyFilter;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    return v1

    .line 171
    .end local v2    # "propertyFilter":Lcom/alibaba/fastjson/serializer/PropertyFilter;
    :cond_2
    goto :goto_1

    .line 174
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    .line 135
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 137
    .local v2, "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    invoke-interface {v2, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    return v1

    .line 140
    .end local v2    # "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    :cond_0
    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;

    .line 145
    .restart local v2    # "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    invoke-interface {v2, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/PropertyPreFilter;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    return v1

    .line 148
    .end local v2    # "filter":Lcom/alibaba/fastjson/serializer/PropertyPreFilter;
    :cond_2
    goto :goto_1

    .line 151
    :cond_3
    const/4 v0, 0x1

    return v0
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

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->afterFilters:Ljava/util/List;

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

    .line 23
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->beforeFilters:Ljava/util/List;

    return-object v0
.end method

.method public getContextValueFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/ContextValueFilter;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    return-object v0
.end method

.method public getLabelFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/LabelFilter;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->labelFilters:Ljava/util/List;

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

    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

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

    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyPreFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyPreFilters:Ljava/util/List;

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

    .line 86
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    return-object v0
.end method

.method protected processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "propertyValue"    # Ljava/lang/Object;

    .line 182
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 184
    .local v1, "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 185
    .end local v1    # "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/NameFilter;

    .line 190
    .restart local v1    # "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    invoke-interface {v1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/NameFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 191
    .end local v1    # "nameFilter":Lcom/alibaba/fastjson/serializer/NameFilter;
    goto :goto_1

    .line 194
    :cond_1
    return-object p3
.end method

.method protected processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "beanContext"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "propertyValue"    # Ljava/lang/Object;

    .line 202
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "beanContext"    # Lcom/alibaba/fastjson/serializer/BeanContext;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "propertyValue"    # Ljava/lang/Object;
    .param p6, "features"    # I

    .line 212
    if-eqz p5, :cond_5

    .line 213
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, p6, v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 214
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFeatures()I

    move-result v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p5, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/BeanContext;->isJsonDirect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    move-object v0, p5

    check-cast v0, Ljava/lang/String;

    .line 229
    .local v0, "jsonStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    .end local v0    # "jsonStr":Ljava/lang/String;
    goto :goto_2

    .line 216
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 217
    .local v0, "format":Ljava/lang/String;
    instance-of v1, p5, Ljava/lang/Number;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 219
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_3
    if-eqz v0, :cond_4

    .line 223
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    .line 225
    :cond_4
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 227
    .end local v0    # "format":Ljava/lang/String;
    :goto_1
    nop

    .line 233
    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 235
    .local v1, "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    invoke-interface {v1, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 236
    .end local v1    # "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    goto :goto_3

    .line 239
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 240
    .local v0, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    if-eqz v0, :cond_7

    .line 241
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/ValueFilter;

    .line 242
    .local v2, "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    invoke-interface {v2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ValueFilter;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 243
    .end local v2    # "valueFilter":Lcom/alibaba/fastjson/serializer/ValueFilter;
    goto :goto_4

    .line 246
    :cond_7
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 247
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    .line 248
    .local v2, "valueFilter":Lcom/alibaba/fastjson/serializer/ContextValueFilter;
    invoke-interface {v2, p2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ContextValueFilter;->process(Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 249
    .end local v2    # "valueFilter":Lcom/alibaba/fastjson/serializer/ContextValueFilter;
    goto :goto_5

    .line 252
    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 253
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/serializer/ContextValueFilter;

    .line 254
    .restart local v2    # "valueFilter":Lcom/alibaba/fastjson/serializer/ContextValueFilter;
    invoke-interface {v2, p2, p3, p4, p5}, Lcom/alibaba/fastjson/serializer/ContextValueFilter;->process(Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    .line 255
    .end local v2    # "valueFilter":Lcom/alibaba/fastjson/serializer/ContextValueFilter;
    goto :goto_6

    .line 258
    :cond_9
    return-object p5
.end method

.method protected writeDirect(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .locals 1
    .param p1, "jsonBeanDeser"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 267
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeDirect:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->writeDirect:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeDirect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

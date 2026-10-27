.class final Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiNameSegment"
.end annotation


# instance fields
.field final nameHashCodes:[J

.field final nameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final names:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 604
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    .line 606
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->nameHashCodes:[J

    .line 607
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->nameSet:Ljava/util/Set;

    const/4 v0, 0x0

    .line 608
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->nameHashCodes:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 610
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->nameSet:Ljava/util/Set;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 8

    .line 654
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->current:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v0, v0, Lcom/alibaba/fastjson2/JSONPathFilter;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->current:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v0, v0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiIndexSegment;

    if-eqz v0, :cond_1

    .line 659
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    return-void

    .line 663
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    .line 664
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 665
    check-cast p1, Ljava/util/Map;

    .line 666
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 667
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 668
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 669
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_2
    iput-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 675
    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_8

    .line 676
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->next:Lcom/alibaba/fastjson2/JSONPathSegment;

    if-nez v0, :cond_7

    .line 677
    check-cast p1, Ljava/util/Collection;

    .line 678
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 679
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 680
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_4

    .line 681
    check-cast v2, Ljava/util/Map;

    .line 682
    new-instance v3, Lcom/alibaba/fastjson2/JSONArray;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 683
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 684
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 685
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 687
    :cond_5
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 690
    :cond_6
    iput-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 694
    :cond_7
    iput-object p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 698
    :cond_8
    iget-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->path:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    .line 701
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 702
    :goto_3
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 703
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->nameHashCodes:[J

    aget-wide v3, v3, v1

    invoke-interface {v0, v3, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    .line 706
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 708
    :cond_9
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 710
    :cond_a
    iput-object v2, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void
.end method

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 6

    .line 616
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 620
    :goto_0
    instance-of v1, v0, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 621
    check-cast v0, Ljava/util/Map;

    .line 622
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 623
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 624
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 625
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 627
    :cond_1
    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 631
    :cond_2
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_3

    .line 633
    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void

    .line 637
    :cond_3
    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->path:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONPath;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 638
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    .line 640
    new-instance v3, Lcom/alibaba/fastjson2/JSONArray;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 641
    :goto_2
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->names:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 642
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSegment$MultiNameSegment;->nameHashCodes:[J

    aget-wide v4, v4, v2

    invoke-interface {v1, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 645
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 647
    :cond_4
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 649
    :cond_5
    iput-object v3, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-void
.end method

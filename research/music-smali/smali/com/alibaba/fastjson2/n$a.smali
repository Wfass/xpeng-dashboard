.class final Lcom/alibaba/fastjson2/n$a;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/alibaba/fastjson2/n$a;

.field static final b:Lcom/alibaba/fastjson2/n$a;


# instance fields
.field final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 716
    new-instance v0, Lcom/alibaba/fastjson2/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/n$a;-><init>(Z)V

    sput-object v0, Lcom/alibaba/fastjson2/n$a;->a:Lcom/alibaba/fastjson2/n$a;

    .line 717
    new-instance v0, Lcom/alibaba/fastjson2/n$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/n$a;-><init>(Z)V

    sput-object v0, Lcom/alibaba/fastjson2/n$a;->b:Lcom/alibaba/fastjson2/n$a;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    .line 722
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/n$a;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 7

    .line 727
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 732
    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 733
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 737
    :cond_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 738
    check-cast v0, Ljava/util/Map;

    .line 739
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 740
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 741
    iget-boolean v4, p0, Lcom/alibaba/fastjson2/n$a;->c:Z

    if-eqz v4, :cond_2

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 742
    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONArray;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 744
    :cond_2
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 747
    :cond_3
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v0, :cond_4

    .line 748
    new-instance v0, Lcom/alibaba/fastjson2/g$e;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/g$e;-><init>(Ljava/util/List;)V

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_2

    .line 750
    :cond_4
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 752
    :goto_2
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 756
    :cond_5
    instance-of v2, v0, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 757
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 758
    new-instance v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 759
    iget-object v5, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/alibaba/fastjson2/n$a;->c:Z

    if-nez v5, :cond_8

    .line 760
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 761
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 762
    instance-of v5, v0, Ljava/util/Map;

    if-eqz v5, :cond_6

    .line 763
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson2/JSONArray;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 765
    :cond_6
    invoke-virtual {v4, v0}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 768
    :cond_7
    iput-object v4, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 769
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 773
    :cond_8
    iget-object v3, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz v3, :cond_9

    .line 774
    new-instance v0, Lcom/alibaba/fastjson2/g$e;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/g$e;-><init>(Ljava/util/List;)V

    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_5

    .line 776
    :cond_9
    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 778
    :goto_5
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 782
    :cond_a
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_b

    .line 784
    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 785
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 789
    :cond_b
    instance-of v2, v0, Lcom/alibaba/fastjson2/g$e;

    if-eqz v2, :cond_10

    .line 790
    check-cast v0, Lcom/alibaba/fastjson2/g$e;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$e;->a:Ljava/util/List;

    .line 791
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 792
    iget-object v4, p1, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-nez v4, :cond_f

    .line 793
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 794
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 795
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/alibaba/fastjson2/n$a;->c:Z

    if-nez v5, :cond_c

    .line 796
    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONArray;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 797
    :cond_c
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_d

    .line 798
    check-cast v4, Ljava/util/Collection;

    .line 799
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONArray;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    .line 801
    :cond_d
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 804
    :cond_e
    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 805
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 809
    :cond_f
    new-instance v2, Lcom/alibaba/fastjson2/g$e;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/g$e;-><init>(Ljava/util/List;)V

    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 810
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 814
    :cond_10
    iget-object v2, p1, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    .line 815
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v2

    .line 816
    invoke-interface {v2}, Laem;->e_()Ljava/util/List;

    move-result-object v2

    .line 817
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 818
    new-instance v5, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    :goto_8
    if-ge v3, v4, :cond_11

    .line 820
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labq;

    invoke-virtual {v6, v0}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 821
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 823
    :cond_11
    iput-object v5, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 824
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 8

    .line 925
    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/g$a;->h:Z

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/n$a;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void

    .line 930
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 931
    iput-boolean v1, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 935
    :cond_1
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    const-string v2, "TODO"

    if-eqz v0, :cond_7

    .line 936
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    const/16 v1, -0x5a

    .line 937
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    :goto_0
    const/16 v1, -0x5b

    .line 938
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v1

    if-nez v1, :cond_4

    .line 939
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 940
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v1

    .line 942
    iget-boolean v2, p0, Lcom/alibaba/fastjson2/n$a;->c:Z

    if-eqz v2, :cond_3

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    .line 943
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 945
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 950
    :cond_4
    iput-object v0, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 954
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz p1, :cond_6

    return-void

    .line 959
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 962
    :cond_7
    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-nez v0, :cond_8

    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->a:Lcom/alibaba/fastjson2/g;

    iget-wide v3, v0, Lcom/alibaba/fastjson2/g;->e:J

    sget-object v0, Lcom/alibaba/fastjson2/g$b;->AlwaysReturnList:Lcom/alibaba/fastjson2/g$b;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/g$b;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    .line 963
    :goto_1
    new-instance v3, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 965
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result v4

    const/16 v5, 0x2c

    const/16 v6, 0x5d

    const/16 v7, 0x5b

    if-eqz v4, :cond_14

    .line 968
    :cond_9
    :goto_2
    iget-char v2, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_a

    .line 969
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto :goto_3

    .line 973
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->O()Z

    .line 975
    iget-char v2, p1, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v4, 0x22

    if-eq v2, v4, :cond_11

    const/16 v4, 0x27

    if-eq v2, v4, :cond_11

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_10

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_10

    if-eq v2, v7, :cond_f

    if-eq v2, v6, :cond_e

    const/16 v4, 0x66

    if-eq v2, v4, :cond_d

    const/16 v4, 0x6e

    if-eq v2, v4, :cond_c

    const/16 v4, 0x74

    if-eq v2, v4, :cond_d

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_b

    packed-switch v2, :pswitch_data_0

    .line 1013
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p1, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 995
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aU()Ljava/util/Map;

    move-result-object v2

    goto :goto_4

    .line 1006
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aQ()V

    const/4 v2, 0x0

    goto :goto_4

    .line 1003
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aX()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    .line 1010
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 1030
    :goto_3
    iput-object v3, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 1031
    iput-boolean v1, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 992
    :cond_f
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aZ()Ljava/util/List;

    move-result-object v2

    goto :goto_4

    .line 988
    :cond_10
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aM()V

    .line 989
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->bc()Ljava/lang/Number;

    move-result-object v2

    goto :goto_4

    .line 999
    :cond_11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v2

    .line 1016
    :goto_4
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_13

    if-eqz v0, :cond_12

    .line 1018
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1020
    :cond_12
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 1023
    :cond_13
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    :goto_5
    iget-char v2, p1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v2, v5, :cond_9

    .line 1027
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto/16 :goto_2

    .line 1035
    :cond_14
    iget-char v0, p1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v7, :cond_18

    .line 1036
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 1038
    :cond_15
    :goto_6
    iget-char v0, p1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v6, :cond_17

    .line 1039
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 1049
    iget-object p1, p2, Lcom/alibaba/fastjson2/g$a;->d:Lcom/alibaba/fastjson2/n;

    if-eqz p1, :cond_16

    .line 1050
    new-instance p1, Lcom/alibaba/fastjson2/g$e;

    invoke-direct {p1, v3}, Lcom/alibaba/fastjson2/g$e;-><init>(Ljava/util/List;)V

    iput-object p1, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    goto :goto_7

    .line 1052
    :cond_16
    iput-object v3, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 1054
    :goto_7
    iput-boolean v1, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 1042
    :cond_17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v0

    .line 1043
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    iget-char v0, p1, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v5, :cond_15

    .line 1045
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    goto :goto_6

    .line 1058
    :cond_18
    new-instance p1, Lcom/alibaba/fastjson2/c;

    invoke-direct {p1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)V
    .locals 2

    .line 847
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 848
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 849
    :cond_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 851
    :goto_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 852
    check-cast p1, Ljava/util/Map;

    .line 853
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 854
    check-cast v0, Ljava/util/Map$Entry;

    .line 855
    invoke-interface {v0, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void

    .line 861
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 862
    check-cast p1, Ljava/util/List;

    invoke-static {p1, p2}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    return-void

    :cond_3
    if-eqz p1, :cond_5

    .line 866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 867
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    .line 869
    invoke-static {p1, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void

    .line 874
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UnsupportedOperation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;)Z
    .locals 2

    .line 829
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 830
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 831
    :cond_0
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 833
    :goto_0
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 834
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return v1

    .line 838
    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 839
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return v1

    .line 843
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

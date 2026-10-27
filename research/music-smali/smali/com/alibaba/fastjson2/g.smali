.class public abstract Lcom/alibaba/fastjson2/g;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/g$b;,
        Lcom/alibaba/fastjson2/g$d;,
        Lcom/alibaba/fastjson2/g$c;,
        Lcom/alibaba/fastjson2/g$e;,
        Lcom/alibaba/fastjson2/g$a;
    }
.end annotation


# static fields
.field static final a:Lcom/alibaba/fastjson2/u$c;


# instance fields
.field b:Lcom/alibaba/fastjson2/u$c;

.field c:Lcom/alibaba/fastjson2/ab$a;

.field final d:Ljava/lang/String;

.field final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/g;->a:Lcom/alibaba/fastjson2/u$c;

    return-void
.end method

.method protected varargs constructor <init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/g$b;)V
    .locals 5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/fastjson2/g;->d:Ljava/lang/String;

    .line 27
    array-length p1, p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p2, v2

    .line 28
    iget-wide v3, v3, Lcom/alibaba/fastjson2/g$b;->mask:J

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iput-wide v0, p0, Lcom/alibaba/fastjson2/g;->e:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;
    .locals 1

    const-string v0, "#-1"

    .line 447
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    sget-object p0, Lcom/alibaba/fastjson2/g$c;->f:Lcom/alibaba/fastjson2/g$c;

    return-object p0

    .line 451
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/m;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/m;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lcom/alibaba/fastjson2/g$b;

    .line 452
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/m;->a([Lcom/alibaba/fastjson2/g$b;)Lcom/alibaba/fastjson2/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object p0

    .line 55
    invoke-static {p1}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/g;->a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 129
    sget-object v2, Lcom/alibaba/fastjson2/g$d;->f:Lcom/alibaba/fastjson2/g$d;

    const-string v3, "$"

    invoke-virtual {v2, v0, v1, v3, p0}, Lcom/alibaba/fastjson2/g$d;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method static b(Lcom/alibaba/fastjson2/u;)Lcom/alibaba/fastjson2/j$r;
    .locals 8

    .line 842
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    const-string v1, "with"

    const-string v2, "rlike"

    const-string v3, "like"

    const-string v4, "in"

    const-string v5, "between"

    const/16 v6, 0x3d

    const-string v7, "not support operator : "

    sparse-switch v0, :sswitch_data_0

    .line 990
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 991
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 961
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v0

    const-string v2, "starts"

    .line 962
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 967
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p0

    .line 968
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 971
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->STARTS_WITH:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 969
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_1
    new-instance p0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 938
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 939
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p0

    .line 940
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 941
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->RLIKE:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 943
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 898
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 899
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nin"

    .line 901
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->NOT_IN:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    :cond_3
    const-string v1, "not"

    .line 906
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 910
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 911
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p0

    .line 912
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->NOT_LIKE:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 914
    :cond_4
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 915
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->NOT_RLIKE:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 916
    :cond_5
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->NOT_IN:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 918
    :cond_6
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 919
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->NOT_BETWEEN:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 921
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_8
    new-instance p0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 887
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 888
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p0

    .line 889
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 890
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->LIKE:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 892
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 928
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p0

    .line 929
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 930
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->IN:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 932
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 977
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ends"

    .line 978
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 982
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 983
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p0

    .line 984
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 987
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->ENDS_WITH:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 985
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_c
    new-instance p0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p0

    .line 949
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->M()J

    .line 950
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object p0

    .line 951
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 952
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->BETWEEN:Lcom/alibaba/fastjson2/j$r;

    goto/16 :goto_0

    .line 954
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 878
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v6, :cond_e

    .line 879
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 880
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->GE:Lcom/alibaba/fastjson2/j$r;

    goto :goto_0

    .line 882
    :cond_e
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->GT:Lcom/alibaba/fastjson2/j$r;

    goto :goto_0

    .line 856
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 857
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_f

    .line 858
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 859
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->REG_MATCH:Lcom/alibaba/fastjson2/j$r;

    goto :goto_0

    .line 860
    :cond_f
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v6, :cond_10

    .line 861
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 862
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->EQ:Lcom/alibaba/fastjson2/j$r;

    goto :goto_0

    .line 864
    :cond_10
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->EQ:Lcom/alibaba/fastjson2/j$r;

    goto :goto_0

    .line 844
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 845
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v6, :cond_11

    .line 846
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 847
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->LE:Lcom/alibaba/fastjson2/j$r;

    goto :goto_0

    .line 848
    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_12

    .line 849
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 850
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->NE:Lcom/alibaba/fastjson2/j$r;

    goto :goto_0

    .line 852
    :cond_12
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->LT:Lcom/alibaba/fastjson2/j$r;

    goto :goto_0

    .line 868
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 869
    iget-char v0, p0, Lcom/alibaba/fastjson2/u;->f:C

    if-ne v0, v6, :cond_13

    .line 870
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/u;->E()V

    .line 871
    sget-object p0, Lcom/alibaba/fastjson2/j$r;->NE:Lcom/alibaba/fastjson2/j$r;

    :goto_0
    return-object p0

    .line 873
    :cond_13
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support operator : !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Lcom/alibaba/fastjson2/u;->f:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_a
        0x3c -> :sswitch_9
        0x3d -> :sswitch_8
        0x3e -> :sswitch_7
        0x42 -> :sswitch_6
        0x45 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4c -> :sswitch_3
        0x4e -> :sswitch_2
        0x52 -> :sswitch_1
        0x53 -> :sswitch_0
        0x62 -> :sswitch_6
        0x65 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6c -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/g;
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/alibaba/fastjson2/g;->c:Lcom/alibaba/fastjson2/ab$a;

    return-object p0
.end method

.method public a(Lcom/alibaba/fastjson2/u$c;)Lcom/alibaba/fastjson2/g;
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/alibaba/fastjson2/g;->b:Lcom/alibaba/fastjson2/u$c;

    return-object p0
.end method

.method public abstract a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 226
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {p2}, Lcom/alibaba/fastjson2/JSONArray;->of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_0
    instance-of p1, v0, Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 233
    check-cast v0, Ljava/util/Collection;

    .line 234
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 141
    const-class v3, Ljava/lang/String;

    if-eq v0, v3, :cond_2

    const-class v3, Ljava/lang/Boolean;

    if-eq v0, v3, :cond_2

    const-class v3, Ljava/lang/Character;

    if-eq v0, v3, :cond_2

    const-class v3, Ljava/util/UUID;

    if-eq v0, v3, :cond_2

    instance-of v0, p4, Ljava/lang/Enum;

    if-nez v0, :cond_2

    instance-of v0, p4, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p4, Ljava/util/Date;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    return-void

    .line 154
    :cond_3
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    instance-of v0, p4, Ljava/util/Map;

    const-string v3, "."

    if-eqz v0, :cond_6

    .line 157
    check-cast p4, Ljava/util/Map;

    .line 159
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 160
    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 163
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson2/g;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void

    .line 171
    :cond_6
    instance-of v0, p4, Ljava/util/Collection;

    const-string v4, "]"

    const-string v5, "["

    if-eqz v0, :cond_8

    .line 172
    check-cast p4, Ljava/util/Collection;

    .line 175
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/alibaba/fastjson2/g;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/2addr v1, v2

    goto :goto_3

    :cond_7
    return-void

    .line 184
    :cond_8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 187
    invoke-static {p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_9

    .line 190
    invoke-static {p4, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/alibaba/fastjson2/g;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void

    .line 199
    :cond_a
    invoke-static {v0}, Lahq;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 203
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/g;->d()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    .line 204
    instance-of v1, v0, Laez;

    if-eqz v1, :cond_d

    .line 205
    check-cast v0, Laez;

    .line 208
    :try_start_0
    invoke-virtual {v0, p4}, Laez;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p4

    .line 209
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_c
    :goto_5
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson2/g;->a(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 218
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "toJSON error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_d
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Ljava/lang/Object;)Z
.end method

.method public c()Lcom/alibaba/fastjson2/u$c;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->b:Lcom/alibaba/fastjson2/u$c;

    if-nez v0, :cond_0

    .line 282
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/g;->b:Lcom/alibaba/fastjson2/u$c;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->b:Lcom/alibaba/fastjson2/u$c;

    return-object v0
.end method

.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public d()Lcom/alibaba/fastjson2/ab$a;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->c:Lcom/alibaba/fastjson2/ab$a;

    if-nez v0, :cond_0

    .line 294
    invoke-static {}, Lcom/alibaba/fastjson2/d;->b()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/g;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->c:Lcom/alibaba/fastjson2/ab$a;

    return-object v0
.end method

.method public abstract d(Ljava/lang/Object;)Z
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/fastjson2/g;->d:Ljava/lang/String;

    return-object v0
.end method

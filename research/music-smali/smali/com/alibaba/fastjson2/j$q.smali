.class final Lcom/alibaba/fastjson2/j$q;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "q"
.end annotation


# instance fields
.field final a:Lcom/alibaba/fastjson2/j$r;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;Ljava/lang/String;)V
    .locals 0

    .line 726
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    .line 727
    iput-object p7, p0, Lcom/alibaba/fastjson2/j$q;->a:Lcom/alibaba/fastjson2/j$r;

    .line 728
    iput-object p8, p0, Lcom/alibaba/fastjson2/j$q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 3

    .line 737
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 741
    :cond_0
    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson2/j$q;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    .line 743
    sget-object v0, Lcom/alibaba/fastjson2/j$1;->a:[I

    iget-object v2, p0, Lcom/alibaba/fastjson2/j$q;->a:Lcom/alibaba/fastjson2/j$r;

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/j$r;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 757
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-gtz p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :pswitch_1
    if-gez p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :pswitch_2
    if-ltz p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :pswitch_3
    if-lez p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    :pswitch_4
    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :pswitch_5
    if-nez p1, :cond_6

    move v1, v2

    :cond_6
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b()Z
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$q;->a:Lcom/alibaba/fastjson2/j$r;

    sget-object v1, Lcom/alibaba/fastjson2/j$r;->NE:Lcom/alibaba/fastjson2/j$r;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

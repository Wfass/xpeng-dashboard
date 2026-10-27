.class Lve;
.super Lvw;
.source "FieldReaderInt64ValueField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lvw<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Long;Laai;Ljava/lang/reflect/Field;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 14
    invoke-direct/range {v0 .. v10}, Lvw;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lve;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    double-to-long p2, p2

    .line 40
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lve;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;F)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    float-to-long v0, p2

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lve;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-static {p2}, Labo;->f(Ljava/lang/Object;)J

    move-result-wide v4

    .line 47
    iget-object p2, p0, Lve;->l:Laai;

    if-eqz p2, :cond_0

    .line 48
    iget-object p2, p0, Lve;->l:Laai;

    invoke-virtual {p2, v4, v5}, Laai;->b(J)V

    .line 51
    :cond_0
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lve;->i:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide v4

    .line 21
    iget-object p1, p0, Lve;->l:Laai;

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lve;->l:Laai;

    invoke-virtual {p1, v4, v5}, Laai;->b(J)V

    .line 25
    :cond_0
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lve;->i:J

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

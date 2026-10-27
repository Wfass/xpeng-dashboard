.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$18;
.super Lcom/O000000o/O000000o/O000o000;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/O000o000<",
        "Lcom/O000000o/O000000o/O00oOooO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$26;->O000000o:[I

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/O000000o/O000000o/O00000o/O00000o0;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/O000000o/O000000o/O000O0o0;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O000O0o0;-><init>()V

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o0()V

    :goto_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oO()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000O0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$18;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/String;Lcom/O000000o/O000000o/O00oOooO;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/O000000o/O000000o/O0000o00;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O0000o00;-><init>()V

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o()V

    :goto_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oO()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$18;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/O000000o/O000000o/O0000o00;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo()V

    sget-object p1, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    return-object p1

    :pswitch_3
    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000OOo()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000OOo()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    new-instance v1, Lcom/O000000o/O000000o/O00000Oo/O0000OOo;

    invoke-direct {v1, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000OOo;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/Number;)V

    return-object v0

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

.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Lcom/O000000o/O000000o/O00oOooO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00oOooO;->O0000oO()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00oOooO;->O0000oO0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00oOooO;->O0000oo0()Lcom/O000000o/O000000o/O000OO0o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O000OO0o;->O0000ooo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O000OO0o;->O00000o0()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/Number;)Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/O000000o/O000000o/O000OO0o;->O00000Oo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O000OO0o;->O0000o0()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Z)Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/O000000o/O000000o/O000OO0o;->O00000o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00oOooO;->O0000o0o()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00oOooO;->O0000oOo()Lcom/O000000o/O000000o/O0000o00;

    move-result-object p2

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O0000o00;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O00oOooO;

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$18;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Lcom/O000000o/O000000o/O00oOooO;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00oOooO;->O0000o()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o()Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00oOooO;->O0000oOO()Lcom/O000000o/O000000o/O000O0o0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O000O0o0;->O00000Oo()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O00oOooO;

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$18;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Lcom/O000000o/O000000o/O00oOooO;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oO()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void
.end method

.method public bridge synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/O000000o/O000000o/O00oOooO;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$18;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Lcom/O000000o/O000000o/O00oOooO;)V

    return-void
.end method

.method public synthetic O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$18;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p1

    return-object p1
.end method

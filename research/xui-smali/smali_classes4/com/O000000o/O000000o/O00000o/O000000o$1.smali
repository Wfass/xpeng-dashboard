.class final Lcom/O000000o/O000000o/O00000o/O000000o$1;
.super Lcom/O000000o/O000000o/O00000Oo/O0000O0o;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000o/O000000o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O0000O0o;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000o;

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000o;->O0000o0O()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    :goto_0
    invoke-static {p1, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;I)I

    return-void

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    goto :goto_0

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o0(Lcom/O000000o/O000000o/O00000o/O000000o;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o(Lcom/O000000o/O000000o/O00000o/O000000o;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

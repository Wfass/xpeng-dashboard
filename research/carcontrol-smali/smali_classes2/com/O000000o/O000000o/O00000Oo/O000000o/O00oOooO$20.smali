.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$20;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/O000000o/O000000o/O000o00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

.field final synthetic O00000Oo:Lcom/O000000o/O000000o/O000o000;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O00000o0/O000000o;Lcom/O000000o/O000000o/O000o000;)V
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$20;->O000000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$20;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$20;->O000000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {p2, p1}, Lcom/O000000o/O000000o/O00000o0/O000000o;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO$20;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

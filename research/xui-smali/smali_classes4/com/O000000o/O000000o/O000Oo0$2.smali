.class final enum Lcom/O000000o/O000000o/O000Oo0$2;
.super Lcom/O000000o/O000000o/O000Oo0;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O000Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/O000000o/O000000o/O000Oo0;-><init>(Ljava/lang/String;ILcom/O000000o/O000000o/O000Oo0$1;)V

    return-void
.end method


# virtual methods
.method public O000000o(Ljava/lang/Long;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

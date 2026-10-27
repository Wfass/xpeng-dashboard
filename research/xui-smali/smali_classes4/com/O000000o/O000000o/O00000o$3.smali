.class final enum Lcom/O000000o/O000000o/O00000o$3;
.super Lcom/O000000o/O000000o/O00000o;
.source "FieldNamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/O000000o/O000000o/O00000o;-><init>(Ljava/lang/String;ILcom/O000000o/O000000o/O00000o$1;)V

    return-void
.end method


# virtual methods
.method public O000000o(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-static {p1, v0}, Lcom/O000000o/O000000o/O00000o;->O000000o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/O000000o/O000000o/O00000o;->O000000o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.class final Lcdj$1;
.super Ljava/util/HashMap;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcdp;",
        "Lcdi;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x171aa946550cb623L


# direct methods
.method constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 51
    sget-object v0, Lcdp;->COPY:Lcdp;

    new-instance v1, Lcdj$c;

    invoke-direct {v1}, Lcdj$c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcdp;->LZMA:Lcdp;

    new-instance v1, Lcdj$e;

    invoke-direct {v1}, Lcdj$e;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcdp;->LZMA2:Lcdp;

    new-instance v1, Lcdm;

    invoke-direct {v1}, Lcdm;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcdp;->DEFLATE:Lcdp;

    new-instance v1, Lcdj$d;

    invoke-direct {v1}, Lcdj$d;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcdp;->BZIP2:Lcdp;

    new-instance v1, Lcdj$b;

    invoke-direct {v1}, Lcdj$b;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcdp;->AES256SHA256:Lcdp;

    new-instance v1, Lcde;

    invoke-direct {v1}, Lcde;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcdp;->BCJ_X86_FILTER:Lcdp;

    new-instance v1, Lcdj$a;

    new-instance v2, Lcib;

    invoke-direct {v2}, Lcib;-><init>()V

    invoke-direct {v1, v2}, Lcdj$a;-><init>(Lchq;)V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcdp;->BCJ_PPC_FILTER:Lcdp;

    new-instance v1, Lcdj$a;

    new-instance v2, Lchw;

    invoke-direct {v2}, Lchw;-><init>()V

    invoke-direct {v1, v2}, Lcdj$a;-><init>(Lchq;)V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcdp;->BCJ_IA64_FILTER:Lcdp;

    new-instance v1, Lcdj$a;

    new-instance v2, Lcht;

    invoke-direct {v2}, Lcht;-><init>()V

    invoke-direct {v1, v2}, Lcdj$a;-><init>(Lchq;)V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcdp;->BCJ_ARM_FILTER:Lcdp;

    new-instance v1, Lcdj$a;

    new-instance v2, Lchl;

    invoke-direct {v2}, Lchl;-><init>()V

    invoke-direct {v1, v2}, Lcdj$a;-><init>(Lchq;)V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcdp;->BCJ_ARM_THUMB_FILTER:Lcdp;

    new-instance v1, Lcdj$a;

    new-instance v2, Lchm;

    invoke-direct {v2}, Lchm;-><init>()V

    invoke-direct {v1, v2}, Lcdj$a;-><init>(Lchq;)V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcdp;->BCJ_SPARC_FILTER:Lcdp;

    new-instance v1, Lcdj$a;

    new-instance v2, Lchx;

    invoke-direct {v2}, Lchx;-><init>()V

    invoke-direct {v1, v2}, Lcdj$a;-><init>(Lchq;)V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcdp;->DELTA_FILTER:Lcdp;

    new-instance v1, Lcdk;

    invoke-direct {v1}, Lcdk;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcdj$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

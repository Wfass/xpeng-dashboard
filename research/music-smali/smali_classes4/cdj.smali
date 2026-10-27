.class Lcdj;
.super Ljava/lang/Object;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcdj$b;,
        Lcdj$d;,
        Lcdj$a;,
        Lcdj$e;,
        Lcdj$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcdp;",
            "Lcdi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcdj$1;

    invoke-direct {v0}, Lcdj$1;-><init>()V

    sput-object v0, Lcdj;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Lcdp;)Lcdi;
    .locals 1

    .line 67
    sget-object v0, Lcdj;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcdi;

    return-object p0
.end method

.method static a(Ljava/io/OutputStream;Lcdp;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 1

    .line 83
    invoke-static {p1}, Lcdj;->a(Lcdp;)Lcdi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p0, p2}, Lcdi;->a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported compression method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class Lcdj$a;
.super Lcdi;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lchq;


# direct methods
.method constructor <init>(Lchq;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcdi;-><init>([Ljava/lang/Class;)V

    .line 121
    iput-object p1, p0, Lcdj$a;->a:Lchq;

    return-void
.end method


# virtual methods
.method a(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 1

    .line 138
    iget-object p2, p0, Lcdj$a;->a:Lchq;

    new-instance v0, Lchs;

    invoke-direct {v0, p1}, Lchs;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2, v0}, Lchq;->a(Lchr;)Lchr;

    move-result-object p1

    .line 139
    new-instance p2, Lcdj$a$1;

    invoke-direct {p2, p0, p1}, Lcdj$a$1;-><init>(Lcdj$a;Ljava/io/OutputStream;)V

    return-object p2
.end method

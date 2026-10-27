.class public final Lsa;
.super Ljava/lang/Object;
.source "FieldWriter.java"


# instance fields
.field a:Lsa;

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Lsg;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p2, p0, Lsa;->b:I

    .line 71
    invoke-virtual {p1, p3}, Lsg;->a(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lsa;->c:I

    .line 72
    invoke-virtual {p1, p4}, Lsg;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lsa;->d:I

    return-void
.end method


# virtual methods
.method a(Lrw;)V
    .locals 2

    .line 84
    iget v0, p0, Lsa;->b:I

    and-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lrw;->b(I)Lrw;

    move-result-object v0

    iget v1, p0, Lsa;->c:I

    invoke-virtual {v0, v1}, Lrw;->b(I)Lrw;

    move-result-object v0

    iget v1, p0, Lsa;->d:I

    invoke-virtual {v0, v1}, Lrw;->b(I)Lrw;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Lrw;->b(I)Lrw;

    return-void
.end method

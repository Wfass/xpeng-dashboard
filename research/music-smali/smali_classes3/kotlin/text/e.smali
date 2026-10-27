.class final Lkotlin/text/e;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lkotlin/sequences/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/c<",
        "Lkotlin/ranges/IntRange;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lcbd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcbd<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lkotlin/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILcbd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lcbd<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1172
    iput-object p1, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    .line 1173
    iput p2, p0, Lkotlin/text/e;->b:I

    .line 1174
    iput p3, p0, Lkotlin/text/e;->c:I

    .line 1175
    iput-object p4, p0, Lkotlin/text/e;->d:Lcbd;

    return-void
.end method

.method public static final synthetic a(Lkotlin/text/e;)I
    .locals 0

    .line 1171
    iget p0, p0, Lkotlin/text/e;->b:I

    return p0
.end method

.method public static final synthetic b(Lkotlin/text/e;)Ljava/lang/CharSequence;
    .locals 0

    .line 1171
    iget-object p0, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/text/e;)I
    .locals 0

    .line 1171
    iget p0, p0, Lkotlin/text/e;->c:I

    return p0
.end method

.method public static final synthetic d(Lkotlin/text/e;)Lcbd;
    .locals 0

    .line 1171
    iget-object p0, p0, Lkotlin/text/e;->d:Lcbd;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/ranges/IntRange;",
            ">;"
        }
    .end annotation

    .line 1178
    new-instance v0, Lkotlin/text/e$a;

    invoke-direct {v0, p0}, Lkotlin/text/e$a;-><init>(Lkotlin/text/e;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

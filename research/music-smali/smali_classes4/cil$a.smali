.class abstract Lcil$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field final a:[S

.field final b:[[S

.field final c:[[S

.field final d:[S

.field private final e:Lcil;


# direct methods
.method constructor <init>(Lcil;)V
    .locals 3

    iput-object p1, p0, Lcil$a;->e:Lcil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [S

    iput-object p1, p0, Lcil$a;->a:[S

    const/16 p1, 0x8

    const/16 v0, 0x10

    filled-new-array {v0, p1}, [I

    move-result-object v1

    const-class v2, S

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lcil$a;->b:[[S

    filled-new-array {v0, p1}, [I

    move-result-object p1

    const-class v0, S

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Lcil$a;->c:[[S

    const/16 p1, 0x100

    new-array p1, p1, [S

    iput-object p1, p0, Lcil$a;->d:[S

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    iget-object v0, p0, Lcil$a;->a:[S

    invoke-static {v0}, Lcir;->a([S)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcil$a;->b:[[S

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2}, Lcir;->a([S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcil$a;->b:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcil$a;->c:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lcir;->a([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcil$a;->d:[S

    invoke-static {v0}, Lcir;->a([S)V

    return-void
.end method

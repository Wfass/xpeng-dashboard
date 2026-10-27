.class Lxb$b;
.super Ljava/lang/Object;
.source "ObjectReaderCreatorASM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Lry;

.field final c:Z

.field final d:Z

.field final e:[Lsu;

.field final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lry;Z[Lsu;)V
    .locals 3

    .line 3839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3840
    iput-object p1, p0, Lxb$b;->a:Ljava/lang/Class;

    .line 3841
    iput-object p2, p0, Lxb$b;->b:Lry;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3842
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lxb$b;->c:Z

    .line 3843
    iput-boolean p3, p0, Lxb$b;->d:Z

    .line 3844
    iput-object p4, p0, Lxb$b;->e:[Lsu;

    .line 3847
    array-length p1, p4

    move p3, p2

    :goto_2
    if-ge p3, p1, :cond_3

    aget-object v1, p4, p3

    .line 3848
    iget-object v1, v1, Lsu;->c:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    move p2, v0

    goto :goto_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 3853
    :cond_3
    :goto_3
    iput-boolean p2, p0, Lxb$b;->f:Z

    return-void
.end method

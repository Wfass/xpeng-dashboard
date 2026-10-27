.class public Lchf;
.super Ljava/lang/Object;
.source "Description.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lchf;

.field private static final METHOD_AND_CLASS_NAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final TEST_MECHANISM:Lchf;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fAnnotations:[Ljava/lang/annotation/Annotation;

.field private final fChildren:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lchf;",
            ">;"
        }
    .end annotation
.end field

.field private final fDisplayName:Ljava/lang/String;

.field private volatile fTestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final fUniqueId:Ljava/io/Serializable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "([\\s\\S]*)\\((.*)\\)"

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lchf;->METHOD_AND_CLASS_NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 130
    new-instance v0, Lchf;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/annotation/Annotation;

    const/4 v3, 0x0

    const-string v4, "No Tests"

    invoke-direct {v0, v3, v4, v2}, Lchf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)V

    sput-object v0, Lchf;->EMPTY:Lchf;

    .line 137
    new-instance v0, Lchf;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "Test mechanism"

    invoke-direct {v0, v3, v2, v1}, Lchf;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)V

    sput-object v0, Lchf;->TEST_MECHANISM:Lchf;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/io/Serializable;[Ljava/lang/annotation/Annotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lchf;->fChildren:Ljava/util/Collection;

    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 163
    iput-object p1, p0, Lchf;->fTestClass:Ljava/lang/Class;

    .line 164
    iput-object p2, p0, Lchf;->fDisplayName:Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lchf;->fUniqueId:Ljava/io/Serializable;

    .line 166
    iput-object p4, p0, Lchf;->fAnnotations:[Ljava/lang/annotation/Annotation;

    return-void

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The unique id must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The display name must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2, p2, p3}, Lchf;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/io/Serializable;[Ljava/lang/annotation/Annotation;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lchf;->fDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 228
    instance-of v0, p1, Lchf;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 231
    :cond_0
    check-cast p1, Lchf;

    .line 232
    iget-object v0, p0, Lchf;->fUniqueId:Ljava/io/Serializable;

    iget-object p1, p1, Lchf;->fUniqueId:Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 223
    iget-object v0, p0, Lchf;->fUniqueId:Ljava/io/Serializable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 237
    invoke-virtual {p0}, Lchf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

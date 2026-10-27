.class public Lme/yokeyword/fragmentation/b$a;
.super Ljava/lang/Object;
.source "Fragmentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/yokeyword/fragmentation/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Lcda;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lme/yokeyword/fragmentation/b$a;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lme/yokeyword/fragmentation/b$a;->a:Z

    return p0
.end method

.method static synthetic b(Lme/yokeyword/fragmentation/b$a;)I
    .locals 0

    .line 87
    iget p0, p0, Lme/yokeyword/fragmentation/b$a;->b:I

    return p0
.end method

.method static synthetic c(Lme/yokeyword/fragmentation/b$a;)Lcda;
    .locals 0

    .line 87
    iget-object p0, p0, Lme/yokeyword/fragmentation/b$a;->c:Lcda;

    return-object p0
.end method


# virtual methods
.method public a(I)Lme/yokeyword/fragmentation/b$a;
    .locals 0

    .line 108
    iput p1, p0, Lme/yokeyword/fragmentation/b$a;->b:I

    return-object p0
.end method

.method public a(Z)Lme/yokeyword/fragmentation/b$a;
    .locals 0

    .line 96
    iput-boolean p1, p0, Lme/yokeyword/fragmentation/b$a;->a:Z

    return-object p0
.end method

.method public a()Lme/yokeyword/fragmentation/b;
    .locals 1

    .line 121
    new-instance v0, Lme/yokeyword/fragmentation/b;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/b;-><init>(Lme/yokeyword/fragmentation/b$a;)V

    sput-object v0, Lme/yokeyword/fragmentation/b;->a:Lme/yokeyword/fragmentation/b;

    .line 122
    sget-object v0, Lme/yokeyword/fragmentation/b;->a:Lme/yokeyword/fragmentation/b;

    return-object v0
.end method

.class public Let$a;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Let$b;


# direct methods
.method public constructor <init>(I[Let$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput p1, p0, Let$a;->a:I

    .line 392
    iput-object p2, p0, Let$a;->b:[Let$b;

    return-void
.end method

.method static a(I[Let$b;)Let$a;
    .locals 1

    .line 407
    new-instance v0, Let$a;

    invoke-direct {v0, p0, p1}, Let$a;-><init>(I[Let$b;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 396
    iget v0, p0, Let$a;->a:I

    return v0
.end method

.method public b()[Let$b;
    .locals 1

    .line 400
    iget-object v0, p0, Let$a;->b:[Let$b;

    return-object v0
.end method

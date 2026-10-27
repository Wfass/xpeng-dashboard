.class public Let$b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {p1}, Lfg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Let$b;->a:Landroid/net/Uri;

    .line 294
    iput p2, p0, Let$b;->b:I

    .line 295
    iput p3, p0, Let$b;->c:I

    .line 296
    iput-boolean p4, p0, Let$b;->d:Z

    .line 297
    iput p5, p0, Let$b;->e:I

    return-void
.end method

.method static a(Landroid/net/Uri;IIZI)Let$b;
    .locals 7

    .line 308
    new-instance v6, Let$b;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Let$b;-><init>(Landroid/net/Uri;IIZI)V

    return-object v6
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 315
    iget-object v0, p0, Let$b;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 322
    iget v0, p0, Let$b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 329
    iget v0, p0, Let$b;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Let$b;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 345
    iget v0, p0, Let$b;->e:I

    return v0
.end method

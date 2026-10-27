.class public final Landroidx/navigation/m$a;
.super Ljava/lang/Object;
.source "NavOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 154
    iput v0, p0, Landroidx/navigation/m$a;->b:I

    .line 157
    iput v0, p0, Landroidx/navigation/m$a;->d:I

    .line 159
    iput v0, p0, Landroidx/navigation/m$a;->e:I

    .line 161
    iput v0, p0, Landroidx/navigation/m$a;->f:I

    .line 163
    iput v0, p0, Landroidx/navigation/m$a;->g:I

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/navigation/m$a;
    .locals 0

    .line 209
    iput p1, p0, Landroidx/navigation/m$a;->d:I

    return-object p0
.end method

.method public a(IZ)Landroidx/navigation/m$a;
    .locals 0

    .line 194
    iput p1, p0, Landroidx/navigation/m$a;->b:I

    .line 195
    iput-boolean p2, p0, Landroidx/navigation/m$a;->c:Z

    return-object p0
.end method

.method public a(Z)Landroidx/navigation/m$a;
    .locals 0

    .line 178
    iput-boolean p1, p0, Landroidx/navigation/m$a;->a:Z

    return-object p0
.end method

.method public a()Landroidx/navigation/m;
    .locals 9

    .line 262
    new-instance v8, Landroidx/navigation/m;

    iget-boolean v1, p0, Landroidx/navigation/m$a;->a:Z

    iget v2, p0, Landroidx/navigation/m$a;->b:I

    iget-boolean v3, p0, Landroidx/navigation/m$a;->c:Z

    iget v4, p0, Landroidx/navigation/m$a;->d:I

    iget v5, p0, Landroidx/navigation/m$a;->e:I

    iget v6, p0, Landroidx/navigation/m$a;->f:I

    iget v7, p0, Landroidx/navigation/m$a;->g:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/navigation/m;-><init>(ZIZIIII)V

    return-object v8
.end method

.method public b(I)Landroidx/navigation/m$a;
    .locals 0

    .line 223
    iput p1, p0, Landroidx/navigation/m$a;->e:I

    return-object p0
.end method

.method public c(I)Landroidx/navigation/m$a;
    .locals 0

    .line 238
    iput p1, p0, Landroidx/navigation/m$a;->f:I

    return-object p0
.end method

.method public d(I)Landroidx/navigation/m$a;
    .locals 0

    .line 253
    iput p1, p0, Landroidx/navigation/m$a;->g:I

    return-object p0
.end method

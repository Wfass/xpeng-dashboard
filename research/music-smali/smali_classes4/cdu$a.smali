.class final Lcdu$a;
.super Ljava/lang/Object;
.source "BZip2CompressorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:[Z

.field final b:[B

.field final c:[I

.field final d:[B

.field final e:[B

.field final f:[B

.field final g:[[B

.field final h:[[I

.field final i:[I

.field final j:[S

.field final k:[[I

.field final l:[B

.field final m:[Z

.field final n:[I

.field final o:[I

.field final p:[I

.field final q:[B

.field final r:[I

.field final s:[C

.field t:I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 1280
    new-array v1, v0, [Z

    iput-object v1, p0, Lcdu$a;->a:[Z

    .line 1281
    new-array v1, v0, [B

    iput-object v1, p0, Lcdu$a;->b:[B

    const/16 v1, 0x102

    .line 1282
    new-array v2, v1, [I

    iput-object v2, p0, Lcdu$a;->c:[I

    const/16 v2, 0x4652

    .line 1283
    new-array v3, v2, [B

    iput-object v3, p0, Lcdu$a;->d:[B

    .line 1284
    new-array v2, v2, [B

    iput-object v2, p0, Lcdu$a;->e:[B

    .line 1286
    new-array v0, v0, [B

    iput-object v0, p0, Lcdu$a;->f:[B

    const/4 v0, 0x6

    .line 1287
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, B

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lcdu$a;->g:[[B

    .line 1289
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcdu$a;->h:[[I

    .line 1291
    new-array v2, v0, [I

    iput-object v2, p0, Lcdu$a;->i:[I

    .line 1292
    new-array v2, v0, [S

    iput-object v2, p0, Lcdu$a;->j:[S

    .line 1293
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcdu$a;->k:[[I

    .line 1295
    new-array v0, v0, [B

    iput-object v0, p0, Lcdu$a;->l:[B

    const/16 v0, 0x10

    .line 1296
    new-array v0, v0, [Z

    iput-object v0, p0, Lcdu$a;->m:[Z

    const/16 v0, 0x104

    .line 1298
    new-array v0, v0, [I

    iput-object v0, p0, Lcdu$a;->n:[I

    const/16 v0, 0x204

    .line 1299
    new-array v1, v0, [I

    iput-object v1, p0, Lcdu$a;->o:[I

    .line 1300
    new-array v0, v0, [I

    iput-object v0, p0, Lcdu$a;->p:[I

    const v0, 0x186a0

    mul-int/2addr p1, v0

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x14

    .line 1327
    new-array v0, v0, [B

    iput-object v0, p0, Lcdu$a;->q:[B

    .line 1328
    new-array v0, p1, [I

    iput-object v0, p0, Lcdu$a;->r:[I

    mul-int/lit8 p1, p1, 0x2

    .line 1329
    new-array p1, p1, [C

    iput-object p1, p0, Lcdu$a;->s:[C

    return-void
.end method

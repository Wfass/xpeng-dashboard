.class public final Lcom/amap/api/services/a/co$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/a/co;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/amap/api/services/a/co;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/amap/api/services/a/co$b;->a:Lcom/amap/api/services/a/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput-object p2, p0, Lcom/amap/api/services/a/co$b;->b:Ljava/lang/String;

    .line 721
    iput-wide p3, p0, Lcom/amap/api/services/a/co$b;->c:J

    .line 722
    iput-object p5, p0, Lcom/amap/api/services/a/co$b;->d:[Ljava/io/InputStream;

    .line 723
    iput-object p6, p0, Lcom/amap/api/services/a/co$b;->e:[J

    .line 724
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/a/co;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/amap/api/services/a/co$1;)V
    .locals 0

    .line 712
    invoke-direct/range {p0 .. p6}, Lcom/amap/api/services/a/co$b;-><init>(Lcom/amap/api/services/a/co;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/amap/api/services/a/co$b;->d:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public close()V
    .locals 4

    .line 751
    iget-object v0, p0, Lcom/amap/api/services/a/co$b;->d:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 752
    invoke-static {v3}, Lcom/amap/api/services/a/cr;->a(Ljava/io/Closeable;)V

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    :cond_0
    return-void
.end method

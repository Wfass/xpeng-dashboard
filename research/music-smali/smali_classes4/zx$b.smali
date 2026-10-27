.class Lzx$b;
.super Ljava/lang/Object;
.source "ObjectReaderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:J

.field final b:Lwk;

.field volatile c:I


# direct methods
.method public constructor <init>(JLwk;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lzx$b;->a:J

    .line 53
    iput-object p3, p0, Lzx$b;->b:Lwk;

    return-void
.end method

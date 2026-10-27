.class abstract Lzw;
.super Ljava/lang/Object;
.source "ObjectReaderPrimitive.java"

# interfaces
.implements Lwk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwk<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final h:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lzw;->h:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 23
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d_()Ljava/lang/Class;
    .locals 1

    .line 18
    iget-object v0, p0, Lzw;->h:Ljava/lang/Class;

    return-object v0
.end method

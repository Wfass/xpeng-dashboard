.class Lbmq$a;
.super Ljava/lang/Object;
.source "ReadingRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lbmq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lbmq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbmq;-><init>(Lbmq$1;)V

    sput-object v0, Lbmq$a;->a:Lbmq;

    return-void
.end method

.method static synthetic a()Lbmq;
    .locals 1

    .line 43
    sget-object v0, Lbmq$a;->a:Lbmq;

    return-object v0
.end method

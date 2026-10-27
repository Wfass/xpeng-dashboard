.class Lcom/lzy/okgo/d/b$a;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzy/okgo/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final lP:Lcom/lzy/okgo/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/lzy/okgo/d/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lzy/okgo/d/b;-><init>(Lcom/lzy/okgo/d/b$1;)V

    sput-object v0, Lcom/lzy/okgo/d/b$a;->lP:Lcom/lzy/okgo/d/b;

    return-void
.end method

.method static synthetic cW()Lcom/lzy/okgo/d/b;
    .locals 1

    .line 40
    sget-object v0, Lcom/lzy/okgo/d/b$a;->lP:Lcom/lzy/okgo/d/b;

    return-object v0
.end method
